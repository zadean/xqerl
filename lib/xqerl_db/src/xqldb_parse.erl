%% -------------------------------------------------------------------
%%
%% xqerl_db - XML Database for xqerl XQuery processor
%%
%% Copyright (c) 2018 Zachary N. Dean  All Rights Reserved.
%%
%% This file is provided to you under the Apache License,
%% Version 2.0 (the "License"); you may not use this file
%% except in compliance with the License.  You may obtain
%% a copy of the License at
%%
%%   http://www.apache.org/licenses/LICENSE-2.0
%%
%% Unless required by applicable law or agreed to in writing,
%% software distributed under the License is distributed on an
%% "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
%% KIND, either express or implied.  See the License for the
%% specific language governing permissions and limitations
%% under the License.
%%
%% -------------------------------------------------------------------
-module(xqldb_parse).

-include("xqerl_db.hrl").

-export([read_file/1]).
-export([read_list/2]).
-export([read_bin/2]).
-export([read_dir/1]).
-export([load_dir/1]).


-record(node , {tp = -1,      % type 
                dpt = 0,      % depth
                ln = 0, px = 0, ns = 0, % name 
                nxt = -1,     % next sibling
                val = {0,0},  % offset and length (utf8 bytes) of text in binary 
                att = -1,     % first attribute index
                nms = -1      % first namespace index
               }).
-record(attr , {par = 0,     % parent element index 
                ln = 0, px = 0, ns = 0, % name
                typ = string,% value type
                val = ""     % value
               }).
-record(nmsp , {par = 0,     % parent element index 
                ln = 0, ns = 0 % name
               }).

-record(st,{nd_pos = 0,
            at_pos = -1,
            ns_pos = -1,
            depth  = 0,
            names  = #{},
            namesp = #{},
            pc     = #{},
            txtlen = 0,
            comlen = 0,
            datlen = 0,
            text   = <<>>,
            comment= <<>>,
            data   = <<>>,
            nodes  = #{},
            attab  = ets:new(atts, [ordered_set]),
            nss    = array:new(),
            stack  = [],
            temp   = [],
            att_typ= #{},
            source % type of parse
           }).

read_dir(Dir) ->
   {ok,FileList} = rec_list_dir(Dir),
   read_files(FileList).

read_files(FileList) ->
   %pmap8({xqldb_docstore,insert}, [], FileList).
   FList2 = [xqldb_lib:filename_to_uri(F) || F <- FileList],
   xqldb_lib:pforeach(FList2,8,fun xqldb_docstore:insert/1).

load_dir(Dir) ->
   {ok,FileList} = rec_list_dir(Dir),
   load_files(FileList).

load_files(FileList) ->
   pmap32({xqldb_docstore,select}, [], FileList).

