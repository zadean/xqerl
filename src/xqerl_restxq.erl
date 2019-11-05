%% -------------------------------------------------------------------
%%
%% xqerl - XQuery processor
%%
%% Copyright (c) 2018-2019 Zachary N. Dean  All Rights Reserved.
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

%% @doc Transforms RESTXQ annotations to cowboy REST endpoints.


-module(xqerl_restxq).

-include("xqerl.hrl").

%% ====================================================================
%% API functions
%% ====================================================================
-export([parse_template_fields/1,
         build_endpoints/2,
         endpoint_sort/1,
         parse_annos/1]).

-export([send_reply/3,
         return_value/3,
         read_multipart_form_data/1]).

%% TODO: add the standard functions for this namespace

%% ====================================================================
%% Internal functions
%% ====================================================================

-define(NS, <<"http://exquery.org/ns/restxq">>).
-define(PX, <<"rest">>).
-define(ONS, <<"http://www.w3.org/2010/xslt-xquery-serialization">>).
-define(OPX, <<"output">>).
-define(HNS, <<"http://expath.org/ns/http-client">>).
-define(HPX, <<"http">>).
-define(ENS, <<"http://exquery.org/ns/restxq/error">>).
-define(EPX, <<"rerr">>).

-define(QN(Nm),#qname{namespace = ?NS, local_name = Nm}).
-define(SV(V), V).
-define(anno(N,V),#annotation{name = N, values = V}).

return_value(Seq, Ctx, Req) ->
    return_value(Seq, Ctx, Req, 200).

return_value(Seq, #{pul := Pul} = Ctx, Req, Code) ->
    ok = xqerl_update:apply_updates(Ctx, Pul),
    return_value(Seq, maps:remove(pul, Ctx), Req, Code);
return_value([#{nk := element,
                nn := {?NS, _, <<"response">>},
                ch := Ch}|T], Ctx, Req, Code) ->
    {Code1, Ctx1, Req1} = headers_and_options(Ch, Ctx, Req, Code),
    return_value(T, Ctx1, Req1, Code1);
return_value([Seq], Ctx, Req, Code) ->
    return_value(Seq, Ctx, Req, Code);
return_value([], _, Req, Code) ->
    {Code, <<>>, Req};
return_value(Seq, #{options := Opts}, Req, Code) ->
    case Req of % leave raw binary alone
        #{media_type := {<<"application">>,<<"octet-stream">>,_}} ->
            {Code, xqerl_types:value(Seq), Req};
        _ ->
            {Code, xqerl_serialize:serialize(Seq, Opts), Req}
    end.

headers_and_options([#{nk := element,
                       nn := {?HNS, _, <<"response">>}} = H|T], 
                    Ctx, Req, _Code) ->
    {Status, Headers} = xqerl_mod_http_client:parse_custom_response(H),
    Add = fun(K, V, R) ->
                 cowboy_req:set_resp_header(K, V, R)
          end,
    Req1 = maps:fold(Add, Req, Headers), % new take precedence
    headers_and_options(T, Ctx, Req1, Status);
headers_and_options([#{nk := element,
                       nn := {?ONS, _, <<"serialization-parameters">>}} = H|T], 
                    #{namespaces := Nss,
                      options := Opts} = Ctx, Req, Code) ->
    Opts1 = xqerl_options:serialization_option_map(H, Nss),
    Opts2 = maps:merge(Opts1, Opts),
    headers_and_options(T, Ctx#{options := Opts2}, Req, Code);
headers_and_options([_|T], Ctx, Req, Code) ->
    headers_and_options(T, Ctx, Req, Code);
headers_and_options([], Ctx, Req, Code) ->
    {Code, Ctx, Req}.

send_reply(StatusCode, [], Req) ->
    cowboy_req:reply(StatusCode, Req);
send_reply(StatusCode, <<>>, Req) ->
    cowboy_req:reply(StatusCode, Req);
send_reply(StatusCode, ReturnVal, Req) when byte_size(ReturnVal) < 4097 ->
    Req1 = cowboy_req:set_resp_body(ReturnVal, Req),
    cowboy_req:reply(StatusCode, Req1);
send_reply(StatusCode, ReturnVal, Req) ->
    stream_body(StatusCode, ReturnVal, Req),
    Req.

stream_body(StatusCode, ReturnVal, Req0) ->
   Req = cowboy_req:stream_reply(StatusCode, Req0),
   stream_body_(ReturnVal, Req).

stream_body_(<<S:4096/binary, Rest/binary>>, Req) ->
   cowboy_req:stream_body(S, nofin, Req),
   stream_body_(Rest, Req);
stream_body_(Bin, Req) ->
   cowboy_req:stream_body(Bin, fin, Req).

read_multipart_form_data(#{headers := #{<<"content-type">> := <<"application/x-www-form-urlencoded">>}} = Req) ->
    {ok, FormKeyVals, _} = cowboy_req:read_urlencoded_body(Req),
    FormKeyVals;
read_multipart_form_data(#{headers := #{<<"content-type">> := <<"multipart/form-data", _/binary>>}} = Req) ->
    collect_multipart_form_data(Req, #{}).

collect_multipart_form_data(Req0, Acc) ->
    case cowboy_req:read_part(Req0) of
        {ok, #{<<"content-disposition">> := Disp}, Req1} ->
            {ok, Body, Req} = stream_form_data_body(Req1, <<>>),
            Acc1 = add_multipart(Disp, Body, Acc),
            collect_multipart_form_data(Req, Acc1);
        {done, _Req} ->
            maps:to_list(Acc)
    end.

add_multipart(Disp, Body, Acc) ->
    case cow_multipart:parse_content_disposition(Disp) of
        {<<"form-data">>, Vals} ->
            Name = proplists:get_value(<<"name">>, Vals),
            Filename = proplists:get_value(<<"filename">>, Vals),
            add_multipart(Name, Filename, Body, Acc);
        _ ->
            Acc
    end.

add_multipart(Name, Filename, Body, Acc) ->
    Val = #xqAtomicValue{type = 'xs:base64Binary', value = Body},
    case Acc of
        #{Name := Files} ->
            Acc#{Name := Files#{Filename => {Filename, Val}}};
        _ ->
            Acc#{Name => #{Filename => {Filename, Val}}}
    end.


stream_form_data_body(Req0, Acc) ->
    case cowboy_req:read_part_body(Req0) of
        {more, Data, Req} ->
            stream_form_data_body(Req, << Acc/binary, Data/binary >>);
        {ok, Data, Req} ->
            {ok, << Acc/binary, Data/binary >>, Req}
    end.

default_rest_annos() ->
   #{method         => [options], % expanded to all later if not set
     output         => [], % list of serialization parameters
     types_accepted => [<<"*/*">>],
     types_provided => [<<"*/*">>],
     % below trigger run-time parsing of the request in the function
     param_query    => [],
     param_form     => [],
     param_header   => [],
     param_cookie   => []     
    }.

%[{FunName, FRestMap}]
build_endpoints(Module, RestWrappers) ->
   F = fun({Function, #{path := Path,
                        method := Methods,
                        fields := Fields,
                        types_accepted := MediaTypes,
                        types_provided := OutputTypes}}) ->
             endpoint_rec(Path,Methods,MediaTypes,OutputTypes,
                          Fields,Module,Function)
       end,
   [F(RW) || RW <- RestWrappers].


parse_annos(Annos) ->
   parse_annos(Annos, default_rest_annos()).

%% The REST and OUTPUT options can all be set in annotations here 
parse_annos([?anno(?QN(<<"path">>), [?SV(V)])|T], Acc) ->
   Fields0 = maps:get(fields, Acc, []),
   {Fields, Path} = parse_path(V),
   parse_annos(T, Acc#{fields => Fields ++ Fields0, path => Path});
parse_annos([?anno(?QN(<<"OPTIONS">>), [])|T], #{method := Methods} = Acc) ->
   parse_annos(T, Acc#{method := [options|Methods]});
parse_annos([?anno(?QN(<<"GET">>), [])|T], #{method := Methods} = Acc) ->
   parse_annos(T, Acc#{method := [head,get|Methods]}); % adds head too
parse_annos([?anno(?QN(<<"HEAD">>), [])|T], #{method := Methods} = Acc) ->
   parse_annos(T, Acc#{method := [head|Methods]});
parse_annos([?anno(?QN(<<"DELETE">>), [])|T], #{method := Methods} = Acc) ->
   parse_annos(T, Acc#{method := [delete|Methods]});
parse_annos([?anno(?QN(<<"POST">>), [])|T], #{method := Methods} = Acc) ->
   parse_annos(T, Acc#{method := [post|Methods]});
parse_annos([?anno(?QN(<<"POST">>), [?SV(V)])|T], #{method := Methods} = Acc) ->
   Fields0 = maps:get(fields, Acc, []),
   {[{_,Varname}],_} = parse_template_fields(V),
   Fields = [{body,Varname}|Fields0],
   parse_annos(T, Acc#{method := [post|Methods], fields => Fields});
parse_annos([?anno(?QN(<<"PUT">>), [])|T], #{method := Methods} = Acc) ->
   parse_annos(T, Acc#{method := [put|Methods]});
parse_annos([?anno(?QN(<<"PUT">>), [?SV(V)])|T], #{method := Methods} = Acc) ->
   Fields0 = maps:get(fields, Acc, []),
   {[{_,Varname}],_} = parse_template_fields(V),
   Fields = [{body,Varname}|Fields0],
   parse_annos(T, Acc#{method := [put|Methods], fields => Fields});
parse_annos([?anno(?QN(<<"consumes">>), Vals)|T], Acc) ->
   Ss = [V || ?SV(V) <- Vals],
   parse_annos(T, Acc#{types_accepted => Ss});
parse_annos([?anno(?QN(<<"produces">>), Vals)|T], Acc) ->
   Ss = [V || ?SV(V) <- Vals],
   parse_annos(T, Acc#{types_provided => Ss});
parse_annos([?anno(?QN(<<"query-param">>), Vals)|T], 
            #{param_query := Params} = Acc) ->
   {Name, RawVar, Default} = 
     case Vals of
        [?SV(V1),?SV(V2),?SV(V3)] -> {V1,V2,V3};
        [?SV(V1),?SV(V2)] -> {V1,V2,[]};
        _ -> {error, badarity}
     end,
   {[{_,Varname}],_} = parse_template_fields(RawVar),
   Params1 = [{Name, Varname, Default}|Params],
   parse_annos(T, Acc#{param_query := Params1});
parse_annos([?anno(?QN(<<"form-param">>), Vals)|T], 
            #{param_form := Params} = Acc) ->
   {Name, RawVar, Default} = 
     case Vals of
        [?SV(V1),?SV(V2),?SV(V3)] -> {V1,V2,V3};
        [?SV(V1),?SV(V2)] -> {V1,V2,[]};
        _ -> {error, badarity}
     end,
   {[{_,Varname}],_} = parse_template_fields(RawVar),
   Params1 = [{Name, Varname, Default}|Params],
   parse_annos(T, Acc#{param_form := Params1,
                       % forcing type to form
                       types_accepted => [<<"application/x-www-form-urlencoded">>, <<"multipart/form-data">>]});
parse_annos([?anno(?QN(<<"header-param">>), Vals)|T], 
            #{param_header := Params} = Acc) ->
   {Name, RawVar, Default} = 
     case Vals of
        [?SV(V1),?SV(V2),?SV(V3)] -> {V1,V2,V3};
        [?SV(V1),?SV(V2)] -> {V1,V2,[]};
        _ -> {error, badarity}
     end,
   {[{_,Varname}],_} = parse_template_fields(RawVar),
   Params1 = [{string:lowercase(Name), Varname, Default}|Params],
   parse_annos(T, Acc#{param_header := Params1});
parse_annos([?anno(?QN(<<"cookie-param">>), Vals)|T], 
            #{param_cookie := Params} = Acc) ->
   {Name, RawVar, Default} = 
     case Vals of
        [?SV(V1),?SV(V2),?SV(V3)] -> {V1,V2,V3};
        [?SV(V1),?SV(V2)] -> {V1,V2,[]};
        _ -> {error, badarity}
     end,
   {[{_,Varname}],_} = parse_template_fields(RawVar),
   Params1 = [{Name, Varname, Default}|Params],
   parse_annos(T, Acc#{param_cookie := Params1});
% serialization parameters
parse_annos([?anno(#qname{namespace = ?ONS} = Q,[?SV(V)])|T], #{output := O} = Acc) ->
   parse_annos(T,Acc#{output := [{Q,V}|O]});
parse_annos([?anno(?QN(_),_) = H|_], _) ->
    ?dbg("unknown_parameter", H),
   {error, unknown_parameter};
% unknown namespaces 
parse_annos([?anno(_Q,_)|T], Acc) ->
   %?dbg("Skipping",Q),
   parse_annos(T,Acc);
parse_annos([], Acc) ->
   validate_annos(Acc).

%% TODO: get list of parameter names and check each in annos
%% Check return type of function against content-type
%% Check for duplicate variable names   
validate_annos(#{method := M,
                 output := O} = Map) ->
   if is_map_key(path, Map) ->
         Map1 = if M == [options] ->
               Map#{method := [get,head,post,put,delete,options]};
            true ->
               Map
         end,
         Serial = xqerl_options:static_serialization_option_map(O, <<>>),
         Map1#{output := Serial};
      true ->
         {error, missing_path}
   end.
   


-spec parse_path(binary()) -> {[{atom(),binary()}], binary()}.
parse_path(Path) ->
   N = normalize_path(Path),
   parse_template_fields(N).

-spec normalize_path(binary()) -> binary().
normalize_path(<<$/, _/binary>> = Bin) -> Bin;
normalize_path(Bin) -> <<$/, Bin/binary>>.

-spec parse_template_fields(binary()) -> {[{atom(),binary()}], binary()}.
parse_template_fields(Bin) ->
   parse_template_fields(Bin, [], <<>>).

parse_template_fields(<<"{$", Rest/binary>>, Fields, Acc) ->
   {Var, Rest1} = parse_template_fields_1(Rest, <<>>),
   L = length(Fields),
   P = list_to_atom("p" ++ integer_to_list(L)),
   N = <<Acc/binary, ":",(atom_to_binary(P, utf8))/binary>>,
   parse_template_fields(Rest1, [{P, Var}|Fields], N);
parse_template_fields(<<C, Rest/binary>>, Fields, Acc) ->
   parse_template_fields(Rest, Fields, <<Acc/binary, C>>);
parse_template_fields(<<>>, Fields, Acc) ->
   {Fields, Acc}.

parse_template_fields_1(<<"}", Rest/binary>>, Acc) ->
   {Acc, Rest};
parse_template_fields_1(<<C, Rest/binary>>, Acc) ->
   parse_template_fields_1(Rest, <<Acc/binary, C>>);
parse_template_fields_1(<<>>, _) -> {error, bad_template}.

endpoint_rec(Path,Methods,MediaTypes,OutputTypes,Fields,Module,Function) ->
   Split = filename:split(Path),
   Len = length(Split),
   % quality score of path
   Fold = fun(<<$:,_/bits>>,{A,C}) ->
                {A + (1 bsl C), C + 1};
             (_,{A,C}) ->
                {A,C + 1}
          end,
   {Map,_} = lists:foldl(Fold, {0,1}, Split),
   % pre-parse consumed/produced media-types
   Par = fun(Lis) ->
               [begin
                   case L of
                      <<"*/*">> -> '*';
                      _ ->
                         [{M,_,_}] = cow_http_hd:parse_accept(L),
                         M
                   end
                end || L <- Lis]
         end,
   Par2 = fun(Lis) ->
               [begin
                   [{M,_,_}] = cow_http_hd:parse_accept(L),
                   M
                end || L <- Lis]
         end,
   Med = Par(MediaTypes),
   Meo = Par2(OutputTypes),
   #endpoint{path = Path,
             path_length = Len,
             path_map = Map,
             methods = Methods,
             media_types = Med,
             output_media_types = Meo,
             fields = Fields,
             module = Module,
             function = Function}.

% Produce ordered list of {PathMatch, Handler, InitialState}
endpoint_sort(Paths) ->
   Sorted = lists:sort(fun endpoint_sort/2, Paths),
   PreGroup = 
     [{P,M,#{Mthd => #{input_media_types => [{Med, F} || Med <- Meds],
                       output_media_types => [{Med, F} || Med <- OMeds]}}
       }|| #endpoint{path = P,
                     module = M,
                     function = F,
                     methods = Mthds,
                     media_types = Meds,
                     output_media_types = OMeds} 
     <- Sorted,
     Mthd <- Mthds],
   % now merge/override any identical paths
   FoldR = fun({P,M,S} = Rec, Acc) ->
                 case lists:keyfind(P, 1, Acc) of
                    false ->
                       [Rec|Acc];
                    {_,M,S1} ->
                       lists:keyreplace(P, 1, Acc, {P,M,merge_media_types(S,S1)});
                    {_,M1,S1} ->
                       lists:keyreplace(P, 1, Acc, {P,M1,S1})
                 end
           end,
   lists:foldr(FoldR, [], PreGroup).

merge_media_types(New, Old) ->
   % New has one key, Old can have many
   [NewMethod] = maps:keys(New),
   if is_map_key(NewMethod, Old) ->
         #{input_media_types := OldIn,
           output_media_types := OldOut} = maps:get(NewMethod, Old),
         #{input_media_types := NewIn,
           output_media_types := NewOut} = maps:get(NewMethod, New),
         Old#{NewMethod =>
                #{input_media_types => NewIn ++ OldIn,
                  output_media_types => NewOut ++ OldOut}};
      true ->
         maps:merge(Old, New)
   end.

%% % Remove module from ordered list of {PathMatch, Handler, InitialState}
%% endpoint_delete_module(Paths, Module) ->
%%    [{P,M,S} || {P,M,S} <- Paths, M =/= Module].

% true if A le B else false
endpoint_sort(#endpoint{path_length = La} = A, #endpoint{path_length = Lb} = B) ->
   % path length in reverse order
   if La > Lb ->
         true;
      La < Lb  ->
         false;
      true ->
         endpoint_sort_2(A, B)
   end.

% path bitmap sort, explicit = 0, variable = 1, larger number == lower quality
endpoint_sort_2(#endpoint{path_map = La} = A, #endpoint{path_map = Lb} = B) ->
   if La < Lb ->
         true;
      La > Lb ->
         false;
      true ->
         endpoint_sort_3(A, B)
   end.

% method count sort, assumes fewer methods (regardless of type) takes prio.
endpoint_sort_3(#endpoint{methods = La} = A, #endpoint{methods = Lb} = B) ->
   Na = length(La),
   Nb = length(Lb),
   if Na < Nb ->
         true;
      Na > Nb ->
         false;
      true ->
         endpoint_sort_4(A, B)
   end.

% wildcard media-types come last
endpoint_sort_4(#endpoint{media_types = La}, #endpoint{media_types = Lb}) ->
   LLa = [{L, a} || L <- La],
   LLb = [{L, b} || L <- Lb],
   [{_,At}|_] = lists:reverse(lists:sort(lists:append(LLa, LLb))),
   At == a.