read_bin({Cwd,BaseUri},Bin) when is_binary(Bin) ->
   {#st{attab = A2} = State,_} = 
     resolve_qname(#st{},{"http://www.w3.org/XML/1998/namespace","xml",[]}),
   try
      State_0 = event(startFragment, 0, State#st{source = file}),
      State_0a = event({attribute,{"http://www.w3.org/XML/1998/namespace",
                                   "xml",
                                   "base",
                                   BaseUri}},0,State_0),
      State_1 = read_bin(Cwd,Bin,State_0a),
      %State_2 = event(endFragment, 0, State_1),
      #st{names  = Names,
          namesp = Namesp,
          text   = Text,
          comment= Comment,
          data   = Data,
          nodes  = Nodes,
          nss    = Nss,
          attab  = Atts} = State_1,
      A = tab_to_array(Atts),
      {ok,
       {[], %Cwd,
        flip_map(Names),
        flip_map(Namesp),
        Nodes,
        A,
        Nss,
        Text,
        Comment,
        Data,
        #{}
       }}
   catch
      _:_ ->
         ?dbg("Error",erlang:get_stacktrace()),
         ets:delete(A2),
         {error,invalid_xml}
   end.

read_bin(Cwd,Bin,State) when is_binary(Bin) ->
   ?dbg("Bin",Bin),
   CF = case State#st.source of
           rest -> [{continuation_fun,fun(S) -> {<<>>,S} end}];
           _ -> []
        end,
   Opts = [{current_location, Cwd},
           {event_fun, fun event/3},
           {event_state, State}|CF],
   case xmerl_sax_parser:stream(Bin,Opts) of
      {ok, State1, <<>>} ->
         event(endFragment, 0, State1#st{source = ok});
      {ok, State1, R} ->
         case string:take(R,[0,$\r,$\n,$ ,[$\r,$\n]]) of % 0 for utf16 
            {_,<<>>} ->
               %?dbg("State1",State1),
               event(endFragment, 0, State1#st{source = ok});
            {Trim1,Trim2} ->
               ?dbg("Trim2",Trim2),
               case Trim1 of
                  <<>> ->
                     read_bin(Cwd,Trim2, State1#st{source = rest});
                  _ ->
                     State2 = event({characters, Trim1}, 0, State1),
                     read_bin(Cwd,Trim2, State2#st{source = rest})
               end
         end;
      {fatal_error,_Line, "No more bytes", _, #st{source = rest} = State2} ->
         ?dbg("Bin",Bin),
         State2;
      {fatal_error,_Line, "expecting < or whitespace", EndTags, 
       #st{source = Src} = State2} when Src =/= rest ->
         [Txt|Rest] = binary:split(Bin, <<"<">>),
         ?dbg("{Txt,Rest}",{Txt,Rest,EndTags}),
         State3 = event({characters, Txt}, 0, State2),
         case Rest of
            [] ->
               event(endFragment, 0, State3#st{source = ok});
            [R] ->
               read_bin(Cwd, <<"<",R/binary>>, State3#st{source = rest})
         end;
      {fatal_error,_Line, "Continuation function undefined", _, State2} ->
         ?dbg("Bin",Bin),
         case binary:match(Bin, <<"<">>) of
            nomatch ->
               State3 = event({characters, Bin}, 0, State2),
               event(endFragment, 0, State3#st{source = ok});
            _ ->
               throw({error,invalid_xml})
         end;
      {fatal_error,_Line, Reason, _EndTags, State2} -> 
         ?dbg("{error,Name}",{error,Cwd}),
         ?dbg("{error,Reason}",{error,Reason,State2}),
         throw({error,Reason});
      Other ->
         ?dbg("{error,Name}",{error,Cwd}),
         ?dbg("{error,Other}",{error,Other}),
         throw({error,Other})
   end.
   

read_stream(Name, State) when is_list(Name) ->
   {ok,Bin} = file:read_file(Name),
   read_stream({Name,Bin}, State);
read_stream({Name,Bin}, State) when is_binary(Bin) ->
   CF = case State#st.source of
           rest -> [{continuation_fun,fun(S) -> {<<>>,S} end}];
           _ -> []
        end,        
   Opts = [{current_location, Name},
           {event_fun, fun event/3},
           %{event_fun, fun event_dummy/3},
           {event_state, State}|CF],
   case xmerl_sax_parser:stream(Bin,Opts) of
      {ok, State1, <<>>} ->
         %?dbg("State1",State1),
         event(endDocument, 0, State1#st{source = ok});
      {ok, State1, R} ->
         case string:take(R,[0,$\r,$\n,$ ,[$\r,$\n]]) of % 0 for utf16 
            {_,<<>>} ->
               %?dbg("State1",State1),
               event(endDocument, 0, State1#st{source = ok});
            _Trim ->
               %?dbg("Trim",Trim),
               read_stream({Name,R}, State1#st{source = rest})
         end;
      {fatal_error,_Line, "No more bytes", _, #st{source = rest} = State2} -> 
         %?dbg("State2",State2),
         event(endDocument, 0, State2#st{source = ok});
      {fatal_error,_Line, Reason, _EndTags, State2} -> 
         ?dbg("{error,Name}",{error,Name}),
         ?dbg("{error,Reason}",{error,Reason,State2}),
         throw({error,Reason});
      Other ->
         ?dbg("{error,Name}",{error,Name}),
         ?dbg("{error,Other}",{error,Other}),
         throw({error,Other})
   end.

read_file({Uri,"file://"++_ = FileUri}) -> read_file({Uri,xqldb_lib:uri_to_filename(FileUri)});
read_file("file://"++_ = Uri) -> read_file(xqldb_lib:uri_to_filename(Uri));
read_file(Src) ->
   {#st{attab = A2} = Ostate,_} =
       resolve_qname(#st{},{"http://www.w3.org/XML/1998/namespace","xml",[]}),
   try
      {Uri,Filename} = case Src of 
                        {Uri0,Filename0} ->
                           {Uri0,Filename0};
                        Filename0 ->
                           {xqldb_lib:filename_to_uri(Filename0),Filename0}
                       end,
      #st{names  = Names,
          namesp = Namesp,
          text   = Text,
          comment= Comment,
          data   = Data,
          nodes  = Nodes,
          nss    = Nss,
          attab  = Atts} = read_stream(Filename, Ostate#st{source = file}),
      A = tab_to_array(Atts),
      %?dbg("Map",xqldb_idx_struct:parent_children(Nodes)),
      {Uri,
       flip_map(Names),
       flip_map(Namesp),
       Nodes,
       A,
       Nss,
       Text,
       Comment,
       Data,
       #{}
      }
   catch
      _:_ ->
         ?dbg("Error",erlang:get_stacktrace()),
         ets:delete(A2),
         ok
   end.

read_list(BaseUri,List) ->
   {#st{attab = A2} = Ostate,_} =
       resolve_qname(#st{},{"http://www.w3.org/XML/1998/namespace","xml",[]}),
   %?dbg("List",List),
   try
      #st{names  = Names,
          namesp = Namesp,
          text   = Text,
          comment= Comment,
          data   = Data,
          nodes  = Nodes,
          nss    = Nss,
          attab  = Atts} = read_list_1(List, Ostate),
      A = tab_to_array(Atts),
      {BaseUri,
       flip_map(Names),
       flip_map(Namesp),
       Nodes,
       A,
       Nss,
       Text,
       Comment,
       Data,
       #{}
      }
   catch
      _:_ ->
         ?dbg("Error",erlang:get_stacktrace()),
         ets:delete(A2),
         ok
   end.

read_list_1([], State) -> State;
read_list_1([H|T], State) ->
   read_list_1(T,event(H,0,State)).

%% event_dummy(Event, _Ln, State) -> 
%%    ?dbg("Event",Event),
%%    State.

event(startFragment, _Ln, #st{nd_pos = C,
                              pc = ParChld} = State) -> 
   Rec = #node{tp = ?fragment},
   State#st{nd_pos = C, 
            stack = [C],
            pc = maps:put(C, [], ParChld),
            nodes = add_nd(C, Rec, State#st.nodes)};

event(endFragment, _Ln, #st{nodes = Nodes,
                            pc = ParChld,
                            stack = [C]} = State) ->
   Children = maps:get(C, ParChld),
   Nodes0 = update_next_sibling(C,Children,Nodes),
   Nodes1 = offload_nodes(maps:keys(Nodes0) -- [C], Nodes0, C),
   Nodes2 = offload_nodes(0, Nodes1),
   State#st{depth = 0,nodes = Nodes2};

event(endFragment, _Ln, #st{nodes = Nodes,
                            pc = ParChld,
                            stack = [H|S]} = State) ->
   Children = maps:get(H, ParChld),
   Nodes1 = update_next_sibling(H,Children,Nodes),
   Nodes2 = offload_nodes(Children, Nodes1, H),
   State#st{stack = S, 
            pc = maps:remove(H, ParChld), 
            depth = 0, 
            nodes = Nodes2};

event(startDocument, _Ln, #st{source = rest} = State) -> State;
event(startDocument, _Ln, #st{nd_pos = C,
                              stack = [],
                              pc = ParChld} = State) -> 
   Rec = #node{tp = ?document},
   State#st{nd_pos = C, 
            stack = [C],
            pc = maps:put(C, [], ParChld),
            nodes = add_nd(C, Rec, State#st.nodes)};
event(startDocument, _Ln, #st{nd_pos = C,
                              stack = [F],
                              pc = ParChld} = State) -> 
   Rec = #node{tp = ?document},
   State#st{nd_pos = C, 
            stack = if C == F -> [C];
                       true ->
                          [C,F]
                    end,
            pc = if C == F -> maps:put(F, [], ParChld);
                       true ->
                          maps:put(F, [C], ParChld)
                 end,
            nodes = add_nd(C, Rec, State#st.nodes)};

event(endDocument, _Ln, #st{source = file} = State) -> State;
event(endDocument, _Ln, #st{source = rest} = State) -> State;

event(endDocument, _Ln, #st{nodes = Nodes,
                            pc = ParChld,
                            stack = [C]} = State) ->
   Children = maps:get(C, ParChld),
   Nodes0 = update_next_sibling(C,Children,Nodes),
   %?dbg("{C,Children,Nodes0}",{C,Children,Nodes0,State}),
   Nodes1 = offload_nodes(maps:keys(Nodes0) -- [C], Nodes0, C),
   Nodes2 = offload_nodes(0, Nodes1),
   %?dbg("Nodes2",Nodes2),
   State#st{depth = 0,nodes = Nodes2};

event(endDocument, _Ln, #st{nodes = Nodes,
                            pc = ParChld,
                            depth = D,
                            stack = [H|S]} = State) ->
   Children = maps:get(H, ParChld),
   Nodes1 = update_next_sibling(H,Children,Nodes),
   %?dbg("{H,Children,Nodes}",{H,Children,Nodes}),
   Nodes2 = offload_nodes(Children, Nodes1, H),
   %?dbg("Nodes2",Nodes2),
   State#st{stack = S, 
            pc = maps:remove(H, ParChld), 
            depth = D - 1, 
            nodes = Nodes2};

event({startPrefixMapping, Prefix, Uri}, _Ln, #st{temp = Temp} = State) ->
   {State1,{NsId,_,LnId}} = resolve_qname(State, {Uri,[],Prefix}),
   Rec = #nmsp{ln = LnId, ns = NsId},
   State1#st{temp = [Rec|Temp]};
event({endPrefixMapping, _}, _Ln, #st{} = State) -> State;

event({startElement, [], _, {Prefix,_}, _}, _,_) when Prefix =/= [] ->
   {error,no_namespace};
event({startElement, Uri, LocalName, {Prefix,_}, Attributes}, _Ln,
      #st{temp = Temp,
          nd_pos = NodPos,
          nodes = Nodes0,
          depth = Depth,
          pc = ParChld,
          attab = Attab,
          att_typ = AttTypes,
          stack = [Par|_] = S} = State) ->
   NodPos1 = NodPos + 1,
   Depth1 = Depth + 1,
   {ok, Children} = maps:find(Par, ParChld),
   Nodes = update_next_sibling(NodPos1,Children,Nodes0),
   % first any namespaces
   NsFun = fun(#nmsp{} = N, {Last, #st{ns_pos = NsPos,
                                       nss = Nss} = St1}) ->
                 NsPos1 = NsPos + 1,
                 Nss1 = array:set(NsPos1, 
                                  node_to_tuple(N#nmsp{par = NodPos1}), Nss),
                 St2 = St1#st{ns_pos = NsPos1, nss = Nss1},
                 if Last == -1 ->
                       {NsPos1,St2};
                    true ->
                       {Last,St2}
                 end
           end,  
   {NsPoint,State1} = lists:foldl(NsFun, {-1,State}, Temp),
   % next any attributes
   AtFun = fun({Ns,Px,Ln,Val}, {Last,#st{at_pos = AtPos} = St1}) ->
                 AtPos1 = AtPos + 1,
                 {St2,{NsId,PxId,LnId}} = resolve_qname(St1, {Ns,Px,Ln}),
                 {Type,V} = get_attribute_val(Val,{LocalName,Ln}, AttTypes),
                 ARec = #attr{par = NodPos1,
                              ln = LnId, px = PxId, ns = NsId,
                              typ = Type,
                              val = V},
                 add_att(AtPos1, ARec, Attab),
                 %Atts1 = array:set(AtPos1, ARec, Atts),
                 St3 = St2#st{at_pos = AtPos1},
                 if Last == -1 ->
                       {AtPos1,St3};
                    true ->
                       {Last,St3}
                 end
           end,
   {AtPoint,State2} = lists:foldl(AtFun, {-1,State1}, Attributes),
   {State3,{UriId,PxId,LocalNameId}} = resolve_qname(State2,{Uri,Prefix,LocalName}),
   
   Rec = #node{tp = ?element,
               dpt = Depth1,
               ln = LocalNameId, 
               px = PxId, 
               ns = UriId,
               att = AtPoint,
               nms = NsPoint},

   State3#st{temp = [],
             nd_pos = NodPos1,
             nodes = add_nd(NodPos1, Rec, Nodes),
             depth = Depth1,
             pc = maps:put(NodPos1, [], 
                     maps:put(Par, [NodPos1|Children], ParChld)),
             stack = [NodPos1|S]};

event({endElement, _Uri, _LocalName, _QualifiedName}, _Ln, 
             #st{stack = [H|S],
                 nodes = Nodes,
                 pc = ParChld,
                 depth = D} = State) -> 
   Children = maps:get(H, ParChld),
   Nodes1 = update_next_sibling(H,Children,Nodes),
   Nodes2 = offload_nodes(Children, Nodes1, H),
   State#st{stack = S, 
            pc = maps:remove(H, ParChld), 
            depth = D - 1, 
            nodes = Nodes2};

event({characters, String}, _Ln, 
             #st{nd_pos = NodPos,
                 nodes = Nodes0,
                 depth = Depth,
                 pc = ParChld,
                 stack = [Par|_],
                 text = Text,
                 txtlen = TxtLen} = State) ->
   NodPos1 = NodPos + 1,
   
%%    catch merge_index:index(merge_index, 
%%                            [{texts, 
%%                              value, 
%%                              {list_to_binary(String), 123}, 
%%                              NodPos, 
%%                              [{depth,Depth}], 
%%                              125}]),
   
   {ok, Children} = maps:find(Par, ParChld),
   Nodes = update_next_sibling(NodPos1,Children,Nodes0),
   Bin = unicode:characters_to_binary(String),
   Len = byte_size(Bin),
   TxtLen1 = TxtLen + Len,

   Rec = #node{tp = ?text,
               dpt = Depth + 1,
               val = {TxtLen,Len}
               },
   State#st{nd_pos = NodPos1,
            nodes =  add_nd(NodPos1, Rec, Nodes),
            pc = maps:put(Par, [NodPos1|Children], ParChld),
            depth = Depth,
            text = <<Text/binary,Bin/binary>>,
            txtlen = TxtLen1};

event({ignorableWhitespace, String}, _Ln, State) ->
   event({characters, String}, _Ln, State);

% ignore the xml PI if any
event({processingInstruction, "xml", _Data}, _Ln, State) -> State;
event({processingInstruction, Target, Data}, _Ln, 
             #st{nd_pos = NodPos,
                 nodes = Nodes0,
                 depth = Depth,
                 pc = ParChld,
                 stack = [Par|_],
                 data = DataBin,
                 datlen = DatLen} = State) ->
   {State1,{NsId,PxId,LnId}} = resolve_qname(State, {[],[],Target}),
   NodPos1 = NodPos + 1,
   {ok, Children} = maps:find(Par, ParChld),
   Nodes = update_next_sibling(NodPos1,Children,Nodes0),
   Bin = unicode:characters_to_binary(Data),
   Len = byte_size(Bin),
   DatLen1 = DatLen + Len,

   Rec = #node{tp = ?proc_inst,
               ln = LnId,
               px = PxId,
               ns = NsId,
               dpt = Depth + 1,
               val = {DatLen,Len}
               },
   State1#st{nd_pos = NodPos1,
             nodes =  add_nd(NodPos1, Rec, Nodes),
             depth = Depth,
             pc = maps:put(Par, [NodPos1|Children], ParChld),
             data = <<DataBin/binary,Bin/binary>>,
             datlen = DatLen1};

event({comment, String}, _Ln, 
             #st{nd_pos = NodPos,
                 nodes = Nodes0,
                 depth = Depth,
                 pc = ParChld,
                 stack = [Par|_],
                 comment = Comment,
                 comlen = ComLen} = State) ->
   NodPos1 = NodPos + 1,
   {ok, Children} = maps:find(Par, ParChld),
   Nodes = update_next_sibling(NodPos1,Children,Nodes0),
   Bin = unicode:characters_to_binary(String),
   Len = byte_size(Bin),
   ComLen1 = ComLen + Len,

   Rec = #node{tp = ?comment,
               dpt = Depth + 1,
               val = {ComLen,Len}
               },
   State#st{nd_pos = NodPos1,
            nodes =  add_nd(NodPos1, Rec, Nodes),
            pc = maps:put(Par, [NodPos1|Children], ParChld),
            depth = Depth,
            comment = <<Comment/binary,Bin/binary>>,
            comlen = ComLen1};

% stand-alone attribute
event({attribute,{Ns,Px,Ln,Val}},_Ln,#st{at_pos = AtPos,
                                         att_typ = AttTypes,
                                         attab = Attab} = State) ->
  AtPos1 = AtPos + 1,
  {St2,{NsId,PxId,LnId}} = resolve_qname(State, {Ns,Px,Ln}),
  {Type,V} = get_attribute_val(Val,{[],Ln}, AttTypes),
  ARec = #attr{par = 0,
               ln = LnId, px = PxId, ns = NsId,
               typ = Type,
               val = V},
  add_att(AtPos1, ARec, Attab),
  %Atts1 = array:set(AtPos1, ARec, Atts),
  St2#st{at_pos = AtPos1};

% stand-alone namespace
event({namespace,Prefix,Uri},_Ln,#st{ns_pos = NsPos,
                                     nss = Nss} = State) ->
   {State1,{NsId,_,LnId}} = resolve_qname(State, {Uri,[],Prefix}),
   Rec = #nmsp{ln = LnId, ns = NsId},
   NsPos1 = NsPos + 1,
   Nss1 = array:set(NsPos1, node_to_tuple(Rec#nmsp{par = 0}), Nss),
   State1#st{ns_pos = NsPos1, nss = Nss1};

event({attributeDecl, ElementName, AttributeName, Type, _Mode, _Value}, 
             _Ln, #st{att_typ = AttTypeMap} = State) -> 
   % expecting only local names for attribute types (namespaces in DTDs ?)
   AttTypeMap1 = maps:put({ElementName, AttributeName}, 
                          list_to_atom(Type), AttTypeMap),
   State#st{att_typ = AttTypeMap1};

event(startCDATA, _Ln, State) -> State;
event(endCDATA, _Ln, State) -> State;
event({startDTD, _Name, _PublicId, _SystemId}, _Ln, State) -> State;
event(endDTD, _Ln, State) -> State;

%% event({startEntity, _SysId}, _Ln, State) -> State;
%% event({endEntity, _SysId}, _Ln, State) -> State;
%% event({elementDecl, _Name, _Model}, _Ln, State) -> State;
%% event({internalEntityDecl, _Name, _Value}, _Ln, State) -> State;
%% event({externalEntityDecl, _Name, _PublicId, _SystemId}, _Ln, State) -> State;
%% event({unparsedEntityDecl, _Name, _PublicId, _SystemId, _Ndata}, _Ln, State) -> State;
%% event({notationDecl, _Name, _PublicId, _SystemId}, _Ln, State) -> State;

event(Event, _Ln, State) -> 
   ?dbg("Unknown event",Event),
   %?dbg("State?",State),
   State.

get_attribute_val(V,{El,At}, AttTypes) ->
   {Ty,Val} = get_attribute_val(V),
   case maps:find({El,At}, AttTypes) of
      {ok,T} -> {T,Val};
      _ -> {Ty,Val}
   end.

get_attribute_val([D|_] = V) when D >= $0, D =< $9 ->
   case catch list_to_integer(V) of
      {'EXIT',_} ->
         case catch list_to_float(V) of
            {'EXIT',_} ->
               {string,V};
            F ->
               {double,{F,V}}
         end;
      I ->
         {integer,{I,V}}
   end;
get_attribute_val(V) ->
   {string,V}.

resolve_qname(#st{namesp = Namsp,
                  names = Names} = State, {Ns, Px, Local}) ->
   {Namsp1,NsId} = case maps:find(Ns, Namsp) of
             error ->
                NsId1 = xqldb_namespace_server:get(Ns),
                %?dbg("NsId1",NsId1),
                {maps:put(Ns, NsId1, Namsp),NsId1};
             {ok,N} ->
                %?dbg("N",N),
                {Namsp,N}
          end,
   %?dbg("{Ns, Px, Local}",{Ns, Px, Local}),
   %?dbg("{Namsp1,NsId}",{Namsp1,NsId}),
   {Names1,PxId} = case maps:find(Px, Names) of
             error ->
                PxId1 = xqldb_name_server:get(Px),
                {maps:put(Px, PxId1, Names),PxId1};
             {ok,P} ->
                {Names,P}
          end,
   case maps:find(Local, Names1) of
      error ->
         LId = xqldb_name_server:get(Local),
         Names2 = maps:put(Local, LId, Names1),
         
         {State#st{namesp = Namsp1,
                   names = Names2},{NsId,PxId,LId}};
      {ok,Id} ->
         {State#st{namesp = Namsp1,
                   names = Names1},{NsId,PxId,Id}}
   end.

update_next_sibling(_,[],Nodes) -> Nodes;
update_next_sibling(Next,[P|_],Nodes) ->
   case get_nd(P, Nodes) of
      [N,Bin] ->
         upd_nd(P, [N#node{nxt = Next},Bin], Nodes);
      N ->
         upd_nd(P, N#node{nxt = Next}, Nodes)
   end.

get_nd(P, Nodes) ->
   maps:get(P, Nodes).

add_nd(NodPos1, Rec, Nodes) ->
   Nodes#{NodPos1 => Rec}.

upd_nd(NodPos1, Rec, Nodes) when is_binary(Rec) ->
   #{NodPos1 := Old} = Nodes, 
   Nodes#{NodPos1 := [Old,Rec]};
upd_nd(NodPos1, Rec, Nodes) ->
   Nodes#{NodPos1 := Rec}.

offload_nodes(Self,Nodes) ->
   %?dbg("Nodes",{Self,Nodes}),
   case maps:get(Self,Nodes) of
      [V1,B] when is_binary(B) ->
         <<(node_to_tuple(V1))/binary,B/binary>>;
      V2 ->
         <<(node_to_tuple(V2))/binary>>
   end.
   
offload_nodes(Children,Nodes,Parent) ->
   %?dbg("Nodes",{Children,Nodes,Parent}),
   Fun = fun(Id,{Bin0,Map}) ->
               {V,Map1} = maps:take(Id, Map),
               case V of
                  [V1,B] when is_binary(B) ->
                     {<<Bin0/binary,(node_to_tuple(V1))/binary,B/binary>>,Map1};
                  V2 ->
                     {<<Bin0/binary,(node_to_tuple(V2))/binary>>,Map1}
               end
         end,
   {Bin,Nodes2} = lists:foldl(Fun, {<<>>,Nodes}, lists:sort(Children)),
   %?dbg("{Bin,Nodes2}",{Bin,Nodes2}),
   Ret = upd_nd(Parent, Bin, Nodes2),
   %?dbg("Ret",Ret),
   Ret.

add_att(NodPos, Att, Tab) ->
   ets:insert(Tab, {NodPos, node_to_tuple(Att)}).

tab_to_array(Tab) ->
   try
      List = ets:tab2list(Tab),
      ets:delete(Tab),
      array:from_orddict(List)
   catch
      _:_ ->
         ets:delete(Tab)
   end.

node_to_tuple(#node{tp = ?element, dpt = B, 
                    ln = C, px = D, ns = E, 
                    nxt = F, att = G, nms = H}) ->
   xqldb_xdm:element(B, F, C, D, E, G, H);
node_to_tuple(#node{tp = ?document, dpt = B, nxt = F}) ->
   xqldb_xdm:document(B, F);
node_to_tuple(#node{tp = ?fragment, dpt = B, nxt = F, att = G, nms = H}) ->
   xqldb_xdm:fragment(B, F, G, H);
node_to_tuple(#node{tp = ?text, dpt = B, 
                    nxt = F, val = {G,H}}) ->
   xqldb_xdm:text(B, F, G, H);
node_to_tuple(#node{tp = ?comment, dpt = B, 
                    nxt = F, val = {G,H}}) ->
   xqldb_xdm:comment(B, F, G, H);
node_to_tuple(#node{tp = ?proc_inst, dpt = B, 
                    ln = C,
                    nxt = F, val = {G,H}}) ->
   xqldb_xdm:pi(B, F, C, G, H);

node_to_tuple(#attr{par = A,ln = B, px = C, ns = D, typ = E, val = F}) ->
  {A,B,C,D,E,F};
node_to_tuple(#nmsp{par = A,ln = B, ns = C}) ->
  {A,B,C}.



%% {ok, [List]}
rec_list_dir(Dir) ->
   All = filelib:wildcard("**", Dir),
   Fun = fun(N) ->
               Abs = filename:join(Dir,N),
               case is_xml(Abs) of
                  true ->
                     {true,Abs};
                  _ ->
                     false
               end
         end,
   L = lists:filtermap(Fun, All),
   {ok,L}.

%is_xml(_Filename) -> true;
is_xml(Filename) ->
   E = filename:extension(Filename),
   string:lowercase(E) == ".xml" orelse 
     string:lowercase(E) == ".xsd".


pmap32(MF,Ex,[Hd1,Hd2,Hd3,Hd4,Hd5,Hd6,Hd7,Hd8,
              Hd9,H10,H11,H12,H13,H14,H15,H16,
              Hd17,Hd18,Hd19,Hd20,Hd21,Hd22,Hd23,Hd24,
              Hd25,H26,H27,H28,H29,H30,H31,H32|T]) ->
  rpc:pmap(MF, Ex, [Hd1,Hd2,Hd3,Hd4,Hd5,Hd6,Hd7,Hd8,
              Hd9,H10,H11,H12,H13,H14,H15,H16,
              Hd17,Hd18,Hd19,Hd20,Hd21,Hd22,Hd23,Hd24,
              Hd25,H26,H27,H28,H29,H30,H31,H32]) ++ pmap32(MF,Ex,T);
pmap32(_,_,[]) -> [];
pmap32(MF,Ex,T) ->
   rpc:pmap(MF, Ex, T).

%% pmap16(MF,Ex,[Hd1,Hd2,Hd3,Hd4,Hd5,Hd6,Hd7,Hd8,
%%               Hd9,H10,H11,H12,H13,H14,H15,H16|T]) ->
%%   rpc:pmap(MF, Ex, [Hd1,Hd2,Hd3,Hd4,Hd5,Hd6,Hd7,Hd8,
%%                     Hd9,H10,H11,H12,H13,H14,H15,H16]) ++ pmap16(MF,Ex,T);
%% pmap16(_,_,[]) -> [];
%% pmap16(MF,Ex,T) ->
%%    rpc:pmap(MF, Ex, T).
%% 
%% pmap8(MF,Ex,[Hd1,Hd2,Hd3,Hd4,Hd5,Hd6,Hd7,Hd8|T]) ->
%%    rpc:pmap(MF, Ex, [Hd1,Hd2,Hd3,Hd4,Hd5,Hd6,Hd7,Hd8]) ++ pmap8(MF,Ex,T);
%% pmap8(_,_,[]) -> [];
%% pmap8(MF,Ex,T) ->
%%    rpc:pmap(MF, Ex, T).

flip_map(Map) ->
   F = fun(K,V,M) ->
             M#{V => K}
       end,            
   maps:fold(F, Map, Map).

