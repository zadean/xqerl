-module('prod_CastableExpr_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['CastableAs001'/1]).
-export(['CastableAs002'/1]).
-export(['CastableAs003'/1]).
-export(['CastableAs004'/1]).
-export(['CastableAs005'/1]).
-export(['CastableAs006'/1]).
-export(['CastableAs007'/1]).
-export(['CastableAs008'/1]).
-export(['CastableAs009'/1]).
-export(['CastableAs010'/1]).
-export(['CastableAs011'/1]).
-export(['CastableAs012'/1]).
-export(['CastableAs013'/1]).
-export(['CastableAs014'/1]).
-export(['CastableAs015'/1]).
-export(['CastableAs016'/1]).
-export(['CastableAs017'/1]).
-export(['CastableAs018'/1]).
-export(['CastableAs019'/1]).
-export(['CastableAs020'/1]).
-export(['CastableAs021'/1]).
-export(['CastableAs022'/1]).
-export(['CastableAs023'/1]).
-export(['CastableAs024'/1]).
-export(['CastableAs025'/1]).
-export(['CastableAs026'/1]).
-export(['CastableAs027'/1]).
-export(['CastableAs028'/1]).
-export(['CastableAs029'/1]).
-export(['CastableAs030'/1]).
-export(['CastableAs031'/1]).
-export(['CastableAs032'/1]).
-export(['CastableAs033'/1]).
-export(['CastableAs034'/1]).
-export(['CastableAs035'/1]).
-export(['CastableAs036'/1]).
-export(['CastableAs037'/1]).
-export(['CastableAs038'/1]).
-export(['CastableAs039'/1]).
-export(['CastableAs040'/1]).
-export(['CastableAs041'/1]).
-export(['CastableAs042'/1]).
-export(['CastableAs043'/1]).
-export(['CastableAs044'/1]).
-export(['CastableAs045'/1]).
-export(['CastableAs046'/1]).
-export(['CastableAs047'/1]).
-export(['CastableAs048'/1]).
-export(['CastableAs049'/1]).
-export(['CastableAs050'/1]).
-export(['CastableAs051'/1]).
-export(['CastableAs052'/1]).
-export(['CastableAs053'/1]).
-export(['CastableAs054'/1]).
-export(['CastableAs055'/1]).
-export(['CastableAs056'/1]).
-export(['CastableAs057'/1]).
-export(['CastableAs058'/1]).
-export(['CastableAs059'/1]).
-export(['CastableAs060'/1]).
-export(['CastableAs061'/1]).
-export(['CastableAs062'/1]).
-export(['CastableAs063'/1]).
-export(['CastableAs064'/1]).
-export(['CastableAs065'/1]).
-export(['CastableAs066'/1]).
-export(['CastableAs067'/1]).
-export(['CastableAs068'/1]).
-export(['CastableAs069'/1]).
-export(['CastableAs070'/1]).
-export(['CastableAs071'/1]).
-export(['CastableAs072'/1]).
-export(['CastableAs073'/1]).
-export(['CastableAs074'/1]).
-export(['CastableAs075'/1]).
-export(['CastableAs076'/1]).
-export(['CastableAs077'/1]).
-export(['CastableAs078'/1]).
-export(['CastableAs079'/1]).
-export(['CastableAs080'/1]).
-export(['CastableAs081'/1]).
-export(['CastableAs082'/1]).
-export(['CastableAs083'/1]).
-export(['CastableAs084'/1]).
-export(['CastableAs085'/1]).
-export(['CastableAs086'/1]).
-export(['CastableAs087'/1]).
-export(['CastableAs088'/1]).
-export(['CastableAs089'/1]).
-export(['CastableAs090'/1]).
-export(['CastableAs091'/1]).
-export(['CastableAs092'/1]).
-export(['CastableAs093'/1]).
-export(['CastableAs094'/1]).
-export(['CastableAs095'/1]).
-export(['CastableAs096'/1]).
-export(['CastableAs097'/1]).
-export(['CastableAs098'/1]).
-export(['CastableAs099'/1]).
-export(['CastableAs100'/1]).
-export(['CastableAs101'/1]).
-export(['CastableAs102'/1]).
-export(['CastableAs103'/1]).
-export(['CastableAs104'/1]).
-export(['CastableAs105'/1]).
-export(['CastableAs106'/1]).
-export(['CastableAs107'/1]).
-export(['CastableAs108'/1]).
-export(['CastableAs109'/1]).
-export(['CastableAs110'/1]).
-export(['CastableAs111'/1]).
-export(['CastableAs112'/1]).
-export(['CastableAs113'/1]).
-export(['CastableAs114'/1]).
-export(['CastableAs115'/1]).
-export(['CastableAs116'/1]).
-export(['CastableAs117'/1]).
-export(['CastableAs118'/1]).
-export(['CastableAs119'/1]).
-export(['CastableAs120'/1]).
-export(['CastableAs121'/1]).
-export(['CastableAs122'/1]).
-export(['CastableAs123'/1]).
-export(['CastableAs124'/1]).
-export(['CastableAs125'/1]).
-export(['CastableAs126'/1]).
-export(['CastableAs127'/1]).
-export(['CastableAs128'/1]).
-export(['CastableAs129'/1]).
-export(['CastableAs130'/1]).
-export(['CastableAs131'/1]).
-export(['CastableAs132'/1]).
-export(['CastableAs133'/1]).
-export(['CastableAs134'/1]).
-export(['CastableAs135'/1]).
-export(['CastableAs136'/1]).
-export(['CastableAs137'/1]).
-export(['CastableAs138'/1]).
-export(['CastableAs139'/1]).
-export(['CastableAs140'/1]).
-export(['CastableAs141'/1]).
-export(['CastableAs142'/1]).
-export(['CastableAs143'/1]).
-export(['CastableAs144'/1]).
-export(['CastableAs145'/1]).
-export(['CastableAs146'/1]).
-export(['CastableAs147'/1]).
-export(['CastableAs148'/1]).
-export(['CastableAs149'/1]).
-export(['CastableAs150'/1]).
-export(['CastableAs151'/1]).
-export(['CastableAs152'/1]).
-export(['CastableAs153'/1]).
-export(['CastableAs154'/1]).
-export(['CastableAs155'/1]).
-export(['CastableAs156'/1]).
-export(['CastableAs157'/1]).
-export(['CastableAs158'/1]).
-export(['CastableAs159'/1]).
-export(['CastableAs160'/1]).
-export(['CastableAs161'/1]).
-export(['CastableAs162'/1]).
-export(['CastableAs163'/1]).
-export(['CastableAs164'/1]).
-export(['CastableAs165'/1]).
-export(['CastableAs166'/1]).
-export(['CastableAs167'/1]).
-export(['CastableAs168'/1]).
-export(['CastableAs169'/1]).
-export(['CastableAs170'/1]).
-export(['CastableAs171'/1]).
-export(['CastableAs172'/1]).
-export(['CastableAs173'/1]).
-export(['CastableAs174'/1]).
-export(['CastableAs175'/1]).
-export(['CastableAs176'/1]).
-export(['CastableAs177'/1]).
-export(['CastableAs178'/1]).
-export(['CastableAs179'/1]).
-export(['CastableAs180'/1]).
-export(['CastableAs181'/1]).
-export(['CastableAs182'/1]).
-export(['CastableAs183'/1]).
-export(['CastableAs184'/1]).
-export(['CastableAs185'/1]).
-export(['CastableAs186'/1]).
-export(['CastableAs187'/1]).
-export(['CastableAs188'/1]).
-export(['CastableAs189'/1]).
-export(['CastableAs190'/1]).
-export(['CastableAs191'/1]).
-export(['CastableAs192'/1]).
-export(['CastableAs193'/1]).
-export(['CastableAs194'/1]).
-export(['CastableAs195'/1]).
-export(['CastableAs196'/1]).
-export(['CastableAs197'/1]).
-export(['CastableAs198'/1]).
-export(['CastableAs199'/1]).
-export(['CastableAs200'/1]).
-export(['CastableAs201'/1]).
-export(['CastableAs202'/1]).
-export(['CastableAs203'/1]).
-export(['CastableAs204'/1]).
-export(['CastableAs205'/1]).
-export(['CastableAs206'/1]).
-export(['CastableAs207'/1]).
-export(['CastableAs208'/1]).
-export(['CastableAs209'/1]).
-export(['CastableAs210'/1]).
-export(['CastableAs211'/1]).
-export(['CastableAs212'/1]).
-export(['CastableAs213'/1]).
-export(['CastableAs214'/1]).
-export(['CastableAs215'/1]).
-export(['CastableAs216'/1]).
-export(['CastableAs217'/1]).
-export(['CastableAs218'/1]).
-export(['CastableAs219'/1]).
-export(['CastableAs220'/1]).
-export(['CastableAs221'/1]).
-export(['CastableAs222'/1]).
-export(['CastableAs223'/1]).
-export(['CastableAs224'/1]).
-export(['CastableAs225'/1]).
-export(['CastableAs226'/1]).
-export(['CastableAs227'/1]).
-export(['CastableAs228'/1]).
-export(['CastableAs229'/1]).
-export(['CastableAs230'/1]).
-export(['CastableAs231'/1]).
-export(['CastableAs232'/1]).
-export(['CastableAs233'/1]).
-export(['CastableAs234'/1]).
-export(['CastableAs235'/1]).
-export(['CastableAs236'/1]).
-export(['CastableAs237'/1]).
-export(['CastableAs238'/1]).
-export(['CastableAs239'/1]).
-export(['CastableAs240'/1]).
-export(['CastableAs241'/1]).
-export(['CastableAs242'/1]).
-export(['CastableAs243'/1]).
-export(['CastableAs244'/1]).
-export(['CastableAs245'/1]).
-export(['CastableAs246'/1]).
-export(['CastableAs247'/1]).
-export(['CastableAs248'/1]).
-export(['CastableAs249'/1]).
-export(['CastableAs250'/1]).
-export(['CastableAs251'/1]).
-export(['CastableAs252'/1]).
-export(['CastableAs253'/1]).
-export(['CastableAs254'/1]).
-export(['CastableAs255'/1]).
-export(['CastableAs256'/1]).
-export(['CastableAs257'/1]).
-export(['CastableAs258'/1]).
-export(['CastableAs259'/1]).
-export(['CastableAs260'/1]).
-export(['CastableAs261'/1]).
-export(['CastableAs262'/1]).
-export(['CastableAs263'/1]).
-export(['CastableAs264'/1]).
-export(['CastableAs265'/1]).
-export(['CastableAs266'/1]).
-export(['CastableAs267'/1]).
-export(['CastableAs268'/1]).
-export(['CastableAs269'/1]).
-export(['CastableAs270'/1]).
-export(['CastableAs271'/1]).
-export(['CastableAs272'/1]).
-export(['CastableAs273'/1]).
-export(['CastableAs274'/1]).
-export(['CastableAs275'/1]).
-export(['CastableAs276'/1]).
-export(['CastableAs277'/1]).
-export(['CastableAs278'/1]).
-export(['CastableAs279'/1]).
-export(['CastableAs280'/1]).
-export(['CastableAs281'/1]).
-export(['CastableAs282'/1]).
-export(['CastableAs283'/1]).
-export(['CastableAs284'/1]).
-export(['CastableAs285'/1]).
-export(['CastableAs286'/1]).
-export(['CastableAs287'/1]).
-export(['CastableAs288'/1]).
-export(['CastableAs289'/1]).
-export(['CastableAs290'/1]).
-export(['CastableAs291'/1]).
-export(['CastableAs292'/1]).
-export(['CastableAs293'/1]).
-export(['CastableAs294'/1]).
-export(['CastableAs295'/1]).
-export(['CastableAs296'/1]).
-export(['CastableAs297'/1]).
-export(['CastableAs298'/1]).
-export(['CastableAs299'/1]).
-export(['CastableAs300'/1]).
-export(['CastableAs301'/1]).
-export(['CastableAs302'/1]).
-export(['CastableAs303'/1]).
-export(['CastableAs304'/1]).
-export(['CastableAs305'/1]).
-export(['CastableAs306'/1]).
-export(['CastableAs307'/1]).
-export(['CastableAs308'/1]).
-export(['CastableAs309'/1]).
-export(['CastableAs310'/1]).
-export(['CastableAs311'/1]).
-export(['CastableAs312'/1]).
-export(['CastableAs313'/1]).
-export(['CastableAs314'/1]).
-export(['CastableAs315'/1]).
-export(['CastableAs316'/1]).
-export(['CastableAs317'/1]).
-export(['CastableAs318'/1]).
-export(['CastableAs319'/1]).
-export(['CastableAs320'/1]).
-export(['CastableAs321'/1]).
-export(['CastableAs322'/1]).
-export(['CastableAs323'/1]).
-export(['CastableAs324'/1]).
-export(['CastableAs325'/1]).
-export(['CastableAs326'/1]).
-export(['CastableAs327'/1]).
-export(['CastableAs328'/1]).
-export(['CastableAs329'/1]).
-export(['CastableAs330'/1]).
-export(['CastableAs331'/1]).
-export(['CastableAs332'/1]).
-export(['CastableAs333'/1]).
-export(['CastableAs334'/1]).
-export(['CastableAs335'/1]).
-export(['CastableAs336'/1]).
-export(['CastableAs337'/1]).
-export(['CastableAs338'/1]).
-export(['CastableAs339'/1]).
-export(['CastableAs340'/1]).
-export(['CastableAs341'/1]).
-export(['CastableAs342'/1]).
-export(['CastableAs343'/1]).
-export(['CastableAs344'/1]).
-export(['CastableAs345'/1]).
-export(['CastableAs346'/1]).
-export(['CastableAs347'/1]).
-export(['CastableAs348'/1]).
-export(['CastableAs349'/1]).
-export(['CastableAs350'/1]).
-export(['CastableAs351'/1]).
-export(['CastableAs352'/1]).
-export(['CastableAs353'/1]).
-export(['CastableAs354'/1]).
-export(['CastableAs355'/1]).
-export(['CastableAs356'/1]).
-export(['CastableAs357'/1]).
-export(['CastableAs358'/1]).
-export(['CastableAs359'/1]).
-export(['CastableAs360'/1]).
-export(['CastableAs361'/1]).
-export(['CastableAs362'/1]).
-export(['CastableAs363'/1]).
-export(['CastableAs364'/1]).
-export(['CastableAs365'/1]).
-export(['CastableAs366'/1]).
-export(['CastableAs367'/1]).
-export(['CastableAs368'/1]).
-export(['CastableAs369'/1]).
-export(['CastableAs370'/1]).
-export(['CastableAs371'/1]).
-export(['CastableAs372'/1]).
-export(['CastableAs373'/1]).
-export(['CastableAs374'/1]).
-export(['CastableAs375'/1]).
-export(['CastableAs376'/1]).
-export(['CastableAs377'/1]).
-export(['CastableAs378'/1]).
-export(['CastableAs379'/1]).
-export(['CastableAs380'/1]).
-export(['CastableAs381'/1]).
-export(['CastableAs382'/1]).
-export(['CastableAs383'/1]).
-export(['CastableAs384'/1]).
-export(['CastableAs385'/1]).
-export(['CastableAs386'/1]).
-export(['CastableAs387'/1]).
-export(['CastableAs388'/1]).
-export(['CastableAs389'/1]).
-export(['CastableAs390'/1]).
-export(['CastableAs391'/1]).
-export(['CastableAs392'/1]).
-export(['CastableAs393'/1]).
-export(['CastableAs394'/1]).
-export(['CastableAs395'/1]).
-export(['CastableAs396'/1]).
-export(['CastableAs397'/1]).
-export(['CastableAs398'/1]).
-export(['CastableAs399'/1]).
-export(['CastableAs400'/1]).
-export(['CastableAs401'/1]).
-export(['CastableAs402'/1]).
-export(['CastableAs403'/1]).
-export(['CastableAs404'/1]).
-export(['CastableAs405'/1]).
-export(['CastableAs406'/1]).
-export(['CastableAs407'/1]).
-export(['CastableAs408'/1]).
-export(['CastableAs409'/1]).
-export(['CastableAs410'/1]).
-export(['CastableAs411'/1]).
-export(['CastableAs412'/1]).
-export(['CastableAs413'/1]).
-export(['CastableAs414'/1]).
-export(['CastableAs415'/1]).
-export(['CastableAs416'/1]).
-export(['CastableAs417'/1]).
-export(['CastableAs418'/1]).
-export(['CastableAs419'/1]).
-export(['CastableAs420'/1]).
-export(['CastableAs421'/1]).
-export(['CastableAs422'/1]).
-export(['CastableAs423'/1]).
-export(['CastableAs424'/1]).
-export(['CastableAs425'/1]).
-export(['CastableAs426'/1]).
-export(['CastableAs427'/1]).
-export(['CastableAs428'/1]).
-export(['CastableAs429'/1]).
-export(['CastableAs430'/1]).
-export(['CastableAs431'/1]).
-export(['CastableAs432'/1]).
-export(['CastableAs433'/1]).
-export(['CastableAs434'/1]).
-export(['CastableAs435'/1]).
-export(['CastableAs436'/1]).
-export(['CastableAs437'/1]).
-export(['CastableAs438'/1]).
-export(['CastableAs439'/1]).
-export(['CastableAs440'/1]).
-export(['CastableAs441'/1]).
-export(['CastableAs442'/1]).
-export(['CastableAs443'/1]).
-export(['CastableAs444'/1]).
-export(['CastableAs445'/1]).
-export(['CastableAs446'/1]).
-export(['CastableAs447'/1]).
-export(['CastableAs448'/1]).
-export(['CastableAs449'/1]).
-export(['CastableAs450'/1]).
-export(['CastableAs451'/1]).
-export(['CastableAs452'/1]).
-export(['CastableAs453'/1]).
-export(['CastableAs454'/1]).
-export(['CastableAs455'/1]).
-export(['CastableAs456'/1]).
-export(['CastableAs457'/1]).
-export(['CastableAs458'/1]).
-export(['CastableAs459'/1]).
-export(['CastableAs460'/1]).
-export(['CastableAs461'/1]).
-export(['CastableAs462'/1]).
-export(['CastableAs463'/1]).
-export(['CastableAs464'/1]).
-export(['CastableAs465'/1]).
-export(['CastableAs466'/1]).
-export(['CastableAs467'/1]).
-export(['CastableAs468'/1]).
-export(['CastableAs469'/1]).
-export(['CastableAs470'/1]).
-export(['CastableAs471'/1]).
-export(['CastableAs472'/1]).
-export(['CastableAs473'/1]).
-export(['CastableAs474'/1]).
-export(['CastableAs475'/1]).
-export(['CastableAs476'/1]).
-export(['CastableAs477'/1]).
-export(['CastableAs478'/1]).
-export(['CastableAs479'/1]).
-export(['CastableAs480'/1]).
-export(['CastableAs481'/1]).
-export(['CastableAs482'/1]).
-export(['CastableAs483'/1]).
-export(['CastableAs484'/1]).
-export(['CastableAs485'/1]).
-export(['CastableAs486'/1]).
-export(['CastableAs487'/1]).
-export(['CastableAs488'/1]).
-export(['CastableAs489'/1]).
-export(['CastableAs490'/1]).
-export(['CastableAs491'/1]).
-export(['CastableAs492'/1]).
-export(['CastableAs493'/1]).
-export(['CastableAs494'/1]).
-export(['CastableAs495'/1]).
-export(['CastableAs496'/1]).
-export(['CastableAs497'/1]).
-export(['CastableAs498'/1]).
-export(['CastableAs499'/1]).
-export(['CastableAs500'/1]).
-export(['CastableAs501'/1]).
-export(['CastableAs502'/1]).
-export(['CastableAs503'/1]).
-export(['CastableAs504'/1]).
-export(['CastableAs505'/1]).
-export(['CastableAs506'/1]).
-export(['CastableAs507'/1]).
-export(['CastableAs508'/1]).
-export(['CastableAs509'/1]).
-export(['CastableAs510'/1]).
-export(['CastableAs511'/1]).
-export(['CastableAs512'/1]).
-export(['CastableAs513'/1]).
-export(['CastableAs514'/1]).
-export(['CastableAs515'/1]).
-export(['CastableAs516'/1]).
-export(['CastableAs517'/1]).
-export(['CastableAs518'/1]).
-export(['CastableAs519'/1]).
-export(['CastableAs520'/1]).
-export(['CastableAs521'/1]).
-export(['CastableAs522'/1]).
-export(['CastableAs523'/1]).
-export(['CastableAs524'/1]).
-export(['CastableAs525'/1]).
-export(['CastableAs526'/1]).
-export(['CastableAs527'/1]).
-export(['CastableAs528'/1]).
-export(['CastableAs529'/1]).
-export(['CastableAs530'/1]).
-export(['CastableAs531'/1]).
-export(['CastableAs532'/1]).
-export(['CastableAs533'/1]).
-export(['CastableAs534'/1]).
-export(['CastableAs535'/1]).
-export(['CastableAs536'/1]).
-export(['CastableAs537'/1]).
-export(['CastableAs538'/1]).
-export(['CastableAs539'/1]).
-export(['CastableAs540'/1]).
-export(['CastableAs541'/1]).
-export(['CastableAs542'/1]).
-export(['CastableAs543'/1]).
-export(['CastableAs544'/1]).
-export(['CastableAs545'/1]).
-export(['CastableAs546'/1]).
-export(['CastableAs547'/1]).
-export(['CastableAs548'/1]).
-export(['CastableAs549'/1]).
-export(['CastableAs550'/1]).
-export(['CastableAs551'/1]).
-export(['CastableAs552'/1]).
-export(['CastableAs553'/1]).
-export(['CastableAs554'/1]).
-export(['CastableAs555'/1]).
-export(['CastableAs556'/1]).
-export(['CastableAs557'/1]).
-export(['CastableAs558'/1]).
-export(['CastableAs559'/1]).
-export(['CastableAs560'/1]).
-export(['CastableAs561'/1]).
-export(['CastableAs562'/1]).
-export(['CastableAs563'/1]).
-export(['CastableAs564'/1]).
-export(['CastableAs565'/1]).
-export(['CastableAs566'/1]).
-export(['CastableAs567'/1]).
-export(['CastableAs568'/1]).
-export(['CastableAs569'/1]).
-export(['CastableAs570'/1]).
-export(['CastableAs571'/1]).
-export(['CastableAs572'/1]).
-export(['CastableAs573'/1]).
-export(['CastableAs574'/1]).
-export(['CastableAs575'/1]).
-export(['CastableAs576'/1]).
-export(['CastableAs577'/1]).
-export(['CastableAs578'/1]).
-export(['CastableAs579'/1]).
-export(['CastableAs580'/1]).
-export(['CastableAs581'/1]).
-export(['CastableAs582'/1]).
-export(['CastableAs583'/1]).
-export(['CastableAs584'/1]).
-export(['CastableAs585'/1]).
-export(['CastableAs586'/1]).
-export(['CastableAs587'/1]).
-export(['CastableAs588'/1]).
-export(['CastableAs589'/1]).
-export(['CastableAs590'/1]).
-export(['CastableAs591'/1]).
-export(['CastableAs592'/1]).
-export(['CastableAs593'/1]).
-export(['CastableAs594'/1]).
-export(['CastableAs595'/1]).
-export(['CastableAs596'/1]).
-export(['CastableAs597'/1]).
-export(['CastableAs598'/1]).
-export(['CastableAs599'/1]).
-export(['CastableAs600'/1]).
-export(['CastableAs601'/1]).
-export(['CastableAs602'/1]).
-export(['CastableAs603'/1]).
-export(['CastableAs604'/1]).
-export(['CastableAs605'/1]).
-export(['CastableAs606'/1]).
-export(['CastableAs607'/1]).
-export(['CastableAs608'/1]).
-export(['CastableAs609'/1]).
-export(['CastableAs610'/1]).
-export(['CastableAs611'/1]).
-export(['CastableAs612'/1]).
-export(['CastableAs613'/1]).
-export(['CastableAs614'/1]).
-export(['CastableAs615'/1]).
-export(['CastableAs616'/1]).
-export(['CastableAs617'/1]).
-export(['CastableAs618'/1]).
-export(['CastableAs619'/1]).
-export(['CastableAs620'/1]).
-export(['CastableAs621'/1]).
-export(['CastableAs622'/1]).
-export(['CastableAs623'/1]).
-export(['CastableAs624'/1]).
-export(['CastableAs625'/1]).
-export(['CastableAs626'/1]).
-export(['CastableAs627'/1]).
-export(['CastableAs628'/1]).
-export(['CastableAs629'/1]).
-export(['CastableAs630'/1]).
-export(['CastableAs631'/1]).
-export(['CastableAs632'/1]).
-export(['CastableAs633'/1]).
-export(['CastableAs634'/1]).
-export(['CastableAs635'/1]).
-export(['CastableAs636'/1]).
-export(['CastableAs637'/1]).
-export(['CastableAs638'/1]).
-export(['CastableAs639'/1]).
-export(['CastableAs640'/1]).
-export(['CastableAs641'/1]).
-export(['CastableAs642'/1]).
-export(['CastableAs643'/1]).
-export(['CastableAs644'/1]).
-export(['CastableAs645'/1]).
-export(['CastableAs646'/1]).
-export(['CastableAs647'/1]).
-export(['CastableAs648'/1]).
-export(['CastableAs648a'/1]).
-export(['CastableAs649'/1]).
-export(['CastableAs650'/1]).
-export(['CastableAs651'/1]).
-export(['CastableAs652'/1]).
-export(['CastableAs653'/1]).
-export(['CastableAs654'/1]).
-export(['CastableAs655'/1]).
-export(['CastableAs656'/1]).
-export(['CastableAs657'/1]).
-export(['CastableAs658'/1]).
-export(['CastableAs659'/1]).
-export(['CastableAs660'/1]).
-export(['CastableAs661'/1]).
-export(['CastableAs662'/1]).
-export(['K-SeqExprCastable-1'/1]).
-export(['K-SeqExprCastable-2'/1]).
-export(['K-SeqExprCastable-3'/1]).
-export(['K-SeqExprCastable-4'/1]).
-export(['K-SeqExprCastable-4a'/1]).
-export(['K-SeqExprCastable-5'/1]).
-export(['K-SeqExprCastable-5a'/1]).
-export(['K-SeqExprCastable-6'/1]).
-export(['K-SeqExprCastable-6a'/1]).
-export(['K-SeqExprCastable-7'/1]).
-export(['K-SeqExprCastable-8'/1]).
-export(['K-SeqExprCastable-9'/1]).
-export(['K-SeqExprCastable-10'/1]).
-export(['K-SeqExprCastable-11'/1]).
-export(['K-SeqExprCastable-12'/1]).
-export(['K-SeqExprCastable-12a'/1]).
-export(['K-SeqExprCastable-13'/1]).
-export(['K-SeqExprCastable-13a'/1]).
-export(['K-SeqExprCastable-14'/1]).
-export(['K-SeqExprCastable-15'/1]).
-export(['K-SeqExprCastable-16'/1]).
-export(['K-SeqExprCastable-17'/1]).
-export(['K-SeqExprCastable-18'/1]).
-export(['K-SeqExprCastable-19'/1]).
-export(['K-SeqExprCastable-20'/1]).
-export(['K-SeqExprCastable-21'/1]).
-export(['K-SeqExprCastable-22'/1]).
-export(['K-SeqExprCastable-23'/1]).
-export(['K-SeqExprCastable-24'/1]).
-export(['K-SeqExprCastable-25'/1]).
-export(['K-SeqExprCastable-26'/1]).
-export(['K-SeqExprCastable-27'/1]).
-export(['K-SeqExprCastable-28'/1]).
-export(['K-SeqExprCastable-29'/1]).
-export(['K-SeqExprCastable-30'/1]).
-export(['K-SeqExprCastable-31'/1]).
-export(['K-SeqExprCastable-32'/1]).
-export(['K-SeqExprCastable-33'/1]).
-export(['K-SeqExprCastable-34'/1]).
-export(['K-SeqExprCastable-35'/1]).
-export(['K-SeqExprCastable-36'/1]).
-export(['K-SeqExprCastable-37'/1]).
-export(['K-SeqExprCastable-38'/1]).
-export(['K2-SeqExprCastable-1'/1]).
-export(['K2-SeqExprCastable-2'/1]).
-export(['K2-SeqExprCastable-3'/1]).
-export(['K2-SeqExprCastable-4'/1]).
-export(['K2-SeqExprCastable-5'/1]).
-export(['K2-SeqExprCastable-6'/1]).
-export(['K2-SeqExprCastable-7'/1]).
-export(['K2-SeqExprCastable-8'/1]).
-export(['Castable-UnionType-1'/1]).
-export(['Castable-UnionType-2'/1]).
-export(['Castable-UnionType-3'/1]).
-export(['Castable-UnionType-4'/1]).
-export(['Castable-UnionType-5'/1]).
-export(['Castable-UnionType-6'/1]).
-export(['Castable-UnionType-7'/1]).
-export(['Castable-UnionType-8'/1]).
-export(['Castable-UnionType-9'/1]).
-export(['Castable-UnionType-10'/1]).
-export(['Castable-UnionType-11'/1]).
-export(['Castable-UnionType-12'/1]).
-export(['Castable-UnionType-13'/1]).
-export(['Castable-UnionType-14'/1]).
-export(['Castable-UnionType-15'/1]).
-export(['Castable-UnionType-16'/1]).
-export(['Castable-UnionType-17'/1]).
-export(['Castable-UnionType-18'/1]).
-export(['Castable-UnionType-19'/1]).
-export(['Castable-UnionType-20'/1]).
-export(['Castable-UnionType-21'/1]).
-export(['Castable-UnionType-22'/1]).
-export(['Castable-UnionType-23'/1]).
-export(['Castable-UnionType-24'/1]).
-export(['Castable-UnionType-25'/1]).
-export(['Castable-UnionType-26'/1]).
-export(['Castable-UnionType-36'/1]).
-export(['Castable-UnionType-37'/1]).
-export(['Castable-UnionType-38'/1]).
-export(['Castable-ListType-2'/1]).
-export(['Castable-ListType-3'/1]).
-export(['Castable-ListType-4'/1]).
-export(['Castable-ListType-5'/1]).
-export(['Castable-ListType-6'/1]).
-export(['Castable-ListType-7'/1]).
-export(['Castable-ListType-8'/1]).
-export(['Castable-ListType-9'/1]).
-export(['Castable-ListType-10'/1]).
-export(['Castable-ListType-11'/1]).
-export(['Castable-ListType-12'/1]).
-export(['Castable-ListType-13'/1]).
-export(['Castable-ListType-14'/1]).
-export(['Castable-ListType-15'/1]).
-export(['Castable-ListType-16'/1]).
-export(['Castable-ListType-17'/1]).
-export(['Castable-ListType-18'/1]).
-export(['Castable-ListType-19'/1]).
-export(['cbcl-castable-byte-001'/1]).
-export(['cbcl-castable-byte-002'/1]).
-export(['cbcl-castable-byte-003'/1]).
-export(['cbcl-castable-byte-004'/1]).
-export(['cbcl-castable-date-001'/1]).
-export(['cbcl-castable-date-002'/1]).
-export(['cbcl-castable-dateTime-001'/1]).
-export(['cbcl-castable-dateTime-002'/1]).
-export(['cbcl-castable-dayTimeDuration-001'/1]).
-export(['cbcl-castable-dayTimeDuration-002'/1]).
-export(['cbcl-castable-decimal-001'/1]).
-export(['cbcl-castable-decimal-002'/1]).
-export(['cbcl-castable-decimal-003'/1]).
-export(['cbcl-castable-decimal-004'/1]).
-export(['cbcl-castable-decimal-005'/1]).
-export(['cbcl-castable-decimal-006'/1]).
-export(['cbcl-castable-decimal-007'/1]).
-export(['cbcl-castable-decimal-008'/1]).
-export(['cbcl-castable-decimal-009'/1]).
-export(['cbcl-castable-decimal-010'/1]).
-export(['cbcl-castable-duration-001'/1]).
-export(['cbcl-castable-duration-002'/1]).
-export(['cbcl-castable-int-001'/1]).
-export(['cbcl-castable-int-002'/1]).
-export(['cbcl-castable-int-003'/1]).
-export(['cbcl-castable-int-004'/1]).
-export(['cbcl-castable-integer-001'/1]).
-export(['cbcl-castable-integer-002'/1]).
-export(['cbcl-castable-integer-003'/1]).
-export(['cbcl-castable-integer-004'/1]).
-export(['cbcl-castable-language-001'/1]).
-export(['cbcl-castable-language-002'/1]).
-export(['cbcl-castable-language-003'/1]).
-export(['cbcl-castable-language-004'/1]).
-export(['cbcl-castable-long-001'/1]).
-export(['cbcl-castable-long-002'/1]).
-export(['cbcl-castable-long-003'/1]).
-export(['cbcl-castable-long-004'/1]).
-export(['cbcl-castable-name-001'/1]).
-export(['cbcl-castable-name-002'/1]).
-export(['cbcl-castable-name-003'/1]).
-export(['cbcl-castable-name-004'/1]).
-export(['cbcl-castable-ncname-001'/1]).
-export(['cbcl-castable-ncname-002'/1]).
-export(['cbcl-castable-ncname-003'/1]).
-export(['cbcl-castable-ncname-004'/1]).
-export(['cbcl-castable-negativeInteger-001'/1]).
-export(['cbcl-castable-negativeInteger-002'/1]).
-export(['cbcl-castable-nmtoken-001'/1]).
-export(['cbcl-castable-nmtoken-002'/1]).
-export(['cbcl-castable-nmtoken-002b'/1]).
-export(['cbcl-castable-nonNegativeInteger-001'/1]).
-export(['cbcl-castable-nonNegativeInteger-002'/1]).
-export(['cbcl-castable-nonPositiveInteger-001'/1]).
-export(['cbcl-castable-nonPositiveInteger-002'/1]).
-export(['cbcl-castable-positiveInteger-001'/1]).
-export(['cbcl-castable-positiveInteger-002'/1]).
-export(['cbcl-castable-short-001'/1]).
-export(['cbcl-castable-short-002'/1]).
-export(['cbcl-castable-short-003'/1]).
-export(['cbcl-castable-short-004'/1]).
-export(['cbcl-castable-unsignedByte-001'/1]).
-export(['cbcl-castable-unsignedByte-002'/1]).
-export(['cbcl-castable-unsignedByte-003'/1]).
-export(['cbcl-castable-unsignedByte-004'/1]).
-export(['cbcl-castable-unsignedInt-001'/1]).
-export(['cbcl-castable-unsignedInt-002'/1]).
-export(['cbcl-castable-unsignedInt-003'/1]).
-export(['cbcl-castable-unsignedInt-004'/1]).
-export(['cbcl-castable-unsignedLong-001'/1]).
-export(['cbcl-castable-unsignedLong-002'/1]).
-export(['cbcl-castable-unsignedLong-003'/1]).
-export(['cbcl-castable-unsignedLong-004'/1]).
-export(['cbcl-castable-unsignedShort-001'/1]).
-export(['cbcl-castable-unsignedShort-002'/1]).
-export(['cbcl-castable-unsignedShort-003'/1]).
-export(['cbcl-castable-unsignedShort-004'/1]).
-export(['cbcl-castable-yearMonthDuration-001'/1]).
-export(['cbcl-castable-yearMonthDuration-002'/1]).
-export(['cbcl-castable-nonNegativeInteger-003'/1]).
-export(['cbcl-castable-nonPositiveInteger-003'/1]).
-export(['cbcl-castable-unsignedByte-005'/1]).
-export(['cbcl-castable-unsignedInt-005'/1]).
-export(['cbcl-castable-unsignedLong-005'/1]).
-export(['cbcl-castable-unsignedShort-005'/1]).
-export(['cbcl-castable-gYear-001'/1]).
-export(['cbcl-castable-gYearMonth-001'/1]).
-export(['cbcl-castable-gYearMonth-002'/1]).
-export(['cbcl-castable-gYear-002'/1]).
-export(['cbcl-castable-gYear-003'/1]).
-export(['cbcl-castable-gYearMonth-003'/1]).
-export(['cbcl-castable-gYearMonth-004'/1]).
-export(['cbcl-castable-ENTITIES-001'/1]).
-export(['cbcl-castable-ENTITIES-002'/1]).
-export(['cbcl-castable-ENTITIES-003'/1]).
-export(['cbcl-castable-ENTITIES-004'/1]).
-export(['cbcl-castable-ENTITIES-005'/1]).
-export(['cbcl-castable-ENTITIES-006'/1]).
-export(['cbcl-castable-ENTITIES-007'/1]).
-export(['cbcl-castable-ENTITIES-008'/1]).
-export(['cbcl-castable-ENTITIES-009'/1]).
-export(['cbcl-castable-ENTITIES-010'/1]).
-export(['cbcl-castable-ENTITIES-011'/1]).
-export(['cbcl-castable-ENTITIES-012'/1]).
-export(['cbcl-castable-ENTITIES-013'/1]).
-export(['cbcl-castable-ENTITIES-014'/1]).
-export(['cbcl-castable-ENTITIES-015'/1]).
-export(['cbcl-castable-ENTITIES-016'/1]).
-export(['cbcl-castable-ENTITIES-017'/1]).
-export(['cbcl-castable-ENTITIES-018'/1]).
-export(['cbcl-castable-ENTITIES-019'/1]).
-export(['cbcl-castable-ENTITIES-020'/1]).
-export(['cbcl-castable-NMTOKENS-001'/1]).
-export(['cbcl-castable-NMTOKENS-002'/1]).
-export(['cbcl-castable-NMTOKENS-003'/1]).
-export(['cbcl-castable-NMTOKENS-004'/1]).
-export(['cbcl-castable-NMTOKENS-005'/1]).
-export(['cbcl-castable-NMTOKENS-006'/1]).
-export(['cbcl-castable-NMTOKENS-007'/1]).
-export(['cbcl-castable-NMTOKENS-008'/1]).
-export(['cbcl-castable-NMTOKENS-009'/1]).
-export(['cbcl-castable-NMTOKENS-010'/1]).
-export(['cbcl-castable-NMTOKENS-011'/1]).
-export(['cbcl-castable-NMTOKENS-012'/1]).
-export(['cbcl-castable-NMTOKENS-013'/1]).
-export(['cbcl-castable-NMTOKENS-014'/1]).
-export(['cbcl-castable-NMTOKENS-015'/1]).
-export(['cbcl-castable-NMTOKENS-016'/1]).
-export(['cbcl-castable-NMTOKENS-017'/1]).
-export(['cbcl-castable-NMTOKENS-018'/1]).
-export(['cbcl-castable-NMTOKENS-019'/1]).
-export(['cbcl-castable-NMTOKENS-020'/1]).
-export(['cbcl-castable-IDREFS-001'/1]).
-export(['cbcl-castable-IDREFS-002'/1]).
-export(['cbcl-castable-IDREFS-003'/1]).
-export(['cbcl-castable-IDREFS-004'/1]).
-export(['cbcl-castable-IDREFS-005'/1]).
-export(['cbcl-castable-IDREFS-006'/1]).
-export(['cbcl-castable-IDREFS-007'/1]).
-export(['cbcl-castable-IDREFS-008'/1]).
-export(['cbcl-castable-IDREFS-009'/1]).
-export(['cbcl-castable-IDREFS-010'/1]).
-export(['cbcl-castable-IDREFS-011'/1]).
-export(['cbcl-castable-IDREFS-012'/1]).
-export(['cbcl-castable-IDREFS-013'/1]).
-export(['cbcl-castable-IDREFS-014'/1]).
-export(['cbcl-castable-IDREFS-015'/1]).
-export(['cbcl-castable-IDREFS-016'/1]).
-export(['cbcl-castable-IDREFS-017'/1]).
-export(['cbcl-castable-IDREFS-018'/1]).
-export(['cbcl-castable-IDREFS-019'/1]).
-export(['cbcl-castable-IDREFS-020'/1]).
-export(['cbcl-castable-impure-001'/1]).
-export(['cbcl-castable-impure-002'/1]).
-export(['cbcl-castable-impure-003'/1]).
-export(['cbcl-castable-impure-004'/1]).
-export(['cbcl-castable-impure-005'/1]).
-export(['cbcl-castable-impure-006'/1]).
-export(['cbcl-castable-impure-007'/1]).
-export(['cbcl-castable-impure-008'/1]).
-export(['cbcl-castable-impure-009'/1]).
-export(['cbcl-castable-impure-010'/1]).
-export(['cbcl-castable-impure-011'/1]).
-export(['cbcl-castable-impure-012'/1]).
-export(['cbcl-castable-impure-013'/1]).
-export(['cbcl-castable-impure-014'/1]).
-export(['cbcl-castable-impure-015'/1]).
-export(['cbcl-castable-impure-016'/1]).
-export(['cbcl-castable-impure-017'/1]).
-export(['cbcl-castable-impure-018'/1]).
-export(['cbcl-castable-impure-019'/1]).
-export(['cbcl-castable-impure-020'/1]).
-export(['cbcl-castable-restricted-union-001'/1]).
-export(['cbcl-castable-restricted-union-002'/1]).
-export(['cbcl-castable-restricted-union-003'/1]).
-export(['cbcl-castable-restricted-union-004'/1]).
-export(['cbcl-castable-restricted-union-005'/1]).
-export(['cbcl-castable-restricted-union-006'/1]).
-export(['cbcl-castable-restricted-union-007'/1]).
-export(['cbcl-castable-restricted-union-008'/1]).
-export(['cbcl-castable-restricted-union-009'/1]).
-export(['cbcl-castable-restricted-union-010'/1]).
-export(['cbcl-castable-restricted-union-011'/1]).
-export(['cbcl-castable-restricted-union-012'/1]).
-export(['cbcl-castable-restricted-union-013'/1]).
-export(['cbcl-castable-restricted-union-014'/1]).
-export(['cbcl-castable-restricted-union-015'/1]).
-export(['cbcl-castable-restricted-union-016'/1]).
-export(['cbcl-castable-restricted-union-017'/1]).
-export(['cbcl-castable-restricted-union-018'/1]).
-export(['cbcl-castable-restricted-union-019'/1]).
-export(['cbcl-castable-restricted-union-020'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'CastableAs001',
   'CastableAs002',
   'CastableAs003',
   'CastableAs004',
   'CastableAs005',
   'CastableAs006',
   'CastableAs007',
   'CastableAs008',
   'CastableAs009',
   'CastableAs010',
   'CastableAs011',
   'CastableAs012',
   'CastableAs013',
   'CastableAs014',
   'CastableAs015',
   'CastableAs016',
   'CastableAs017',
   'CastableAs018',
   'CastableAs019',
   'CastableAs020',
   'CastableAs021',
   'CastableAs022',
   'CastableAs023',
   'CastableAs024',
   'CastableAs025',
   'CastableAs026',
   'CastableAs027',
   'CastableAs028',
   'CastableAs029',
   'CastableAs030',
   'CastableAs031',
   'CastableAs032',
   'CastableAs033',
   'CastableAs034',
   'CastableAs035',
   'CastableAs036',
   'CastableAs037',
   'CastableAs038',
   'CastableAs039',
   'CastableAs040',
   'CastableAs041',
   'CastableAs042',
   'CastableAs043',
   'CastableAs044',
   'CastableAs045',
   'CastableAs046',
   'CastableAs047',
   'CastableAs048',
   'CastableAs049',
   'CastableAs050',
   'CastableAs051',
   'CastableAs052',
   'CastableAs053',
   'CastableAs054',
   'CastableAs055',
   'CastableAs056',
   'CastableAs057',
   'CastableAs058',
   'CastableAs059',
   'CastableAs060',
   'CastableAs061',
   'CastableAs062',
   'CastableAs063',
   'CastableAs064',
   'CastableAs065',
   'CastableAs066',
   'CastableAs067',
   'CastableAs068',
   'CastableAs069',
   'CastableAs070',
   'CastableAs071',
   'CastableAs072',
   'CastableAs073',
   'CastableAs074',
   'CastableAs075',
   'CastableAs076',
   'CastableAs077',
   'CastableAs078',
   'CastableAs079',
   'CastableAs080',
   'CastableAs081',
   'CastableAs082',
   'CastableAs083',
   'CastableAs084',
   'CastableAs085',
   'CastableAs086',
   'CastableAs087',
   'CastableAs088',
   'CastableAs089',
   'CastableAs090',
   'CastableAs091',
   'CastableAs092',
   'CastableAs093',
   'CastableAs094',
   'CastableAs095',
   'CastableAs096',
   'CastableAs097',
   'CastableAs098',
   'CastableAs099',
   'CastableAs100',
   'CastableAs101',
   'CastableAs102',
   'CastableAs103',
   'CastableAs104',
   'CastableAs105',
   'CastableAs106',
   'CastableAs107',
   'CastableAs108',
   'CastableAs109',
   'CastableAs110',
   'CastableAs111',
   'CastableAs112',
   'CastableAs113',
   'CastableAs114',
   'CastableAs115',
   'CastableAs116',
   'CastableAs117',
   'CastableAs118',
   'CastableAs119',
   'CastableAs120',
   'CastableAs121',
   'CastableAs122',
   'CastableAs123',
   'CastableAs124',
   'CastableAs125',
   'CastableAs126',
   'CastableAs127',
   'CastableAs128',
   'CastableAs129',
   'CastableAs130',
   'CastableAs131',
   'CastableAs132',
   'CastableAs133',
   'CastableAs134',
   'CastableAs135',
   'CastableAs136',
   'CastableAs137',
   'CastableAs138',
   'CastableAs139',
   'CastableAs140',
   'CastableAs141',
   'CastableAs142',
   'CastableAs143',
   'CastableAs144',
   'CastableAs145',
   'CastableAs146',
   'CastableAs147',
   'CastableAs148',
   'CastableAs149',
   'CastableAs150',
   'CastableAs151',
   'CastableAs152',
   'CastableAs153',
   'CastableAs154',
   'CastableAs155',
   'CastableAs156',
   'CastableAs157',
   'CastableAs158',
   'CastableAs159',
   'CastableAs160',
   'CastableAs161',
   'CastableAs162',
   'CastableAs163',
   'CastableAs164',
   'CastableAs165',
   'CastableAs166',
   'CastableAs167',
   'CastableAs168',
   'CastableAs169',
   'CastableAs170',
   'CastableAs171',
   'CastableAs172',
   'CastableAs173',
   'CastableAs174',
   'CastableAs175',
   'CastableAs176',
   'CastableAs177',
   'CastableAs178',
   'CastableAs179',
   'CastableAs180',
   'CastableAs181',
   'CastableAs182',
   'CastableAs183',
   'CastableAs184',
   'CastableAs185',
   'CastableAs186',
   'CastableAs187',
   'CastableAs188',
   'CastableAs189',
   'CastableAs190',
   'CastableAs191',
   'CastableAs192',
   'CastableAs193',
   'CastableAs194',
   'CastableAs195',
   'CastableAs196',
   'CastableAs197',
   'CastableAs198',
   'CastableAs199',
   'CastableAs200',
   'CastableAs201',
   'CastableAs202',
   'CastableAs203',
   'CastableAs204',
   'CastableAs205',
   'CastableAs206',
   'CastableAs207',
   'CastableAs208',
   'CastableAs209',
   'CastableAs210',
   'CastableAs211',
   'CastableAs212',
   'CastableAs213',
   'CastableAs214',
   'CastableAs215',
   'CastableAs216',
   'CastableAs217',
   'CastableAs218',
   'CastableAs219',
   'CastableAs220',
   'CastableAs221',
   'CastableAs222',
   'CastableAs223',
   'CastableAs224',
   'CastableAs225',
   'CastableAs226',
   'CastableAs227',
   'CastableAs228',
   'CastableAs229',
   'CastableAs230',
   'CastableAs231',
   'CastableAs232',
   'CastableAs233',
   'CastableAs234',
   'CastableAs235',
   'CastableAs236',
   'CastableAs237',
   'CastableAs238',
   'CastableAs239',
   'CastableAs240',
   'CastableAs241',
   'CastableAs242',
   'CastableAs243',
   'CastableAs244',
   'CastableAs245',
   'CastableAs246',
   'CastableAs247',
   'CastableAs248',
   'CastableAs249',
   'CastableAs250',
   'CastableAs251',
   'CastableAs252',
   'CastableAs253',
   'CastableAs254',
   'CastableAs255',
   'CastableAs256',
   'CastableAs257',
   'CastableAs258',
   'CastableAs259',
   'CastableAs260',
   'CastableAs261',
   'CastableAs262',
   'CastableAs263',
   'CastableAs264',
   'CastableAs265',
   'CastableAs266',
   'CastableAs267',
   'CastableAs268',
   'CastableAs269',
   'CastableAs270',
   'CastableAs271',
   'CastableAs272',
   'CastableAs273',
   'CastableAs274',
   'CastableAs275',
   'CastableAs276',
   'CastableAs277',
   'CastableAs278',
   'CastableAs279',
   'CastableAs280',
   'CastableAs281',
   'CastableAs282',
   'CastableAs283',
   'CastableAs284',
   'CastableAs285',
   'CastableAs286',
   'CastableAs287',
   'CastableAs288',
   'CastableAs289',
   'CastableAs290',
   'CastableAs291',
   'CastableAs292',
   'CastableAs293',
   'CastableAs294',
   'CastableAs295',
   'CastableAs296',
   'CastableAs297',
   'CastableAs298',
   'CastableAs299',
   'CastableAs300',
   'CastableAs301',
   'CastableAs302',
   'CastableAs303',
   'CastableAs304',
   'CastableAs305',
   'CastableAs306',
   'CastableAs307',
   'CastableAs308',
   'CastableAs309',
   'CastableAs310',
   'CastableAs311',
   'CastableAs312',
   'CastableAs313',
   'CastableAs314',
   'CastableAs315',
   'CastableAs316',
   'CastableAs317',
   'CastableAs318',
   'CastableAs319',
   'CastableAs320',
   'CastableAs321',
   'CastableAs322',
   'CastableAs323',
   'CastableAs324',
   'CastableAs325',
   'CastableAs326',
   'CastableAs327',
   'CastableAs328',
   'CastableAs329',
   'CastableAs330',
   'CastableAs331',
   'CastableAs332',
   'CastableAs333',
   'CastableAs334',
   'CastableAs335',
   'CastableAs336',
   'CastableAs337',
   'CastableAs338',
   'CastableAs339',
   'CastableAs340',
   'CastableAs341',
   'CastableAs342',
   'CastableAs343',
   'CastableAs344',
   'CastableAs345',
   'CastableAs346',
   'CastableAs347',
   'CastableAs348',
   'CastableAs349',
   'CastableAs350',
   'CastableAs351',
   'CastableAs352',
   'CastableAs353',
   'CastableAs354',
   'CastableAs355',
   'CastableAs356',
   'CastableAs357',
   'CastableAs358',
   'CastableAs359',
   'CastableAs360',
   'CastableAs361',
   'CastableAs362',
   'CastableAs363',
   'CastableAs364',
   'CastableAs365',
   'CastableAs366',
   'CastableAs367',
   'CastableAs368',
   'CastableAs369',
   'CastableAs370',
   'CastableAs371',
   'CastableAs372',
   'CastableAs373',
   'CastableAs374',
   'CastableAs375',
   'CastableAs376',
   'CastableAs377',
   'CastableAs378',
   'CastableAs379',
   'CastableAs380',
   'CastableAs381',
   'CastableAs382',
   'CastableAs383',
   'CastableAs384',
   'CastableAs385',
   'CastableAs386',
   'CastableAs387',
   'CastableAs388',
   'CastableAs389',
   'CastableAs390',
   'CastableAs391',
   'CastableAs392',
   'CastableAs393',
   'CastableAs394',
   'CastableAs395',
   'CastableAs396',
   'CastableAs397',
   'CastableAs398',
   'CastableAs399',
   'CastableAs400',
   'CastableAs401',
   'CastableAs402',
   'CastableAs403',
   'CastableAs404',
   'CastableAs405',
   'CastableAs406',
   'CastableAs407',
   'CastableAs408',
   'CastableAs409',
   'CastableAs410',
   'CastableAs411',
   'CastableAs412',
   'CastableAs413',
   'CastableAs414',
   'CastableAs415',
   'CastableAs416',
   'CastableAs417',
   'CastableAs418',
   'CastableAs419',
   'CastableAs420',
   'CastableAs421',
   'CastableAs422',
   'CastableAs423',
   'CastableAs424',
   'CastableAs425',
   'CastableAs426',
   'CastableAs427',
   'CastableAs428',
   'CastableAs429',
   'CastableAs430',
   'CastableAs431',
   'CastableAs432',
   'CastableAs433',
   'CastableAs434',
   'CastableAs435',
   'CastableAs436',
   'CastableAs437',
   'CastableAs438',
   'CastableAs439',
   'CastableAs440',
   'CastableAs441',
   'CastableAs442',
   'CastableAs443',
   'CastableAs444',
   'CastableAs445',
   'CastableAs446',
   'CastableAs447',
   'CastableAs448',
   'CastableAs449',
   'CastableAs450',
   'CastableAs451',
   'CastableAs452',
   'CastableAs453',
   'CastableAs454',
   'CastableAs455',
   'CastableAs456',
   'CastableAs457',
   'CastableAs458',
   'CastableAs459',
   'CastableAs460',
   'CastableAs461',
   'CastableAs462',
   'CastableAs463',
   'CastableAs464',
   'CastableAs465',
   'CastableAs466',
   'CastableAs467',
   'CastableAs468',
   'CastableAs469',
   'CastableAs470',
   'CastableAs471',
   'CastableAs472',
   'CastableAs473',
   'CastableAs474',
   'CastableAs475',
   'CastableAs476',
   'CastableAs477',
   'CastableAs478',
   'CastableAs479',
   'CastableAs480',
   'CastableAs481',
   'CastableAs482',
   'CastableAs483',
   'CastableAs484',
   'CastableAs485',
   'CastableAs486',
   'CastableAs487',
   'CastableAs488',
   'CastableAs489',
   'CastableAs490',
   'CastableAs491',
   'CastableAs492',
   'CastableAs493',
   'CastableAs494',
   'CastableAs495',
   'CastableAs496',
   'CastableAs497',
   'CastableAs498',
   'CastableAs499',
   'CastableAs500',
   'CastableAs501',
   'CastableAs502',
   'CastableAs503',
   'CastableAs504',
   'CastableAs505',
   'CastableAs506',
   'CastableAs507',
   'CastableAs508',
   'CastableAs509',
   'CastableAs510',
   'CastableAs511',
   'CastableAs512',
   'CastableAs513',
   'CastableAs514',
   'CastableAs515',
   'CastableAs516',
   'CastableAs517',
   'CastableAs518',
   'CastableAs519',
   'CastableAs520',
   'CastableAs521',
   'CastableAs522',
   'CastableAs523',
   'CastableAs524',
   'CastableAs525',
   'CastableAs526',
   'CastableAs527',
   'CastableAs528',
   'CastableAs529',
   'CastableAs530',
   'CastableAs531',
   'CastableAs532',
   'CastableAs533',
   'CastableAs534',
   'CastableAs535',
   'CastableAs536',
   'CastableAs537',
   'CastableAs538',
   'CastableAs539',
   'CastableAs540',
   'CastableAs541',
   'CastableAs542',
   'CastableAs543',
   'CastableAs544',
   'CastableAs545',
   'CastableAs546',
   'CastableAs547',
   'CastableAs548',
   'CastableAs549',
   'CastableAs550',
   'CastableAs551',
   'CastableAs552',
   'CastableAs553',
   'CastableAs554',
   'CastableAs555',
   'CastableAs556',
   'CastableAs557',
   'CastableAs558',
   'CastableAs559',
   'CastableAs560',
   'CastableAs561',
   'CastableAs562',
   'CastableAs563',
   'CastableAs564',
   'CastableAs565',
   'CastableAs566',
   'CastableAs567',
   'CastableAs568',
   'CastableAs569',
   'CastableAs570',
   'CastableAs571',
   'CastableAs572',
   'CastableAs573',
   'CastableAs574',
   'CastableAs575',
   'CastableAs576',
   'CastableAs577',
   'CastableAs578',
   'CastableAs579',
   'CastableAs580',
   'CastableAs581',
   'CastableAs582',
   'CastableAs583',
   'CastableAs584',
   'CastableAs585',
   'CastableAs586',
   'CastableAs587',
   'CastableAs588',
   'CastableAs589',
   'CastableAs590',
   'CastableAs591',
   'CastableAs592',
   'CastableAs593',
   'CastableAs594',
   'CastableAs595',
   'CastableAs596',
   'CastableAs597',
   'CastableAs598',
   'CastableAs599',
   'CastableAs600',
   'CastableAs601',
   'CastableAs602',
   'CastableAs603',
   'CastableAs604',
   'CastableAs605',
   'CastableAs606',
   'CastableAs607',
   'CastableAs608',
   'CastableAs609',
   'CastableAs610',
   'CastableAs611',
   'CastableAs612',
   'CastableAs613',
   'CastableAs614',
   'CastableAs615',
   'CastableAs616',
   'CastableAs617',
   'CastableAs618',
   'CastableAs619',
   'CastableAs620',
   'CastableAs621',
   'CastableAs622',
   'CastableAs623',
   'CastableAs624',
   'CastableAs625',
   'CastableAs626',
   'CastableAs627',
   'CastableAs628',
   'CastableAs629',
   'CastableAs630',
   'CastableAs631',
   'CastableAs632',
   'CastableAs633',
   'CastableAs634',
   'CastableAs635',
   'CastableAs636',
   'CastableAs637',
   'CastableAs638',
   'CastableAs639',
   'CastableAs640',
   'CastableAs641',
   'CastableAs642',
   'CastableAs643',
   'CastableAs644',
   'CastableAs645',
   'CastableAs646',
   'CastableAs647',
   'CastableAs648',
   'CastableAs648a',
   'CastableAs649',
   'CastableAs650',
   'CastableAs651',
   'CastableAs652',
   'CastableAs653',
   'CastableAs654',
   'CastableAs655',
   'CastableAs656',
   'CastableAs657',
   'CastableAs658',
   'CastableAs659',
   'CastableAs660',
   'CastableAs661',
   'CastableAs662',
   'K-SeqExprCastable-1',
   'K-SeqExprCastable-2',
   'K-SeqExprCastable-3',
   'K-SeqExprCastable-4',
   'K-SeqExprCastable-4a',
   'K-SeqExprCastable-5',
   'K-SeqExprCastable-5a',
   'K-SeqExprCastable-6',
   'K-SeqExprCastable-6a',
   'K-SeqExprCastable-7',
   'K-SeqExprCastable-8',
   'K-SeqExprCastable-9',
   'K-SeqExprCastable-10',
   'K-SeqExprCastable-11',
   'K-SeqExprCastable-12',
   'K-SeqExprCastable-12a',
   'K-SeqExprCastable-13',
   'K-SeqExprCastable-13a',
   'K-SeqExprCastable-14',
   'K-SeqExprCastable-15',
   'K-SeqExprCastable-16',
   'K-SeqExprCastable-17',
   'K-SeqExprCastable-18',
   'K-SeqExprCastable-19',
   'K-SeqExprCastable-20',
   'K-SeqExprCastable-21',
   'K-SeqExprCastable-22',
   'K-SeqExprCastable-23',
   'K-SeqExprCastable-24',
   'K-SeqExprCastable-25',
   'K-SeqExprCastable-26',
   'K-SeqExprCastable-27',
   'K-SeqExprCastable-28',
   'K-SeqExprCastable-29',
   'K-SeqExprCastable-30',
   'K-SeqExprCastable-31',
   'K-SeqExprCastable-32',
   'K-SeqExprCastable-33',
   'K-SeqExprCastable-34',
   'K-SeqExprCastable-35',
   'K-SeqExprCastable-36',
   'K-SeqExprCastable-37',
   'K-SeqExprCastable-38',
   'K2-SeqExprCastable-1',
   'K2-SeqExprCastable-2',
   'K2-SeqExprCastable-3',
   'K2-SeqExprCastable-4',
   'K2-SeqExprCastable-5',
   'K2-SeqExprCastable-6',
   'K2-SeqExprCastable-7',
   'K2-SeqExprCastable-8',
   'Castable-UnionType-1',
   'Castable-UnionType-2',
   'Castable-UnionType-3',
   'Castable-UnionType-4',
   'Castable-UnionType-5',
   'Castable-UnionType-6',
   'Castable-UnionType-7',
   'Castable-UnionType-8',
   'Castable-UnionType-9',
   'Castable-UnionType-10',
   'Castable-UnionType-11',
   'Castable-UnionType-12',
   'Castable-UnionType-13',
   'Castable-UnionType-14',
   'Castable-UnionType-15',
   'Castable-UnionType-16',
   'Castable-UnionType-17',
   'Castable-UnionType-18',
   'Castable-UnionType-19',
   'Castable-UnionType-20',
   'Castable-UnionType-21',
   'Castable-UnionType-22',
   'Castable-UnionType-23',
   'Castable-UnionType-24',
   'Castable-UnionType-25',
   'Castable-UnionType-26',
   'Castable-UnionType-36',
   'Castable-UnionType-37',
   'Castable-UnionType-38',
   'Castable-ListType-2',
   'Castable-ListType-3',
   'Castable-ListType-4',
   'Castable-ListType-5',
   'Castable-ListType-6',
   'Castable-ListType-7',
   'Castable-ListType-8',
   'Castable-ListType-9',
   'Castable-ListType-10',
   'Castable-ListType-11',
   'Castable-ListType-12',
   'Castable-ListType-13',
   'Castable-ListType-14',
   'Castable-ListType-15',
   'Castable-ListType-16',
   'Castable-ListType-17',
   'Castable-ListType-18',
   'Castable-ListType-19',
   'cbcl-castable-byte-001',
   'cbcl-castable-byte-002',
   'cbcl-castable-byte-003',
   'cbcl-castable-byte-004',
   'cbcl-castable-date-001',
   'cbcl-castable-date-002',
   'cbcl-castable-dateTime-001',
   'cbcl-castable-dateTime-002',
   'cbcl-castable-dayTimeDuration-001',
   'cbcl-castable-dayTimeDuration-002',
   'cbcl-castable-decimal-001',
   'cbcl-castable-decimal-002',
   'cbcl-castable-decimal-003',
   'cbcl-castable-decimal-004',
   'cbcl-castable-decimal-005',
   'cbcl-castable-decimal-006',
   'cbcl-castable-decimal-007',
   'cbcl-castable-decimal-008',
   'cbcl-castable-decimal-009',
   'cbcl-castable-decimal-010',
   'cbcl-castable-duration-001',
   'cbcl-castable-duration-002',
   'cbcl-castable-int-001',
   'cbcl-castable-int-002',
   'cbcl-castable-int-003',
   'cbcl-castable-int-004',
   'cbcl-castable-integer-001',
   'cbcl-castable-integer-002',
   'cbcl-castable-integer-003',
   'cbcl-castable-integer-004',
   'cbcl-castable-language-001',
   'cbcl-castable-language-002',
   'cbcl-castable-language-003',
   'cbcl-castable-language-004',
   'cbcl-castable-long-001',
   'cbcl-castable-long-002',
   'cbcl-castable-long-003',
   'cbcl-castable-long-004',
   'cbcl-castable-name-001',
   'cbcl-castable-name-002',
   'cbcl-castable-name-003',
   'cbcl-castable-name-004',
   'cbcl-castable-ncname-001',
   'cbcl-castable-ncname-002',
   'cbcl-castable-ncname-003',
   'cbcl-castable-ncname-004',
   'cbcl-castable-negativeInteger-001',
   'cbcl-castable-negativeInteger-002',
   'cbcl-castable-nmtoken-001',
   'cbcl-castable-nmtoken-002',
   'cbcl-castable-nmtoken-002b',
   'cbcl-castable-nonNegativeInteger-001',
   'cbcl-castable-nonNegativeInteger-002',
   'cbcl-castable-nonPositiveInteger-001',
   'cbcl-castable-nonPositiveInteger-002',
   'cbcl-castable-positiveInteger-001',
   'cbcl-castable-positiveInteger-002',
   'cbcl-castable-short-001',
   'cbcl-castable-short-002',
   'cbcl-castable-short-003',
   'cbcl-castable-short-004',
   'cbcl-castable-unsignedByte-001',
   'cbcl-castable-unsignedByte-002',
   'cbcl-castable-unsignedByte-003',
   'cbcl-castable-unsignedByte-004',
   'cbcl-castable-unsignedInt-001',
   'cbcl-castable-unsignedInt-002',
   'cbcl-castable-unsignedInt-003',
   'cbcl-castable-unsignedInt-004',
   'cbcl-castable-unsignedLong-001',
   'cbcl-castable-unsignedLong-002',
   'cbcl-castable-unsignedLong-003',
   'cbcl-castable-unsignedLong-004',
   'cbcl-castable-unsignedShort-001',
   'cbcl-castable-unsignedShort-002',
   'cbcl-castable-unsignedShort-003',
   'cbcl-castable-unsignedShort-004',
   'cbcl-castable-yearMonthDuration-001',
   'cbcl-castable-yearMonthDuration-002',
   'cbcl-castable-nonNegativeInteger-003',
   'cbcl-castable-nonPositiveInteger-003',
   'cbcl-castable-unsignedByte-005',
   'cbcl-castable-unsignedInt-005',
   'cbcl-castable-unsignedLong-005',
   'cbcl-castable-unsignedShort-005',
   'cbcl-castable-gYear-001',
   'cbcl-castable-gYearMonth-001',
   'cbcl-castable-gYearMonth-002',
   'cbcl-castable-gYear-002',
   'cbcl-castable-gYear-003',
   'cbcl-castable-gYearMonth-003',
   'cbcl-castable-gYearMonth-004',
   'cbcl-castable-ENTITIES-001',
   'cbcl-castable-ENTITIES-002',
   'cbcl-castable-ENTITIES-003',
   'cbcl-castable-ENTITIES-004',
   'cbcl-castable-ENTITIES-005',
   'cbcl-castable-ENTITIES-006',
   'cbcl-castable-ENTITIES-007',
   'cbcl-castable-ENTITIES-008',
   'cbcl-castable-ENTITIES-009',
   'cbcl-castable-ENTITIES-010',
   'cbcl-castable-ENTITIES-011',
   'cbcl-castable-ENTITIES-012',
   'cbcl-castable-ENTITIES-013',
   'cbcl-castable-ENTITIES-014',
   'cbcl-castable-ENTITIES-015',
   'cbcl-castable-ENTITIES-016',
   'cbcl-castable-ENTITIES-017',
   'cbcl-castable-ENTITIES-018',
   'cbcl-castable-ENTITIES-019',
   'cbcl-castable-ENTITIES-020',
   'cbcl-castable-NMTOKENS-001',
   'cbcl-castable-NMTOKENS-002',
   'cbcl-castable-NMTOKENS-003',
   'cbcl-castable-NMTOKENS-004',
   'cbcl-castable-NMTOKENS-005',
   'cbcl-castable-NMTOKENS-006',
   'cbcl-castable-NMTOKENS-007',
   'cbcl-castable-NMTOKENS-008',
   'cbcl-castable-NMTOKENS-009',
   'cbcl-castable-NMTOKENS-010',
   'cbcl-castable-NMTOKENS-011',
   'cbcl-castable-NMTOKENS-012',
   'cbcl-castable-NMTOKENS-013',
   'cbcl-castable-NMTOKENS-014',
   'cbcl-castable-NMTOKENS-015',
   'cbcl-castable-NMTOKENS-016',
   'cbcl-castable-NMTOKENS-017',
   'cbcl-castable-NMTOKENS-018',
   'cbcl-castable-NMTOKENS-019',
   'cbcl-castable-NMTOKENS-020',
   'cbcl-castable-IDREFS-001',
   'cbcl-castable-IDREFS-002',
   'cbcl-castable-IDREFS-003',
   'cbcl-castable-IDREFS-004',
   'cbcl-castable-IDREFS-005',
   'cbcl-castable-IDREFS-006',
   'cbcl-castable-IDREFS-007',
   'cbcl-castable-IDREFS-008',
   'cbcl-castable-IDREFS-009',
   'cbcl-castable-IDREFS-010',
   'cbcl-castable-IDREFS-011',
   'cbcl-castable-IDREFS-012',
   'cbcl-castable-IDREFS-013',
   'cbcl-castable-IDREFS-014',
   'cbcl-castable-IDREFS-015',
   'cbcl-castable-IDREFS-016',
   'cbcl-castable-IDREFS-017',
   'cbcl-castable-IDREFS-018',
   'cbcl-castable-IDREFS-019',
   'cbcl-castable-IDREFS-020',
   'cbcl-castable-impure-001',
   'cbcl-castable-impure-002',
   'cbcl-castable-impure-003',
   'cbcl-castable-impure-004',
   'cbcl-castable-impure-005',
   'cbcl-castable-impure-006',
   'cbcl-castable-impure-007',
   'cbcl-castable-impure-008',
   'cbcl-castable-impure-009',
   'cbcl-castable-impure-010',
   'cbcl-castable-impure-011',
   'cbcl-castable-impure-012',
   'cbcl-castable-impure-013',
   'cbcl-castable-impure-014',
   'cbcl-castable-impure-015',
   'cbcl-castable-impure-016',
   'cbcl-castable-impure-017',
   'cbcl-castable-impure-018',
   'cbcl-castable-impure-019',
   'cbcl-castable-impure-020',
   'cbcl-castable-restricted-union-001',
   'cbcl-castable-restricted-union-002',
   'cbcl-castable-restricted-union-003',
   'cbcl-castable-restricted-union-004',
   'cbcl-castable-restricted-union-005',
   'cbcl-castable-restricted-union-006',
   'cbcl-castable-restricted-union-007',
   'cbcl-castable-restricted-union-008',
   'cbcl-castable-restricted-union-009',
   'cbcl-castable-restricted-union-010',
   'cbcl-castable-restricted-union-011',
   'cbcl-castable-restricted-union-012',
   'cbcl-castable-restricted-union-013',
   'cbcl-castable-restricted-union-014',
   'cbcl-castable-restricted-union-015',
   'cbcl-castable-restricted-union-016',
   'cbcl-castable-restricted-union-017',
   'cbcl-castable-restricted-union-018',
   'cbcl-castable-restricted-union-019',
   'cbcl-castable-restricted-union-020'].
environment('empty') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('atomic') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{resources, []},
{modules, []}
];
environment('atomic-xq') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-mod') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/works-mod.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/works.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('staff') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/staff.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-and-staff') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/works.xml","$works",""},
{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/staff.xml","$staff",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('auction') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/auction.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.example.com/AuctionWatch","ma"},
{"http://www.w3.org/1999/xlink","xlink"},
{"http://www.example.com/auctioneers#anyzone","anyzone"},
{"http://www.example.com/auctioneers#eachbay","eachbay"},
{"http://www.example.com/auctioneers#yabadoo","yabadoo"},
{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('qname') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/QName-source.xml",".",""}]},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/QName-schema.xsd","http://www.example.com/QNameXSD"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.example.com/QNameXSD",""}]},
{resources, []},
{modules, []}
];
environment('math') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/math","math"}]},
{resources, []},
{modules, []}
];
environment('array') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"}]},
{resources, []},
{modules, []}
];
environment('map') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('array-and-map') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"},
{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('union-List-defined-Types') ->
[{sources, []},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/prod/SchemaImport/unionListDefined.xsd","http://www.w3.org/XQueryTest/unionListDefined"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('acme_corp') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/op/union/acme_corp.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('derived') ->
[{sources, []},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/prod/CastExpr/derived.xsd","http://www.w3.org/XQueryTest/derivedTypes"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'CastableAs001'(_Config) ->
   Qry = "xs:untypedAtomic(\"INF\") castable as xs:untypedAtomic",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs002'(_Config) ->
   Qry = "xs:untypedAtomic(\"0.0E0\") castable as xs:untypedAtomic",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs003'(_Config) ->
   Qry = "xs:untypedAtomic(\"true\") castable as xs:untypedAtomic",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs004'(_Config) ->
   Qry = "xs:untypedAtomic(\"INF\") castable as xs:string",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs005'(_Config) ->
   Qry = "xs:untypedAtomic(\"0.0E0\") castable as xs:string",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs006'(_Config) ->
   Qry = "xs:untypedAtomic(\"true\") castable as xs:string",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs007'(_Config) ->
   Qry = "xs:untypedAtomic(\"-0.0E0\") castable as xs:float",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs008'(_Config) ->
   Qry = "xs:untypedAtomic(\"NaN\") castable as xs:float",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs009'(_Config) ->
   Qry = "xs:untypedAtomic(\"1e-5\") castable as xs:float",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs010'(_Config) ->
   Qry = "xs:untypedAtomic(\"-10000000\") castable as xs:float",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs011'(_Config) ->
   Qry = "xs:untypedAtomic(\"true\") castable as xs:float",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs012'(_Config) ->
   Qry = "xs:untypedAtomic(\"-0.0E0\") castable as xs:double",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs013'(_Config) ->
   Qry = "xs:untypedAtomic(\"NaN\") castable as xs:double",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs014'(_Config) ->
   Qry = "xs:untypedAtomic(\"1e-5\") castable as xs:double",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs015'(_Config) ->
   Qry = "xs:untypedAtomic(\"-10000000\") castable as xs:double",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs016'(_Config) ->
   Qry = "xs:untypedAtomic(\"true\") castable as xs:double",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs017'(_Config) ->
   Qry = "xs:untypedAtomic(\"-0.0E0\") castable as xs:decimal",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs018'(_Config) ->
   Qry = "xs:untypedAtomic(\"NaN\") castable as xs:decimal",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs019'(_Config) ->
   Qry = "xs:untypedAtomic(\"1e-5\") castable as xs:decimal",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs020'(_Config) ->
   Qry = "xs:untypedAtomic(\"5.5432\") castable as xs:decimal",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs021'(_Config) ->
   Qry = "xs:untypedAtomic(\"true\") castable as xs:decimal",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs022'(_Config) ->
   Qry = "xs:untypedAtomic(\"-0.0E0\") castable as xs:integer",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs023'(_Config) ->
   Qry = "xs:untypedAtomic(\"NaN\") castable as xs:integer",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs024'(_Config) ->
   Qry = "xs:untypedAtomic(\"1e-5\") castable as xs:integer",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs025'(_Config) ->
   Qry = "xs:untypedAtomic(\"-1.1234\") castable as xs:integer",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs026'(_Config) ->
   Qry = "xs:untypedAtomic(\"true\") castable as xs:integer",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs027'(_Config) ->
   Qry = "xs:untypedAtomic(\"P1Y2M3DT10H30M23S\") castable as xs:duration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs028'(_Config) ->
   Qry = "xs:untypedAtomic(\"-P1Y1M1DT1H1M1.123S\") castable as xs:duration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs029'(_Config) ->
   Qry = "xs:untypedAtomic(\"true\") castable as xs:duration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs030'(_Config) ->
   Qry = "xs:untypedAtomic(\"-P1Y1M1DT1H1M1.123S\") castable as xs:yearMonthDuration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs031'(_Config) ->
   Qry = "xs:untypedAtomic(\"P24M\") castable as xs:yearMonthDuration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs032'(_Config) ->
   Qry = "xs:untypedAtomic(\"-P21M\") castable as xs:yearMonthDuration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs033'(_Config) ->
   Qry = "xs:untypedAtomic(\"true\") castable as xs:yearMonthDuration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs034'(_Config) ->
   Qry = "xs:untypedAtomic(\"-P1Y1M1DT1H1M1.123S\") castable as xs:dayTimeDuration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs035'(_Config) ->
   Qry = "xs:untypedAtomic(\"P3DT10H30M\") castable as xs:dayTimeDuration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs036'(_Config) ->
   Qry = "xs:untypedAtomic(\"-PT100M\") castable as xs:dayTimeDuration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs037'(_Config) ->
   Qry = "xs:untypedAtomic(\"true\") castable as xs:dayTimeDuration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs038'(_Config) ->
   Qry = "xs:untypedAtomic(\"1999-05-31T13:20:00\") castable as xs:dateTime",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs039'(_Config) ->
   Qry = "xs:untypedAtomic(\"-1999-05-31T13:20:00+14:00\") castable as xs:dateTime",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs040'(_Config) ->
   Qry = "xs:untypedAtomic(\"2000-01-16T00:00:00Z\") castable as xs:dateTime",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs041'(_Config) ->
   Qry = "xs:untypedAtomic(\"true\") castable as xs:dateTime",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs042'(_Config) ->
   Qry = "xs:untypedAtomic(\"13:20:00-05:00\") castable as xs:time",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs043'(_Config) ->
   Qry = "xs:untypedAtomic(\"13:20:02.123\") castable as xs:time",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs044'(_Config) ->
   Qry = "xs:untypedAtomic(\"13:20:00Z\") castable as xs:time",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs045'(_Config) ->
   Qry = "xs:untypedAtomic(\"true\") castable as xs:time",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs046'(_Config) ->
   Qry = "xs:untypedAtomic(\"1999-05-31\") castable as xs:date",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs047'(_Config) ->
   Qry = "xs:untypedAtomic(\"-0012-12-03-05:00\") castable as xs:date",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs048'(_Config) ->
   Qry = "xs:untypedAtomic(\"1999-05-31Z\") castable as xs:date",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs049'(_Config) ->
   Qry = "xs:untypedAtomic(\"true\") castable as xs:date",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs050'(_Config) ->
   Qry = "xs:untypedAtomic(\"1999-05\") castable as xs:gYearMonth",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs051'(_Config) ->
   Qry = "xs:untypedAtomic(\"-0012-12-05:00\") castable as xs:gYearMonth",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs052'(_Config) ->
   Qry = "xs:untypedAtomic(\"1999-05Z\") castable as xs:gYearMonth",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs053'(_Config) ->
   Qry = "xs:untypedAtomic(\"true\") castable as xs:gYearMonth",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs054'(_Config) ->
   Qry = "xs:untypedAtomic(\"1999\") castable as xs:gYear",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs055'(_Config) ->
   Qry = "xs:untypedAtomic(\"-0012-05:00\") castable as xs:gYear",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs056'(_Config) ->
   Qry = "xs:untypedAtomic(\"1999Z\") castable as xs:gYear",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs057'(_Config) ->
   Qry = "xs:untypedAtomic(\"true\") castable as xs:gYear",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs058'(_Config) ->
   Qry = "xs:untypedAtomic(\"--05-31\") castable as xs:gMonthDay",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs059'(_Config) ->
   Qry = "xs:untypedAtomic(\"--05-31+14:00\") castable as xs:gMonthDay",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs060'(_Config) ->
   Qry = "xs:untypedAtomic(\"--05-31Z\") castable as xs:gMonthDay",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs061'(_Config) ->
   Qry = "xs:untypedAtomic(\"true\") castable as xs:gMonthDay",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs062'(_Config) ->
   Qry = "xs:untypedAtomic(\"---31\") castable as xs:gDay",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs063'(_Config) ->
   Qry = "xs:untypedAtomic(\"---03-05:00\") castable as xs:gDay",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs064'(_Config) ->
   Qry = "xs:untypedAtomic(\"---31Z\") castable as xs:gDay",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs065'(_Config) ->
   Qry = "xs:untypedAtomic(\"true\") castable as xs:gDay",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs066'(_Config) ->
   Qry = "xs:untypedAtomic(\"--05\") castable as xs:gMonth",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs067'(_Config) ->
   Qry = "xs:untypedAtomic(\"--12-05:00\") castable as xs:gMonth",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs068'(_Config) ->
   Qry = "xs:untypedAtomic(\"--05Z\") castable as xs:gMonth",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs069'(_Config) ->
   Qry = "xs:untypedAtomic(\"true\") castable as xs:gMonth",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs070'(_Config) ->
   Qry = "xs:untypedAtomic(\"0.0\") castable as xs:boolean",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs071'(_Config) ->
   Qry = "xs:untypedAtomic(\"0\") castable as xs:boolean",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs072'(_Config) ->
   Qry = "xs:untypedAtomic(\"true\") castable as xs:boolean",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs073'(_Config) ->
   Qry = "xs:untypedAtomic(\"true\") castable as xs:base64Binary",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs074'(_Config) ->
   Qry = "xs:untypedAtomic(\"00000000\") castable as xs:base64Binary",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs075'(_Config) ->
   Qry = "xs:untypedAtomic(\"D74D35D35D35\") castable as xs:base64Binary",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs076'(_Config) ->
   Qry = "xs:untypedAtomic(\"true\") castable as xs:hexBinary",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs077'(_Config) ->
   Qry = "xs:untypedAtomic(\"010010101\") castable as xs:hexBinary",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs078'(_Config) ->
   Qry = "xs:untypedAtomic(\"0fb7\") castable as xs:hexBinary",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs079'(_Config) ->
   Qry = "xs:untypedAtomic(\"D74D35D35D35\") castable as xs:hexBinary",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs080'(_Config) ->
   Qry = "xs:untypedAtomic(\"http://www.example.com/~b%C3%A9b%C3%A9\") castable as xs:anyURI",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs081'(_Config) ->
   Qry = "xs:untypedAtomic(\"true\") castable as xs:anyURI",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs082'(_Config) ->
   Qry = "xs:untypedAtomic(\"http://www.ietf.org/rfc/rfc2396.txt\") castable as xs:anyURI",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs083'(_Config) ->
   Qry = "xs:string(\"INF\") castable as xs:untypedAtomic",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs084'(_Config) ->
   Qry = "xs:string(\"0.0E0\") castable as xs:untypedAtomic",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs085'(_Config) ->
   Qry = "xs:string(\"true\") castable as xs:untypedAtomic",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs086'(_Config) ->
   Qry = "xs:string(\"INF\") castable as xs:string",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs087'(_Config) ->
   Qry = "xs:string(\"0.0E0\") castable as xs:string",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs088'(_Config) ->
   Qry = "xs:string(\"true\") castable as xs:string",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs089'(_Config) ->
   Qry = "xs:string(\"-0.0E0\") castable as xs:float",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs090'(_Config) ->
   Qry = "xs:string(\"NaN\") castable as xs:float",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs091'(_Config) ->
   Qry = "xs:string(\"1e-5\") castable as xs:float",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs092'(_Config) ->
   Qry = "xs:string(\"-10000000\") castable as xs:float",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs093'(_Config) ->
   Qry = "xs:string(\"true\") castable as xs:float",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs094'(_Config) ->
   Qry = "xs:string(\"-0.0E0\") castable as xs:double",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs095'(_Config) ->
   Qry = "xs:string(\"NaN\") castable as xs:double",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs096'(_Config) ->
   Qry = "xs:string(\"1e-5\") castable as xs:double",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs097'(_Config) ->
   Qry = "xs:string(\"-10000000\") castable as xs:double",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs098'(_Config) ->
   Qry = "xs:string(\"true\") castable as xs:double",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs099'(_Config) ->
   Qry = "xs:string(\"-0.0E0\") castable as xs:decimal",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs100'(_Config) ->
   Qry = "xs:string(\"NaN\") castable as xs:decimal",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs101'(_Config) ->
   Qry = "xs:string(\"1e-5\") castable as xs:decimal",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs102'(_Config) ->
   Qry = "xs:string(\"5.5432\") castable as xs:decimal",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs103'(_Config) ->
   Qry = "xs:string(\"true\") castable as xs:decimal",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs104'(_Config) ->
   Qry = "xs:string(\"-0.0E0\") castable as xs:integer",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs105'(_Config) ->
   Qry = "xs:string(\"NaN\") castable as xs:integer",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs106'(_Config) ->
   Qry = "xs:string(\"1e-5\") castable as xs:integer",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs107'(_Config) ->
   Qry = "xs:string(\"-1.1234\") castable as xs:integer",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs108'(_Config) ->
   Qry = "xs:string(\"true\") castable as xs:integer",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs109'(_Config) ->
   Qry = "xs:string(\"P1Y2M3DT10H30M23S\") castable as xs:duration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs110'(_Config) ->
   Qry = "xs:string(\"-P1Y1M1DT1H1M1.123S\") castable as xs:duration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs111'(_Config) ->
   Qry = "xs:string(\"true\") castable as xs:duration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs112'(_Config) ->
   Qry = "xs:string(\"-P1Y1M1DT1H1M1.123S\") castable as xs:yearMonthDuration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs113'(_Config) ->
   Qry = "xs:string(\"P24M\") castable as xs:yearMonthDuration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs114'(_Config) ->
   Qry = "xs:string(\"-P21M\") castable as xs:yearMonthDuration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs115'(_Config) ->
   Qry = "xs:string(\"true\") castable as xs:yearMonthDuration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs116'(_Config) ->
   Qry = "xs:string(\"-P1Y1M1DT1H1M1.123S\") castable as xs:dayTimeDuration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs117'(_Config) ->
   Qry = "xs:string(\"P3DT10H30M\") castable as xs:dayTimeDuration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs118'(_Config) ->
   Qry = "xs:string(\"-PT100M\") castable as xs:dayTimeDuration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs119'(_Config) ->
   Qry = "xs:string(\"true\") castable as xs:dayTimeDuration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs120'(_Config) ->
   Qry = "xs:string(\"1999-05-31T13:20:00\") castable as xs:dateTime",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs121'(_Config) ->
   Qry = "xs:string(\"-1999-05-31T13:20:00+14:00\") castable as xs:dateTime",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs122'(_Config) ->
   Qry = "xs:string(\"2000-01-16T00:00:00Z\") castable as xs:dateTime",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs123'(_Config) ->
   Qry = "xs:string(\"true\") castable as xs:dateTime",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs124'(_Config) ->
   Qry = "xs:string(\"13:20:00-05:00\") castable as xs:time",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs125'(_Config) ->
   Qry = "xs:string(\"13:20:02.123\") castable as xs:time",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs126'(_Config) ->
   Qry = "xs:string(\"13:20:00Z\") castable as xs:time",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs127'(_Config) ->
   Qry = "xs:string(\"true\") castable as xs:time",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs128'(_Config) ->
   Qry = "xs:string(\"1999-05-31\") castable as xs:date",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs129'(_Config) ->
   Qry = "xs:string(\"-0012-12-03-05:00\") castable as xs:date",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs130'(_Config) ->
   Qry = "xs:string(\"1999-05-31Z\") castable as xs:date",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs131'(_Config) ->
   Qry = "xs:string(\"true\") castable as xs:date",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs132'(_Config) ->
   Qry = "xs:string(\"1999-05\") castable as xs:gYearMonth",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs133'(_Config) ->
   Qry = "xs:string(\"-0012-12-05:00\") castable as xs:gYearMonth",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs134'(_Config) ->
   Qry = "xs:string(\"1999-05Z\") castable as xs:gYearMonth",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs135'(_Config) ->
   Qry = "xs:string(\"true\") castable as xs:gYearMonth",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs136'(_Config) ->
   Qry = "xs:string(\"1999\") castable as xs:gYear",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs137'(_Config) ->
   Qry = "xs:string(\"-0012-05:00\") castable as xs:gYear",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs138'(_Config) ->
   Qry = "xs:string(\"1999Z\") castable as xs:gYear",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs139'(_Config) ->
   Qry = "xs:string(\"true\") castable as xs:gYear",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs140'(_Config) ->
   Qry = "xs:string(\"--05-31\") castable as xs:gMonthDay",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs141'(_Config) ->
   Qry = "xs:string(\"--05-31+14:00\") castable as xs:gMonthDay",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs142'(_Config) ->
   Qry = "xs:string(\"--05-31Z\") castable as xs:gMonthDay",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs143'(_Config) ->
   Qry = "xs:string(\"true\") castable as xs:gMonthDay",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs144'(_Config) ->
   Qry = "xs:string(\"---31\") castable as xs:gDay",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs145'(_Config) ->
   Qry = "xs:string(\"---03-05:00\") castable as xs:gDay",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs146'(_Config) ->
   Qry = "xs:string(\"---31Z\") castable as xs:gDay",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs147'(_Config) ->
   Qry = "xs:string(\"true\") castable as xs:gDay",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs148'(_Config) ->
   Qry = "xs:string(\"--05\") castable as xs:gMonth",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs149'(_Config) ->
   Qry = "xs:string(\"--12-05:00\") castable as xs:gMonth",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs150'(_Config) ->
   Qry = "xs:string(\"--05Z\") castable as xs:gMonth",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs151'(_Config) ->
   Qry = "xs:string(\"true\") castable as xs:gMonth",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs152'(_Config) ->
   Qry = "xs:string(\"0.0\") castable as xs:boolean",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs153'(_Config) ->
   Qry = "xs:string(\"0\") castable as xs:boolean",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs154'(_Config) ->
   Qry = "xs:string(\"true\") castable as xs:boolean",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs155'(_Config) ->
   Qry = "xs:string(\"true\") castable as xs:base64Binary",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs156'(_Config) ->
   Qry = "xs:string(\"00000000\") castable as xs:base64Binary",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs157'(_Config) ->
   Qry = "xs:string(\"D74D35D35D35\") castable as xs:base64Binary",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs158'(_Config) ->
   Qry = "xs:string(\"true\") castable as xs:hexBinary",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs159'(_Config) ->
   Qry = "xs:string(\"010010101\") castable as xs:hexBinary",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs160'(_Config) ->
   Qry = "xs:string(\"0fb7\") castable as xs:hexBinary",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs161'(_Config) ->
   Qry = "xs:string(\"D74D35D35D35\") castable as xs:hexBinary",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs162'(_Config) ->
   Qry = "xs:string(\"http://www.example.com/~b%C3%A9b%C3%A9\") castable as xs:anyURI",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs163'(_Config) ->
   Qry = "xs:string(\"true\") castable as xs:anyURI",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs164'(_Config) ->
   Qry = "xs:string(\"http://www.ietf.org/rfc/rfc2396.txt\") castable as xs:anyURI",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs165'(_Config) ->
   Qry = "xs:float(\"1e5\") castable as xs:untypedAtomic",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs166'(_Config) ->
   Qry = "xs:float(\"-INF\") castable as xs:untypedAtomic",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs167'(_Config) ->
   Qry = "xs:float(\"-0.0E0\") castable as xs:string",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs168'(_Config) ->
   Qry = "xs:float(\"NaN\") castable as xs:string",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs169'(_Config) ->
   Qry = "xs:float(\"5.4321E-100\") castable as xs:float",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs170'(_Config) ->
   Qry = "xs:float(\"-1.75e-3\") castable as xs:float",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs171'(_Config) ->
   Qry = "xs:float(\"INF\") castable as xs:float",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs172'(_Config) ->
   Qry = "xs:float(\"-0.0E0\") castable as xs:double",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs173'(_Config) ->
   Qry = "xs:float(\"-INF\") castable as xs:double",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs174'(_Config) ->
   Qry = "xs:float(\"-0.0E0\") castable as xs:decimal",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs175'(_Config) ->
   Qry = "xs:float(\"5.4321E-100\") castable as xs:decimal",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs176'(_Config) ->
   Qry = "xs:float(\"1e5\") castable as xs:decimal",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs177'(_Config) ->
   Qry = "xs:float(\"-1.75e-3\") castable as xs:decimal",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs178'(_Config) ->
   Qry = "xs:float(\"-0.0E0\") castable as xs:integer",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs179'(_Config) ->
   Qry = "xs:float(\"1e5\") castable as xs:integer",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs180'(_Config) ->
   Qry = "xs:float(\"INF\") castable as xs:integer",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs181'(_Config) ->
   Qry = "xs:float(\"-1.75e-3\") castable as xs:duration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs182'(_Config) ->
   Qry = "xs:float(\"5.4321E-100\") castable as xs:yearMonthDuration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs183'(_Config) ->
   Qry = "xs:float(\"5.4321E-100\") castable as xs:dayTimeDuration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs184'(_Config) ->
   Qry = "xs:float(\"5.4321E-100\") castable as xs:dateTime",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs185'(_Config) ->
   Qry = "xs:float(\"5.4321E-100\") castable as xs:time",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs186'(_Config) ->
   Qry = "xs:float(\"5.4321E-100\") castable as xs:date",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs187'(_Config) ->
   Qry = "xs:float(\"5.4321E-100\") castable as xs:gYearMonth",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs188'(_Config) ->
   Qry = "xs:float(\"5.4321E-100\") castable as xs:gYear",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs189'(_Config) ->
   Qry = "xs:float(\"5.4321E-100\") castable as xs:gMonthDay",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs190'(_Config) ->
   Qry = "xs:float(\"5.4321E-100\") castable as xs:gDay",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs191'(_Config) ->
   Qry = "xs:float(\"5.4321E-100\") castable as xs:gMonth",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs192'(_Config) ->
   Qry = "xs:float(\"-0.0E0\") castable as xs:boolean",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs193'(_Config) ->
   Qry = "xs:float(\"1e5\") castable as xs:boolean",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs194'(_Config) ->
   Qry = "xs:float(\"-INF\") castable as xs:boolean",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs195'(_Config) ->
   Qry = "xs:float(\"NaN\") castable as xs:boolean",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs196'(_Config) ->
   Qry = "xs:float(\"5.4321E-100\") castable as xs:base64Binary",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs197'(_Config) ->
   Qry = "xs:float(\"5.4321E-100\") castable as xs:hexBinary",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs198'(_Config) ->
   Qry = "xs:float(\"5.4321E-100\") castable as xs:anyURI",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs199'(_Config) ->
   Qry = "xs:double(\"1e5\") castable as xs:untypedAtomic",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs200'(_Config) ->
   Qry = "xs:double(\"INF\") castable as xs:untypedAtomic",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs201'(_Config) ->
   Qry = "xs:double(\"1e8\") castable as xs:string",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs202'(_Config) ->
   Qry = "xs:double(\"INF\") castable as xs:string",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs203'(_Config) ->
   Qry = "xs:double(\"-0.0E0\") castable as xs:float",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs204'(_Config) ->
   Qry = "xs:double(\"5.4321E-1001\") castable as xs:float",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs205'(_Config) ->
   Qry = "xs:double(\"1e5\") castable as xs:float",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs206'(_Config) ->
   Qry = "xs:double(\"-1.75e-3\") castable as xs:float",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs207'(_Config) ->
   Qry = "xs:double(\"NaN\") castable as xs:float",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs208'(_Config) ->
   Qry = "xs:double(\"1e5\") castable as xs:double",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs209'(_Config) ->
   Qry = "xs:double(\"INF\") castable as xs:double",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs210'(_Config) ->
   Qry = "xs:double(\"-0.0E0\") castable as xs:decimal",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs211'(_Config) ->
   Qry = "xs:double(\"5.4321E-1001\") castable as xs:decimal",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs212'(_Config) ->
   Qry = "xs:double(\"-1.75e-3\") castable as xs:decimal",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs213'(_Config) ->
   Qry = "xs:double(\"INF\") castable as xs:decimal",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs214'(_Config) ->
   Qry = "xs:double(\"-0.0E0\") castable as xs:integer",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs215'(_Config) ->
   Qry = "xs:double(\"1e5\") castable as xs:integer",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs216'(_Config) ->
   Qry = "xs:double(\"-1.75e-3\") castable as xs:integer",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs217'(_Config) ->
   Qry = "xs:double(\"INF\") castable as xs:integer",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs218'(_Config) ->
   Qry = "xs:double(\"NaN\") castable as xs:integer",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs219'(_Config) ->
   Qry = "xs:double(\"1e5\") castable as xs:duration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs220'(_Config) ->
   Qry = "xs:double(\"1e5\") castable as xs:yearMonthDuration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs221'(_Config) ->
   Qry = "xs:double(\"1e5\") castable as xs:dayTimeDuration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs222'(_Config) ->
   Qry = "xs:double(\"1e5\") castable as xs:dateTime",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs223'(_Config) ->
   Qry = "xs:double(\"1e5\") castable as xs:time",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs224'(_Config) ->
   Qry = "xs:double(\"1e5\") castable as xs:date",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs225'(_Config) ->
   Qry = "xs:double(\"1e5\") castable as xs:gYearMonth",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs226'(_Config) ->
   Qry = "xs:double(\"1e5\") castable as xs:gYear",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs227'(_Config) ->
   Qry = "xs:double(\"1e5\") castable as xs:gMonthDay",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs228'(_Config) ->
   Qry = "xs:double(\"1e5\") castable as xs:gDay",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs229'(_Config) ->
   Qry = "xs:double(\"1e5\") castable as xs:gMonth",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs230'(_Config) ->
   Qry = "xs:double(\"1e5\") castable as xs:boolean",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs231'(_Config) ->
   Qry = "xs:double(\"1e5\") castable as xs:base64Binary",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs232'(_Config) ->
   Qry = "xs:double(\"1e5\") castable as xs:hexBinary",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs233'(_Config) ->
   Qry = "xs:double(\"1e5\") castable as xs:anyURI",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs234'(_Config) ->
   Qry = "xs:decimal(\"-1.1234\") castable as xs:untypedAtomic",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs235'(_Config) ->
   Qry = "xs:decimal(\"-1.1234\") castable as xs:string",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs236'(_Config) ->
   Qry = "xs:decimal(\"-1.1234\") castable as xs:float",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs237'(_Config) ->
   Qry = "xs:decimal(\"-1.1234\") castable as xs:double",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs238'(_Config) ->
   Qry = "xs:decimal(\"-1.1234\") castable as xs:decimal",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs239'(_Config) ->
   Qry = "xs:decimal(\"-1.1234\") castable as xs:integer",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs240'(_Config) ->
   Qry = "xs:decimal(\"5.5432\") castable as xs:integer",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs241'(_Config) ->
   Qry = "xs:decimal(\"-1.1234\") castable as xs:duration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs242'(_Config) ->
   Qry = "xs:decimal(\"-1.1234\") castable as xs:yearMonthDuration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs243'(_Config) ->
   Qry = "xs:decimal(\"-1.1234\") castable as xs:dayTimeDuration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs244'(_Config) ->
   Qry = "xs:decimal(\"-1.1234\") castable as xs:dateTime",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs245'(_Config) ->
   Qry = "xs:decimal(\"-1.1234\") castable as xs:time",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs246'(_Config) ->
   Qry = "xs:decimal(\"-1.1234\") castable as xs:date",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs247'(_Config) ->
   Qry = "xs:decimal(\"-1.1234\") castable as xs:gYearMonth",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs248'(_Config) ->
   Qry = "xs:decimal(\"-1.1234\") castable as xs:gYear",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs249'(_Config) ->
   Qry = "xs:decimal(\"-1.1234\") castable as xs:gMonthDay",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs250'(_Config) ->
   Qry = "xs:decimal(\"-1.1234\") castable as xs:gDay",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs251'(_Config) ->
   Qry = "xs:decimal(\"-1.1234\") castable as xs:gMonth",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs252'(_Config) ->
   Qry = "xs:decimal(\"-1.1234\") castable as xs:boolean",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs253'(_Config) ->
   Qry = "xs:decimal(\"-1.1234\") castable as xs:base64Binary",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs254'(_Config) ->
   Qry = "xs:decimal(\"-1.1234\") castable as xs:hexBinary",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs255'(_Config) ->
   Qry = "xs:decimal(\"-1.1234\") castable as xs:anyURI",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs256'(_Config) ->
   Qry = "xs:integer(\"1\") castable as xs:untypedAtomic",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs257'(_Config) ->
   Qry = "xs:integer(\"-100\") castable as xs:string",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs258'(_Config) ->
   Qry = "xs:integer(\"-100\") castable as xs:float",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs259'(_Config) ->
   Qry = "xs:integer(\"-100\") castable as xs:double",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs260'(_Config) ->
   Qry = "xs:integer(\"-100\") castable as xs:decimal",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs261'(_Config) ->
   Qry = "xs:integer(\"-100\") castable as xs:integer",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs262'(_Config) ->
   Qry = "xs:integer(\"-100\") castable as xs:duration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs263'(_Config) ->
   Qry = "xs:integer(\"-100\") castable as xs:yearMonthDuration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs264'(_Config) ->
   Qry = "xs:integer(\"-100\") castable as xs:dayTimeDuration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs265'(_Config) ->
   Qry = "xs:integer(\"-100\") castable as xs:dateTime",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs266'(_Config) ->
   Qry = "xs:integer(\"-100\") castable as xs:time",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs267'(_Config) ->
   Qry = "xs:integer(\"-100\") castable as xs:date",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs268'(_Config) ->
   Qry = "xs:integer(\"-100\") castable as xs:gYearMonth",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs269'(_Config) ->
   Qry = "xs:integer(\"-100\") castable as xs:gYear",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs270'(_Config) ->
   Qry = "xs:integer(\"-100\") castable as xs:gMonthDay",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs271'(_Config) ->
   Qry = "xs:integer(\"-100\") castable as xs:gDay",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs272'(_Config) ->
   Qry = "xs:integer(\"-100\") castable as xs:gMonth",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs273'(_Config) ->
   Qry = "xs:integer(\"-100\") castable as xs:boolean",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs274'(_Config) ->
   Qry = "xs:integer(\"-100\") castable as xs:base64Binary",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs275'(_Config) ->
   Qry = "xs:integer(\"-100\") castable as xs:hexBinary",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs276'(_Config) ->
   Qry = "xs:integer(\"-100\") castable as xs:anyURI",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs277'(_Config) ->
   Qry = "xs:duration(\"P1Y2M3DT10H30M23S\") castable as xs:untypedAtomic",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs278'(_Config) ->
   Qry = "xs:duration(\"P1Y2M3DT10H30M23S\") castable as xs:string",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs279'(_Config) ->
   Qry = "xs:duration(\"P1Y2M3DT10H30M23S\") castable as xs:float",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs280'(_Config) ->
   Qry = "xs:duration(\"P1Y2M3DT10H30M23S\") castable as xs:double",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs281'(_Config) ->
   Qry = "xs:duration(\"P1Y2M3DT10H30M23S\") castable as xs:decimal",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs282'(_Config) ->
   Qry = "xs:duration(\"P1Y2M3DT10H30M23S\") castable as xs:integer",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs283'(_Config) ->
   Qry = "xs:duration(\"P1Y2M3DT10H30M23S\") castable as xs:duration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs284'(_Config) ->
   Qry = "xs:duration(\"PT10H\") castable as xs:duration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs285'(_Config) ->
   Qry = "xs:duration(\"P1Y2M3DT10H30M23S\") castable as xs:yearMonthDuration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs286'(_Config) ->
   Qry = "xs:duration(\"PT10H\") castable as xs:yearMonthDuration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs287'(_Config) ->
   Qry = "xs:duration(\"P24M\") castable as xs:yearMonthDuration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs288'(_Config) ->
   Qry = "xs:duration(\"P1Y2M3DT10H30M23S\") castable as xs:dayTimeDuration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs289'(_Config) ->
   Qry = "xs:duration(\"PT10H\") castable as xs:dayTimeDuration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs290'(_Config) ->
   Qry = "xs:duration(\"P24M\") castable as xs:dayTimeDuration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs291'(_Config) ->
   Qry = "xs:duration(\"P1Y2M3DT10H30M23S\") castable as xs:dateTime",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs292'(_Config) ->
   Qry = "xs:duration(\"P1Y2M3DT10H30M23S\") castable as xs:time",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs293'(_Config) ->
   Qry = "xs:duration(\"P1Y2M3DT10H30M23S\") castable as xs:date",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs294'(_Config) ->
   Qry = "xs:duration(\"P1Y2M3DT10H30M23S\") castable as xs:gYearMonth",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs295'(_Config) ->
   Qry = "xs:duration(\"P1Y2M3DT10H30M23S\") castable as xs:gYear",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs296'(_Config) ->
   Qry = "xs:duration(\"P1Y2M3DT10H30M23S\") castable as xs:gMonthDay",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs297'(_Config) ->
   Qry = "xs:duration(\"P1Y2M3DT10H30M23S\") castable as xs:gDay",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs298'(_Config) ->
   Qry = "xs:duration(\"P1Y2M3DT10H30M23S\") castable as xs:gMonth",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs299'(_Config) ->
   Qry = "xs:duration(\"P1Y2M3DT10H30M23S\") castable as xs:boolean",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs300'(_Config) ->
   Qry = "xs:duration(\"P1Y2M3DT10H30M23S\") castable as xs:base64Binary",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs301'(_Config) ->
   Qry = "xs:duration(\"P1Y2M3DT10H30M23S\") castable as xs:hexBinary",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs302'(_Config) ->
   Qry = "xs:duration(\"P1Y2M3DT10H30M23S\") castable as xs:anyURI",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs303'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P1Y2M\") castable as xs:untypedAtomic",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs304'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P1Y2M\") castable as xs:string",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs305'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P1Y2M\") castable as xs:float",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs306'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P1Y2M\") castable as xs:double",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs307'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P1Y2M\") castable as xs:decimal",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs308'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P1Y2M\") castable as xs:integer",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs309'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P1Y2M\") castable as xs:duration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs310'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P1Y2M\") castable as xs:yearMonthDuration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs311'(_Config) ->
   Qry = "xs:yearMonthDuration(\"-P21M\") castable as xs:yearMonthDuration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs312'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P1Y2M\") castable as xs:dayTimeDuration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs313'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P1Y2M\") castable as xs:dateTime",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs314'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P1Y2M\") castable as xs:time",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs315'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P1Y2M\") castable as xs:date",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs316'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P1Y2M\") castable as xs:gYearMonth",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs317'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P1Y2M\") castable as xs:gYear",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs318'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P1Y2M\") castable as xs:gMonthDay",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs319'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P1Y2M\") castable as xs:gDay",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs320'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P1Y2M\") castable as xs:gMonth",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs321'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P1Y2M\") castable as xs:boolean",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs322'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P1Y2M\") castable as xs:base64Binary",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs323'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P1Y2M\") castable as xs:hexBinary",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs324'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P1Y2M\") castable as xs:anyURI",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs325'(_Config) ->
   Qry = "xs:dayTimeDuration(\"P3DT10H30M\") castable as xs:untypedAtomic",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs326'(_Config) ->
   Qry = "xs:dayTimeDuration(\"-PT100M\") castable as xs:untypedAtomic",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs327'(_Config) ->
   Qry = "xs:dayTimeDuration(\"P3DT10H30M\") castable as xs:string",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs328'(_Config) ->
   Qry = "xs:dayTimeDuration(\"-PT100M\") castable as xs:string",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs329'(_Config) ->
   Qry = "xs:dayTimeDuration(\"P3DT10H30M\") castable as xs:float",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs330'(_Config) ->
   Qry = "xs:dayTimeDuration(\"P3DT10H30M\") castable as xs:double",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs331'(_Config) ->
   Qry = "xs:dayTimeDuration(\"P3DT10H30M\") castable as xs:decimal",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs332'(_Config) ->
   Qry = "xs:dayTimeDuration(\"P3DT10H30M\") castable as xs:integer",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs333'(_Config) ->
   Qry = "xs:dayTimeDuration(\"P3DT10H30M\") castable as xs:duration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs334'(_Config) ->
   Qry = "xs:dayTimeDuration(\"PT24H\") castable as xs:duration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs335'(_Config) ->
   Qry = "xs:dayTimeDuration(\"-PT100M\") castable as xs:duration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs336'(_Config) ->
   Qry = "xs:dayTimeDuration(\"P3DT10H30M\") castable as xs:yearMonthDuration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs337'(_Config) ->
   Qry = "xs:dayTimeDuration(\"P3DT10H30M\") castable as xs:dayTimeDuration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs338'(_Config) ->
   Qry = "xs:dayTimeDuration(\"P14D\") castable as xs:dayTimeDuration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs339'(_Config) ->
   Qry = "xs:dayTimeDuration(\"-PT100M\") castable as xs:dayTimeDuration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs340'(_Config) ->
   Qry = "xs:dayTimeDuration(\"P3DT10H30M\") castable as xs:dateTime",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs341'(_Config) ->
   Qry = "xs:dayTimeDuration(\"P3DT10H30M\") castable as xs:time",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs342'(_Config) ->
   Qry = "xs:dayTimeDuration(\"P3DT10H30M\") castable as xs:date",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs343'(_Config) ->
   Qry = "xs:dayTimeDuration(\"P3DT10H30M\") castable as xs:gYearMonth",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs344'(_Config) ->
   Qry = "xs:dayTimeDuration(\"P3DT10H30M\") castable as xs:gYear",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs345'(_Config) ->
   Qry = "xs:dayTimeDuration(\"P3DT10H30M\") castable as xs:gMonthDay",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs346'(_Config) ->
   Qry = "xs:dayTimeDuration(\"P3DT10H30M\") castable as xs:gDay",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs347'(_Config) ->
   Qry = "xs:dayTimeDuration(\"P3DT10H30M\") castable as xs:gMonth",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs348'(_Config) ->
   Qry = "xs:dayTimeDuration(\"P3DT10H30M\") castable as xs:boolean",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs349'(_Config) ->
   Qry = "xs:dayTimeDuration(\"P3DT10H30M\") castable as xs:base64Binary",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs350'(_Config) ->
   Qry = "xs:dayTimeDuration(\"P3DT10H30M\") castable as xs:hexBinary",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs351'(_Config) ->
   Qry = "xs:dayTimeDuration(\"P3DT10H30M\") castable as xs:anyURI",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs352'(_Config) ->
   Qry = "xs:dateTime(\"1999-05-31T13:20:00\") castable as xs:untypedAtomic",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs353'(_Config) ->
   Qry = "xs:dateTime(\"-1999-05-31T13:20:00+14:00\") castable as xs:untypedAtomic",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs354'(_Config) ->
   Qry = "xs:dateTime(\"1999-05-31T13:20:00\") castable as xs:string",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs355'(_Config) ->
   Qry = "xs:dateTime(\"-1999-05-31T13:20:00+14:00\") castable as xs:string",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs356'(_Config) ->
   Qry = "xs:dateTime(\"1999-05-31T13:20:00\") castable as xs:float",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs357'(_Config) ->
   Qry = "xs:dateTime(\"2000-01-16T00:00:00Z\") castable as xs:float",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs358'(_Config) ->
   Qry = "xs:dateTime(\"1999-05-31T13:20:00\") castable as xs:decimal",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs359'(_Config) ->
   Qry = "xs:dateTime(\"1999-05-31T13:20:00\") castable as xs:integer",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs360'(_Config) ->
   Qry = "xs:dateTime(\"1999-05-31T13:20:00\") castable as xs:duration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs361'(_Config) ->
   Qry = "xs:dateTime(\"1999-05-31T13:20:00\") castable as xs:yearMonthDuration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs362'(_Config) ->
   Qry = "xs:dateTime(\"1999-05-31T13:20:00\") castable as xs:dayTimeDuration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs363'(_Config) ->
   Qry = "xs:dateTime(\"1999-05-31T13:20:00\") castable as xs:dateTime",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs364'(_Config) ->
   Qry = "xs:dateTime(\"1999-05-31T13:20:00\") castable as xs:time",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs365'(_Config) ->
   Qry = "xs:dateTime(\"-1999-05-31T13:20:00+14:00\") castable as xs:time",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs366'(_Config) ->
   Qry = "xs:dateTime(\"1999-05-31T13:20:00\") castable as xs:date",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs367'(_Config) ->
   Qry = "xs:dateTime(\"-1999-05-31T13:20:00+14:00\") castable as xs:date",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs368'(_Config) ->
   Qry = "xs:dateTime(\"1999-05-31T13:20:00\") castable as xs:gYearMonth",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs369'(_Config) ->
   Qry = "xs:dateTime(\"-1999-05-31T13:20:00+14:00\") castable as xs:gYearMonth",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs370'(_Config) ->
   Qry = "xs:dateTime(\"1999-05-31T13:20:00\") castable as xs:gYear",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs371'(_Config) ->
   Qry = "xs:dateTime(\"-1999-05-31T13:20:00+14:00\") castable as xs:gYear",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs372'(_Config) ->
   Qry = "xs:dateTime(\"1999-05-31T13:20:00\") castable as xs:gMonthDay",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs373'(_Config) ->
   Qry = "xs:dateTime(\"-1999-05-31T13:20:00+14:00\") castable as xs:gMonthDay",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs374'(_Config) ->
   Qry = "xs:dateTime(\"1999-05-31T13:20:00\") castable as xs:gDay",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs375'(_Config) ->
   Qry = "xs:dateTime(\"-1999-05-31T13:20:00+14:00\") castable as xs:gDay",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs376'(_Config) ->
   Qry = "xs:dateTime(\"1999-05-31T13:20:00\") castable as xs:gMonth",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs377'(_Config) ->
   Qry = "xs:dateTime(\"-1999-05-31T13:20:00+14:00\") castable as xs:gMonth",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs378'(_Config) ->
   Qry = "xs:dateTime(\"1999-05-31T13:20:00\") castable as xs:boolean",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs379'(_Config) ->
   Qry = "xs:dateTime(\"1999-05-31T13:20:00\") castable as xs:base64Binary",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs380'(_Config) ->
   Qry = "xs:dateTime(\"1999-05-31T13:20:00\") castable as xs:hexBinary",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs381'(_Config) ->
   Qry = "xs:dateTime(\"1999-05-31T13:20:00\") castable as xs:anyURI",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs382'(_Config) ->
   Qry = "xs:time(\"13:20:00-05:00\") castable as xs:untypedAtomic",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs383'(_Config) ->
   Qry = "xs:time(\"13:20:00-05:00\") castable as xs:string",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs384'(_Config) ->
   Qry = "xs:time(\"13:20:00-05:00\") castable as xs:float",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs385'(_Config) ->
   Qry = "xs:time(\"13:20:00-05:00\") castable as xs:double",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs386'(_Config) ->
   Qry = "xs:time(\"13:20:00-05:00\") castable as xs:decimal",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs387'(_Config) ->
   Qry = "xs:time(\"13:20:00-05:00\") castable as xs:integer",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs388'(_Config) ->
   Qry = "xs:time(\"13:20:00-05:00\") castable as xs:duration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs389'(_Config) ->
   Qry = "xs:time(\"13:20:00-05:00\") castable as xs:yearMonthDuration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs390'(_Config) ->
   Qry = "xs:time(\"13:20:00-05:00\") castable as xs:dayTimeDuration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs391'(_Config) ->
   Qry = "xs:time(\"13:20:00-05:00\") castable as xs:dateTime",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs392'(_Config) ->
   Qry = "xs:time(\"13:20:00-05:00\") castable as xs:time",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs393'(_Config) ->
   Qry = "xs:time(\"13:20:02.123\") castable as xs:time",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs394'(_Config) ->
   Qry = "xs:time(\"13:20:00Z\") castable as xs:time",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs395'(_Config) ->
   Qry = "xs:time(\"13:20:00-05:00\") castable as xs:date",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs396'(_Config) ->
   Qry = "xs:time(\"13:20:00-05:00\") castable as xs:gYearMonth",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs397'(_Config) ->
   Qry = "xs:time(\"13:20:00-05:00\") castable as xs:gYear",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs398'(_Config) ->
   Qry = "xs:time(\"13:20:00-05:00\") castable as xs:gMonthDay",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs399'(_Config) ->
   Qry = "xs:time(\"13:20:00-05:00\") castable as xs:gDay",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs400'(_Config) ->
   Qry = "xs:time(\"13:20:00-05:00\") castable as xs:gMonth",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs401'(_Config) ->
   Qry = "xs:time(\"13:20:00-05:00\") castable as xs:boolean",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs402'(_Config) ->
   Qry = "xs:time(\"13:20:00-05:00\") castable as xs:base64Binary",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs403'(_Config) ->
   Qry = "xs:time(\"13:20:00-05:00\") castable as xs:hexBinary",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs404'(_Config) ->
   Qry = "xs:time(\"13:20:00-05:00\") castable as xs:anyURI",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs405'(_Config) ->
   Qry = "xs:date(\"1999-05-31\") castable as xs:untypedAtomic",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs406'(_Config) ->
   Qry = "xs:date(\"-0012-12-03-05:00\") castable as xs:untypedAtomic",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"FODT0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> ct:fail('any-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs407'(_Config) ->
   Qry = "xs:date(\"1999-05-31\") castable as xs:string",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs408'(_Config) ->
   Qry = "xs:date(\"-0012-12-03-05:00\") castable as xs:string",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FODT0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> ct:fail('any-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs409'(_Config) ->
   Qry = "xs:date(\"1999-05-31\") castable as xs:float",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs410'(_Config) ->
   Qry = "xs:date(\"1999-05-31\") castable as xs:double",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs411'(_Config) ->
   Qry = "xs:date(\"1999-05-31Z\") castable as xs:double",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs412'(_Config) ->
   Qry = "xs:date(\"1999-05-31\") castable as xs:integer",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs413'(_Config) ->
   Qry = "xs:date(\"1999-05-31\") castable as xs:duration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs414'(_Config) ->
   Qry = "xs:date(\"1999-05-31\") castable as xs:yearMonthDuration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs415'(_Config) ->
   Qry = "xs:date(\"1999-05-31\") castable as xs:dayTimeDuration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs416'(_Config) ->
   Qry = "xs:date(\"1999-05-31\") castable as xs:dateTime",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs417'(_Config) ->
   Qry = "xs:date(\"1999-05-31\") castable as xs:time",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs418'(_Config) ->
   Qry = "xs:date(\"1999-05-31\") castable as xs:date",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs419'(_Config) ->
   Qry = "xs:date(\"-0012-12-03-05:00\") castable as xs:date",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FODT0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> ct:fail('any-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs420'(_Config) ->
   Qry = "xs:date(\"1999-05-31Z\") castable as xs:date",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs421'(_Config) ->
   Qry = "xs:date(\"1999-05-31\") castable as xs:gYearMonth",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs422'(_Config) ->
   Qry = "xs:date(\"1999-05-31\") castable as xs:gYear",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs423'(_Config) ->
   Qry = "xs:date(\"-0012-12-03-05:00\") castable as xs:gYear",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FODT0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> ct:fail('any-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs424'(_Config) ->
   Qry = "xs:date(\"1999-05-31Z\") castable as xs:gYear",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs425'(_Config) ->
   Qry = "xs:date(\"1999-05-31\") castable as xs:gMonthDay",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs426'(_Config) ->
   Qry = "xs:date(\"-0012-12-03-05:00\") castable as xs:gMonthDay",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FODT0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> ct:fail('any-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs427'(_Config) ->
   Qry = "xs:date(\"1999-05-31Z\") castable as xs:gMonthDay",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs428'(_Config) ->
   Qry = "xs:date(\"1999-05-31Z\") castable as xs:gDay",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs429'(_Config) ->
   Qry = "xs:date(\"-0012-12-03-05:00\") castable as xs:gMonth",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FODT0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> ct:fail('any-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs430'(_Config) ->
   Qry = "xs:date(\"1999-05-31Z\") castable as xs:gMonth",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs431'(_Config) ->
   Qry = "xs:date(\"1999-05-31\") castable as xs:boolean",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs432'(_Config) ->
   Qry = "xs:date(\"1999-05-31\") castable as xs:base64Binary",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs433'(_Config) ->
   Qry = "xs:date(\"1999-05-31\") castable as xs:hexBinary",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs434'(_Config) ->
   Qry = "xs:date(\"1999-05-31\") castable as xs:anyURI",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs435'(_Config) ->
   Qry = "xs:gYearMonth(\"1999-05\") castable as xs:untypedAtomic",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs436'(_Config) ->
   Qry = "xs:gYearMonth(\"1999-05\") castable as xs:string",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs437'(_Config) ->
   Qry = "xs:gYearMonth(\"1999-05\") castable as xs:float",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs438'(_Config) ->
   Qry = "xs:gYearMonth(\"1999-05\") castable as xs:double",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs439'(_Config) ->
   Qry = "xs:gYearMonth(\"1999-05Z\") castable as xs:double",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs440'(_Config) ->
   Qry = "xs:gYearMonth(\"1999-05Z\") castable as xs:decimal",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs441'(_Config) ->
   Qry = "xs:gYearMonth(\"1999-05Z\") castable as xs:integer",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs442'(_Config) ->
   Qry = "xs:gYearMonth(\"1999-05Z\") castable as xs:duration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs443'(_Config) ->
   Qry = "xs:gYearMonth(\"1999-05Z\") castable as xs:yearMonthDuration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs444'(_Config) ->
   Qry = "xs:gYearMonth(\"1999-05Z\") castable as xs:dayTimeDuration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs445'(_Config) ->
   Qry = "xs:gYearMonth(\"1999-05Z\") castable as xs:dateTime",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs446'(_Config) ->
   Qry = "xs:gYearMonth(\"1999-05Z\") castable as xs:time",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs447'(_Config) ->
   Qry = "xs:gYearMonth(\"1999-05Z\") castable as xs:date",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs448'(_Config) ->
   Qry = "xs:gYearMonth(\"1999-05\") castable as xs:gYearMonth",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs449'(_Config) ->
   Qry = "xs:gYearMonth(\"-0012-12-05:00\") castable as xs:gYearMonth",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs450'(_Config) ->
   Qry = "xs:gYearMonth(\"1999-05Z\") castable as xs:gYearMonth",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs451'(_Config) ->
   Qry = "xs:gYearMonth(\"1999-05Z\") castable as xs:gYear",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs452'(_Config) ->
   Qry = "xs:gYearMonth(\"1999-05Z\") castable as xs:gMonthDay",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs453'(_Config) ->
   Qry = "xs:gYearMonth(\"1999-05Z\") castable as xs:gDay",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs454'(_Config) ->
   Qry = "xs:gYearMonth(\"1999-05Z\") castable as xs:gMonth",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs455'(_Config) ->
   Qry = "xs:gYearMonth(\"1999-05Z\") castable as xs:boolean",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs456'(_Config) ->
   Qry = "xs:gYearMonth(\"1999-05Z\") castable as xs:base64Binary",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs457'(_Config) ->
   Qry = "xs:gYearMonth(\"1999-05Z\") castable as xs:hexBinary",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs458'(_Config) ->
   Qry = "xs:gYearMonth(\"1999-05Z\") castable as xs:anyURI",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs459'(_Config) ->
   Qry = "xs:gYear(\"1999\") castable as xs:untypedAtomic",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs460'(_Config) ->
   Qry = "xs:gYear(\"1999\") castable as xs:string",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs461'(_Config) ->
   Qry = "xs:gYear(\"1999\") castable as xs:float",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs462'(_Config) ->
   Qry = "xs:gYear(\"1999\") castable as xs:double",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs463'(_Config) ->
   Qry = "xs:gYear(\"1999\") castable as xs:decimal",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs464'(_Config) ->
   Qry = "xs:gYear(\"1999\") castable as xs:integer",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs465'(_Config) ->
   Qry = "xs:gYear(\"1999\") castable as xs:duration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs466'(_Config) ->
   Qry = "xs:gYear(\"1999\") castable as xs:yearMonthDuration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs467'(_Config) ->
   Qry = "xs:gYear(\"1999\") castable as xs:dateTime",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs468'(_Config) ->
   Qry = "xs:gYear(\"1999\") castable as xs:time",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs469'(_Config) ->
   Qry = "xs:gYear(\"1999\") castable as xs:date",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs470'(_Config) ->
   Qry = "xs:gYear(\"1999\") castable as xs:gYearMonth",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs471'(_Config) ->
   Qry = "xs:gYear(\"1999\") castable as xs:gYear",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs472'(_Config) ->
   Qry = "xs:gYear(\"-0012-05:00\") castable as xs:gYear",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs473'(_Config) ->
   Qry = "xs:gYear(\"1999Z\") castable as xs:gYear",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs474'(_Config) ->
   Qry = "xs:gYear(\"1999\") castable as xs:gMonthDay",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs475'(_Config) ->
   Qry = "xs:gYear(\"1999\") castable as xs:gDay",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs476'(_Config) ->
   Qry = "xs:gYear(\"1999\") castable as xs:gMonth",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs477'(_Config) ->
   Qry = "xs:gYear(\"1999\") castable as xs:boolean",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs478'(_Config) ->
   Qry = "xs:gYear(\"1999\") castable as xs:base64Binary",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs479'(_Config) ->
   Qry = "xs:gYear(\"1999\") castable as xs:hexBinary",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs480'(_Config) ->
   Qry = "xs:gYear(\"1999\") castable as xs:anyURI",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs481'(_Config) ->
   Qry = "xs:gMonthDay(\"--05-31\") castable as xs:untypedAtomic",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs482'(_Config) ->
   Qry = "xs:gMonthDay(\"--05-31\") castable as xs:string",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs483'(_Config) ->
   Qry = "xs:gMonthDay(\"--05-31\") castable as xs:float",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs484'(_Config) ->
   Qry = "xs:gMonthDay(\"--05-31\") castable as xs:double",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs485'(_Config) ->
   Qry = "xs:gMonthDay(\"--05-31\") castable as xs:decimal",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs486'(_Config) ->
   Qry = "xs:gMonthDay(\"--05-31\") castable as xs:integer",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs487'(_Config) ->
   Qry = "xs:gMonthDay(\"--05-31\") castable as xs:duration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs488'(_Config) ->
   Qry = "xs:gMonthDay(\"--05-31\") castable as xs:yearMonthDuration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs489'(_Config) ->
   Qry = "xs:gMonthDay(\"--05-31\") castable as xs:dayTimeDuration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs490'(_Config) ->
   Qry = "xs:gMonthDay(\"--05-31\") castable as xs:dateTime",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs491'(_Config) ->
   Qry = "xs:gMonthDay(\"--05-31\") castable as xs:time",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs492'(_Config) ->
   Qry = "xs:gMonthDay(\"--05-31\") castable as xs:date",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs493'(_Config) ->
   Qry = "xs:gMonthDay(\"--05-31\") castable as xs:gYearMonth",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs494'(_Config) ->
   Qry = "xs:gMonthDay(\"--05-31\") castable as xs:gYear",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs495'(_Config) ->
   Qry = "xs:gMonthDay(\"--05-31\") castable as xs:gMonthDay",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs496'(_Config) ->
   Qry = "xs:gMonthDay(\"--12-03-05:00\") castable as xs:gMonthDay",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs497'(_Config) ->
   Qry = "xs:gMonthDay(\"--05-31Z\") castable as xs:gMonthDay",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs498'(_Config) ->
   Qry = "xs:gMonthDay(\"--05-31\") castable as xs:gDay",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs499'(_Config) ->
   Qry = "xs:gMonthDay(\"--05-31\") castable as xs:gMonth",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs500'(_Config) ->
   Qry = "xs:gMonthDay(\"--05-31\") castable as xs:boolean",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs501'(_Config) ->
   Qry = "xs:gMonthDay(\"--05-31\") castable as xs:base64Binary",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs502'(_Config) ->
   Qry = "xs:gMonthDay(\"--05-31\") castable as xs:hexBinary",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs503'(_Config) ->
   Qry = "xs:gMonthDay(\"--05-31\") castable as xs:anyURI",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs504'(_Config) ->
   Qry = "xs:gDay(\"---31\") castable as xs:untypedAtomic",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs505'(_Config) ->
   Qry = "xs:gDay(\"---31\") castable as xs:string",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs506'(_Config) ->
   Qry = "xs:gDay(\"---31\") castable as xs:float",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs507'(_Config) ->
   Qry = "xs:gDay(\"---31\") castable as xs:double",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs508'(_Config) ->
   Qry = "xs:gDay(\"---31\") castable as xs:decimal",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs509'(_Config) ->
   Qry = "xs:gDay(\"---31\") castable as xs:integer",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs510'(_Config) ->
   Qry = "xs:gDay(\"---31\") castable as xs:duration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs511'(_Config) ->
   Qry = "xs:gDay(\"---31\") castable as xs:yearMonthDuration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs512'(_Config) ->
   Qry = "xs:gDay(\"---31\") castable as xs:dayTimeDuration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs513'(_Config) ->
   Qry = "xs:gDay(\"---31\") castable as xs:dateTime",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs514'(_Config) ->
   Qry = "xs:gDay(\"---31\") castable as xs:time",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs515'(_Config) ->
   Qry = "xs:gDay(\"---31\") castable as xs:date",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs516'(_Config) ->
   Qry = "xs:gDay(\"---31\") castable as xs:gYearMonth",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs517'(_Config) ->
   Qry = "xs:gDay(\"---31\") castable as xs:gYear",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs518'(_Config) ->
   Qry = "xs:gDay(\"---31\") castable as xs:gMonthDay",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs519'(_Config) ->
   Qry = "xs:gDay(\"---31\") castable as xs:gDay",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs520'(_Config) ->
   Qry = "xs:gDay(\"---03-05:00\") castable as xs:gDay",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs521'(_Config) ->
   Qry = "xs:gDay(\"---31Z\") castable as xs:gDay",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs522'(_Config) ->
   Qry = "xs:gDay(\"---31\") castable as xs:gMonth",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs523'(_Config) ->
   Qry = "xs:gDay(\"---31\") castable as xs:boolean",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs524'(_Config) ->
   Qry = "xs:gDay(\"---31\") castable as xs:base64Binary",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs525'(_Config) ->
   Qry = "xs:gDay(\"---31\") castable as xs:hexBinary",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs526'(_Config) ->
   Qry = "xs:gDay(\"---31\") castable as xs:anyURI",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs527'(_Config) ->
   Qry = "xs:gMonth(\"--05\") castable as xs:untypedAtomic",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs528'(_Config) ->
   Qry = "xs:gMonth(\"--05\") castable as xs:string",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs529'(_Config) ->
   Qry = "xs:gMonth(\"--05\") castable as xs:float",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs530'(_Config) ->
   Qry = "xs:gMonth(\"--05\") castable as xs:double",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs531'(_Config) ->
   Qry = "xs:gMonth(\"--05\") castable as xs:decimal",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs532'(_Config) ->
   Qry = "xs:gMonth(\"--05\") castable as xs:integer",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs533'(_Config) ->
   Qry = "xs:gMonth(\"--05\") castable as xs:duration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs534'(_Config) ->
   Qry = "xs:gMonth(\"--05\") castable as xs:yearMonthDuration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs535'(_Config) ->
   Qry = "xs:gMonth(\"--05\") castable as xs:dayTimeDuration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs536'(_Config) ->
   Qry = "xs:gMonth(\"--05\") castable as xs:dateTime",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs537'(_Config) ->
   Qry = "xs:gMonth(\"--05\") castable as xs:time",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs538'(_Config) ->
   Qry = "xs:gMonth(\"--05\") castable as xs:date",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs539'(_Config) ->
   Qry = "xs:gMonth(\"--05\") castable as xs:gYearMonth",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs540'(_Config) ->
   Qry = "xs:gMonth(\"--05\") castable as xs:gYear",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs541'(_Config) ->
   Qry = "xs:gMonth(\"--05\") castable as xs:gMonthDay",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs542'(_Config) ->
   Qry = "xs:gMonth(\"--05\") castable as xs:gDay",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs543'(_Config) ->
   Qry = "xs:gMonth(\"--05\") castable as xs:gMonth",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs544'(_Config) ->
   Qry = "xs:gMonth(\"--12-05:00\") castable as xs:gMonth",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs545'(_Config) ->
   Qry = "xs:gMonth(\"--05Z\") castable as xs:gMonth",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs546'(_Config) ->
   Qry = "xs:gMonth(\"--05\") castable as xs:boolean",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs547'(_Config) ->
   Qry = "xs:gMonth(\"--05\") castable as xs:base64Binary",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs548'(_Config) ->
   Qry = "xs:gMonth(\"--05\") castable as xs:hexBinary",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs549'(_Config) ->
   Qry = "xs:gMonth(\"--05\") castable as xs:anyURI",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs550'(_Config) ->
   Qry = "xs:boolean(\"true\") castable as xs:untypedAtomic",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs551'(_Config) ->
   Qry = "xs:boolean(\"true\") castable as xs:string",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs552'(_Config) ->
   Qry = "xs:boolean(\"true\") castable as xs:float",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs553'(_Config) ->
   Qry = "xs:boolean(\"false\") castable as xs:float",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs554'(_Config) ->
   Qry = "xs:boolean(\"true\") castable as xs:double",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs555'(_Config) ->
   Qry = "xs:boolean(\"false\") castable as xs:double",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs556'(_Config) ->
   Qry = "xs:boolean(\"true\") castable as xs:decimal",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs557'(_Config) ->
   Qry = "xs:boolean(\"false\") castable as xs:decimal",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs558'(_Config) ->
   Qry = "xs:boolean(\"true\") castable as xs:integer",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs559'(_Config) ->
   Qry = "xs:boolean(\"false\") castable as xs:integer",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs560'(_Config) ->
   Qry = "xs:boolean(\"true\") castable as xs:duration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs561'(_Config) ->
   Qry = "xs:boolean(\"true\") castable as xs:yearMonthDuration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs562'(_Config) ->
   Qry = "xs:boolean(\"true\") castable as xs:dayTimeDuration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs563'(_Config) ->
   Qry = "xs:boolean(\"true\") castable as xs:dateTime",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs564'(_Config) ->
   Qry = "xs:boolean(\"true\") castable as xs:time",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs565'(_Config) ->
   Qry = "xs:boolean(\"true\") castable as xs:date",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs566'(_Config) ->
   Qry = "xs:boolean(\"true\") castable as xs:gYearMonth",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs567'(_Config) ->
   Qry = "xs:boolean(\"true\") castable as xs:gYear",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs568'(_Config) ->
   Qry = "xs:boolean(\"true\") castable as xs:gMonthDay",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs569'(_Config) ->
   Qry = "xs:boolean(\"true\") castable as xs:gDay",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs570'(_Config) ->
   Qry = "xs:boolean(\"true\") castable as xs:gMonth",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs571'(_Config) ->
   Qry = "xs:boolean(\"true\") castable as xs:boolean",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs572'(_Config) ->
   Qry = "xs:boolean(\"false\") castable as xs:boolean",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs573'(_Config) ->
   Qry = "xs:boolean(\"true\") castable as xs:base64Binary",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs574'(_Config) ->
   Qry = "xs:boolean(\"true\") castable as xs:hexBinary",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs575'(_Config) ->
   Qry = "xs:boolean(\"true\") castable as xs:anyURI",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs576'(_Config) ->
   Qry = "xs:base64Binary(\"01001010\") castable as xs:untypedAtomic",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs577'(_Config) ->
   Qry = "xs:base64Binary(\"0FB7\") castable as xs:untypedAtomic",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs578'(_Config) ->
   Qry = "xs:base64Binary(\"01001010\") castable as xs:string",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs579'(_Config) ->
   Qry = "xs:base64Binary(\"0FB7\") castable as xs:string",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs580'(_Config) ->
   Qry = "xs:base64Binary(\"10010101\") castable as xs:float",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs581'(_Config) ->
   Qry = "xs:base64Binary(\"10010101\") castable as xs:double",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs582'(_Config) ->
   Qry = "xs:base64Binary(\"10010101\") castable as xs:decimal",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs583'(_Config) ->
   Qry = "xs:base64Binary(\"10010101\") castable as xs:integer",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs584'(_Config) ->
   Qry = "xs:base64Binary(\"10010101\") castable as xs:duration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs585'(_Config) ->
   Qry = "xs:base64Binary(\"10010101\") castable as xs:yearMonthDuration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs586'(_Config) ->
   Qry = "xs:base64Binary(\"10010101\") castable as xs:dayTimeDuration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs587'(_Config) ->
   Qry = "xs:base64Binary(\"10010101\") castable as xs:dateTime",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs588'(_Config) ->
   Qry = "xs:base64Binary(\"10010101\") castable as xs:time",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs589'(_Config) ->
   Qry = "xs:base64Binary(\"10010101\") castable as xs:date",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs590'(_Config) ->
   Qry = "xs:base64Binary(\"10010101\") castable as xs:gYearMonth",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs591'(_Config) ->
   Qry = "xs:base64Binary(\"10010101\") castable as xs:gYear",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs592'(_Config) ->
   Qry = "xs:base64Binary(\"10010101\") castable as xs:gMonthDay",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs593'(_Config) ->
   Qry = "xs:base64Binary(\"10010101\") castable as xs:gDay",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs594'(_Config) ->
   Qry = "xs:base64Binary(\"10010101\") castable as xs:gMonth",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs595'(_Config) ->
   Qry = "xs:base64Binary(\"10010101\") castable as xs:boolean",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs596'(_Config) ->
   Qry = "xs:base64Binary(\"01001010\") castable as xs:base64Binary",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs597'(_Config) ->
   Qry = "xs:base64Binary(\"0FB7\") castable as xs:base64Binary",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs598'(_Config) ->
   Qry = "xs:base64Binary(\"00000000\") castable as xs:hexBinary",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs599'(_Config) ->
   Qry = "xs:base64Binary(\"10010101\") castable as xs:hexBinary",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs600'(_Config) ->
   Qry = "xs:base64Binary(\"aA+zZ/09\") castable as xs:hexBinary",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs601'(_Config) ->
   Qry = "xs:base64Binary(\"0FB7\") castable as xs:hexBinary",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs602'(_Config) ->
   Qry = "xs:base64Binary(\"10010101\") castable as xs:anyURI",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs603'(_Config) ->
   Qry = "xs:hexBinary(\"D74D35D35D35\") castable as xs:untypedAtomic",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs604'(_Config) ->
   Qry = "xs:hexBinary(\"D74D35D35D35\") castable as xs:string",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs605'(_Config) ->
   Qry = "xs:hexBinary(\"D74D35D35D35\") castable as xs:float",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs606'(_Config) ->
   Qry = "xs:hexBinary(\"D74D35D35D35\") castable as xs:double",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs607'(_Config) ->
   Qry = "xs:hexBinary(\"D74D35D35D35\") castable as xs:decimal",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs608'(_Config) ->
   Qry = "xs:hexBinary(\"D74D35D35D35\") castable as xs:integer",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs609'(_Config) ->
   Qry = "xs:hexBinary(\"D74D35D35D35\") castable as xs:duration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs610'(_Config) ->
   Qry = "xs:hexBinary(\"D74D35D35D35\") castable as xs:yearMonthDuration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs611'(_Config) ->
   Qry = "xs:hexBinary(\"D74D35D35D35\") castable as xs:dayTimeDuration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs612'(_Config) ->
   Qry = "xs:hexBinary(\"D74D35D35D35\") castable as xs:dateTime",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs613'(_Config) ->
   Qry = "xs:hexBinary(\"D74D35D35D35\") castable as xs:time",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs614'(_Config) ->
   Qry = "xs:hexBinary(\"D74D35D35D35\") castable as xs:date",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs615'(_Config) ->
   Qry = "xs:hexBinary(\"D74D35D35D35\") castable as xs:gYearMonth",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs616'(_Config) ->
   Qry = "xs:hexBinary(\"D74D35D35D35\") castable as xs:gYear",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs617'(_Config) ->
   Qry = "xs:hexBinary(\"D74D35D35D35\") castable as xs:gMonthDay",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs618'(_Config) ->
   Qry = "xs:hexBinary(\"D74D35D35D35\") castable as xs:gDay",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs619'(_Config) ->
   Qry = "xs:hexBinary(\"D74D35D35D35\") castable as xs:gMonth",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs620'(_Config) ->
   Qry = "xs:hexBinary(\"D74D35D35D35\") castable as xs:boolean",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs621'(_Config) ->
   Qry = "xs:hexBinary(\"D74D35D35D35\") castable as xs:base64Binary",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs622'(_Config) ->
   Qry = "xs:hexBinary(\"0fb7\") castable as xs:base64Binary",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs623'(_Config) ->
   Qry = "xs:hexBinary(\"D74D35D35D35\") castable as xs:hexBinary",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs624'(_Config) ->
   Qry = "xs:hexBinary(\"d74d35d35d35\") castable as xs:hexBinary",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs625'(_Config) ->
   Qry = "xs:hexBinary(\"D74D35D35D35\") castable as xs:anyURI",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs626'(_Config) ->
   Qry = "xs:anyURI(\"http://www.ietf.org/rfc/rfc2396.txt\") castable as xs:untypedAtomic",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs627'(_Config) ->
   Qry = "xs:anyURI(\"http://www.ietf.org/rfc/rfc2396.txt\") castable as xs:string",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs628'(_Config) ->
   Qry = "xs:anyURI(\"http://www.ietf.org/rfc/rfc2396.txt\") castable as xs:float",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs629'(_Config) ->
   Qry = "xs:anyURI(\"http://www.ietf.org/rfc/rfc2396.txt\") castable as xs:double",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs630'(_Config) ->
   Qry = "xs:anyURI(\"http://www.ietf.org/rfc/rfc2396.txt\") castable as xs:decimal",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs631'(_Config) ->
   Qry = "xs:anyURI(\"http://www.ietf.org/rfc/rfc2396.txt\") castable as xs:integer",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs632'(_Config) ->
   Qry = "xs:anyURI(\"http://www.ietf.org/rfc/rfc2396.txt\") castable as xs:duration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs633'(_Config) ->
   Qry = "xs:anyURI(\"http://www.ietf.org/rfc/rfc2396.txt\") castable as xs:yearMonthDuration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs634'(_Config) ->
   Qry = "xs:anyURI(\"http://www.ietf.org/rfc/rfc2396.txt\") castable as xs:dayTimeDuration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs635'(_Config) ->
   Qry = "xs:anyURI(\"http://www.ietf.org/rfc/rfc2396.txt\") castable as xs:dateTime",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs636'(_Config) ->
   Qry = "xs:anyURI(\"http://www.ietf.org/rfc/rfc2396.txt\") castable as xs:time",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs637'(_Config) ->
   Qry = "xs:anyURI(\"http://www.ietf.org/rfc/rfc2396.txt\") castable as xs:date",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs638'(_Config) ->
   Qry = "xs:anyURI(\"http://www.ietf.org/rfc/rfc2396.txt\") castable as xs:gYearMonth",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs639'(_Config) ->
   Qry = "xs:anyURI(\"http://www.ietf.org/rfc/rfc2396.txt\") castable as xs:gYear",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs640'(_Config) ->
   Qry = "xs:anyURI(\"http://www.ietf.org/rfc/rfc2396.txt\") castable as xs:gMonthDay",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs641'(_Config) ->
   Qry = "xs:anyURI(\"http://www.ietf.org/rfc/rfc2396.txt\") castable as xs:gDay",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs642'(_Config) ->
   Qry = "xs:anyURI(\"http://www.ietf.org/rfc/rfc2396.txt\") castable as xs:gMonth",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs643'(_Config) ->
   Qry = "xs:anyURI(\"http://www.ietf.org/rfc/rfc2396.txt\") castable as xs:boolean",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs644'(_Config) ->
   Qry = "xs:anyURI(\"http://www.ietf.org/rfc/rfc2396.txt\") castable as xs:base64Binary",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs645'(_Config) ->
   Qry = "xs:anyURI(\"http://www.ietf.org/rfc/rfc2396.txt\") castable as xs:hexBinary",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs646'(_Config) ->
   Qry = "xs:anyURI(\"http://www.ietf.org/rfc/rfc2396.txt\") castable as xs:anyURI",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs647'(_Config) ->
   Qry = "\"ABC\" castable as xs:QName",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs648'(_Config) ->
   {skip,"XP20 XQ10"}.
'CastableAs648a'(_Config) ->
   Qry = "let $var := \"ABC\" return $var castable as xs:QName",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs649'(_Config) ->
   Qry = "count(//employee[salary castable as xs:integer][xs:integer(salary) gt 65000])",
   Env = xqerl_test:handle_environment(environment('acme_corp')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"3") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs650'(_Config) ->
   Qry = "count(//employee[if (salary castable as xs:integer) then xs:integer(salary) gt 65000 else false()])",
   Env = xqerl_test:handle_environment(environment('acme_corp')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"3") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'CastableAs651'(_Config) ->
   {skip,"schemaImport"}.
'CastableAs652'(_Config) ->
   {skip,"schemaImport"}.
'CastableAs653'(_Config) ->
   {skip,"schemaImport"}.
'CastableAs654'(_Config) ->
   {skip,"schemaImport"}.
'CastableAs655'(_Config) ->
   {skip,"schemaImport"}.
'CastableAs656'(_Config) ->
   {skip,"schemaImport"}.
'CastableAs657'(_Config) ->
   {skip,"schemaImport"}.
'CastableAs658'(_Config) ->
   {skip,"schemaImport"}.
'CastableAs659'(_Config) ->
   {skip,"schemaImport"}.
'CastableAs660'(_Config) ->
   {skip,"schemaImport"}.
'CastableAs661'(_Config) ->
   {skip,"schemaImport"}.
'CastableAs662'(_Config) ->
   {skip,"schemaImport"}.
'K-SeqExprCastable-1'(_Config) ->
   Qry = "'string' castable as xs:string*",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqExprCastable-2'(_Config) ->
   Qry = "'string' castable as xs:string+",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqExprCastable-3'(_Config) ->
   Qry = "(\"one\", \"two\") castable as xs:string+",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqExprCastable-4'(_Config) ->
   {skip,"XQ10"}.
'K-SeqExprCastable-4a'(_Config) ->
   Qry = "'string' castable as xs:anyType*",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XQST0052") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> ct:fail('any-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqExprCastable-5'(_Config) ->
   {skip,"XQ10"}.
'K-SeqExprCastable-5a'(_Config) ->
   Qry = "'string' castable as xs:anySimpleType",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0080") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqExprCastable-6'(_Config) ->
   {skip,"XQ10"}.
'K-SeqExprCastable-6a'(_Config) ->
   Qry = "'string' castable as xs:untyped",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0052") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqExprCastable-7'(_Config) ->
   Qry = "'string' castable as xs:anyAtomicType",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0080") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqExprCastable-8'(_Config) ->
   Qry = "\"notation is abstract\" castable as xs:NOTATION?",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0080") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqExprCastable-9'(_Config) ->
   Qry = "() castable as xs:NOTATION?",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0080") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqExprCastable-10'(_Config) ->
   Qry = "\"notation is abstract\" castable as xs:NOTATION",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0080") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqExprCastable-11'(_Config) ->
   Qry = "() castable as xs:NOTATION",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0080") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqExprCastable-12'(_Config) ->
   {skip,"XQ10"}.
'K-SeqExprCastable-12a'(_Config) ->
   Qry = "(xs:double(1), xs:double(2), xs:double(3)) castable as xs:double*",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0051") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> ct:fail('any-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqExprCastable-13'(_Config) ->
   {skip,"XQ10"}.
'K-SeqExprCastable-13a'(_Config) ->
   Qry = "'string' castable as item()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XQST0052") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> ct:fail('any-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqExprCastable-14'(_Config) ->
   Qry = "'string' castable as node()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0051") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> ct:fail('any-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqExprCastable-15'(_Config) ->
   Qry = "'string' castable as attribute()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0051") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> ct:fail('any-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqExprCastable-16'(_Config) ->
   Qry = "'string' castable as empty-sequence()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0051") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> ct:fail('any-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqExprCastable-17'(_Config) ->
   Qry = "not(QName(\"\", \"lname\") castable as xs:integer)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqExprCastable-18'(_Config) ->
   Qry = "QName(\"\", \"lname\") castable as xs:QName",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqExprCastable-19'(_Config) ->
   Qry = "\"ncname\" castable as xs:QName",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqExprCastable-20'(_Config) ->
   Qry = "not(() castable as xs:QName)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqExprCastable-21'(_Config) ->
   Qry = "() castable as xs:QName?",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqExprCastable-22'(_Config) ->
   Qry = "not(xs:untypedAtomic(\"ncname\") castable as xs:QName)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> ct:fail('any-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqExprCastable-23'(_Config) ->
   Qry = "not((\"one\", \"two\") castable as xs:string?)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqExprCastable-24'(_Config) ->
   Qry = "not('string' castable as xs:boolean)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqExprCastable-25'(_Config) ->
   Qry = "'true' castable as xs:boolean",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqExprCastable-26'(_Config) ->
   Qry = "xs:float(1) castable as xs:float",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqExprCastable-27'(_Config) ->
   Qry = "xs:float(1) castable as xs:untypedAtomic",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqExprCastable-28'(_Config) ->
   Qry = "xs:float(1) castable as xs:string",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqExprCastable-29'(_Config) ->
   Qry = "not(xs:anyURI(\"example.com/\") castable as xs:integer)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqExprCastable-30'(_Config) ->
   Qry = "not(\"three\" castable as xs:float)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqExprCastable-31'(_Config) ->
   Qry = "not(\"three\" castable as xs:integer)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqExprCastable-32'(_Config) ->
   Qry = "not(\"three\" castable as xs:decimal)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqExprCastable-33'(_Config) ->
   Qry = "not(\"three\" castable as xs:double)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqExprCastable-34'(_Config) ->
   Qry = "not((1, 2, 3) castable as xs:integer)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqExprCastable-35'(_Config) ->
   Qry = "not(() castable as xs:integer)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqExprCastable-36'(_Config) ->
   Qry = "() castable as xs:integer?",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqExprCastable-37'(_Config) ->
   Qry = "(1) castable as xs:integer?",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqExprCastable-38'(_Config) ->
   Qry = "not((\"one\", \"two\") castable as xs:string?)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-SeqExprCastable-1'(_Config) ->
   Qry = "(QName(\"http://example.com/ANamespace\", \"ncname\"), QName(\"http://example.com/ANamespace\", \"ncname2\"), QName(\"http://example.com/ANamespace\", \"ncname3\")) castable as xs:QName",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-SeqExprCastable-2'(_Config) ->
   Qry = "(QName(\"http://example.com/ANamespace\", \"ncname\"), QName(\"http://example.com/ANamespace\", \"ncname2\"), QName(\"http://example.com/ANamespace\", \"ncname3\")) castable as xs:QName?",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-SeqExprCastable-3'(_Config) ->
   Qry = "(1 div 0) castable as xs:string",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOAR0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> ct:fail('any-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-SeqExprCastable-4'(_Config) ->
   Qry = "concat(\"2007-01-3\", 1 div 0) castable as xs:date",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOAR0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-SeqExprCastable-5'(_Config) ->
   Qry = "xs:positiveInteger(\"52\") castable as xs:double",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-SeqExprCastable-6'(_Config) ->
   {skip,"XSD 1.0"}.
'K2-SeqExprCastable-7'(_Config) ->
   {skip,"XSD 1.0"}.
'K2-SeqExprCastable-8'(_Config) ->
   Qry = "(\"http:\\\\invalid>URI\\someURI\") castable as xs:anyURI",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> ct:fail('any-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Castable-UnionType-1'(_Config) ->
   {skip,"schemaImport"}.
'Castable-UnionType-2'(_Config) ->
   {skip,"schemaImport"}.
'Castable-UnionType-3'(_Config) ->
   {skip,"schemaImport"}.
'Castable-UnionType-4'(_Config) ->
   {skip,"schemaImport"}.
'Castable-UnionType-5'(_Config) ->
   {skip,"schemaImport"}.
'Castable-UnionType-6'(_Config) ->
   {skip,"schemaImport"}.
'Castable-UnionType-7'(_Config) ->
   {skip,"schemaImport"}.
'Castable-UnionType-8'(_Config) ->
   {skip,"schemaImport"}.
'Castable-UnionType-9'(_Config) ->
   {skip,"schemaImport"}.
'Castable-UnionType-10'(_Config) ->
   {skip,"schemaImport"}.
'Castable-UnionType-11'(_Config) ->
   {skip,"schemaImport"}.
'Castable-UnionType-12'(_Config) ->
   {skip,"schemaImport"}.
'Castable-UnionType-13'(_Config) ->
   {skip,"schemaImport"}.
'Castable-UnionType-14'(_Config) ->
   {skip,"schemaImport"}.
'Castable-UnionType-15'(_Config) ->
   {skip,"schemaImport"}.
'Castable-UnionType-16'(_Config) ->
   {skip,"schemaImport"}.
'Castable-UnionType-17'(_Config) ->
   {skip,"schemaImport"}.
'Castable-UnionType-18'(_Config) ->
   {skip,"schemaImport"}.
'Castable-UnionType-19'(_Config) ->
   {skip,"schemaImport"}.
'Castable-UnionType-20'(_Config) ->
   {skip,"schemaImport"}.
'Castable-UnionType-21'(_Config) ->
   {skip,"schemaImport"}.
'Castable-UnionType-22'(_Config) ->
   {skip,"schemaImport"}.
'Castable-UnionType-23'(_Config) ->
   {skip,"schemaImport"}.
'Castable-UnionType-24'(_Config) ->
   {skip,"schemaImport"}.
'Castable-UnionType-25'(_Config) ->
   {skip,"schemaImport"}.
'Castable-UnionType-26'(_Config) ->
   {skip,"schemaImport"}.
'Castable-UnionType-36'(_Config) ->
   {skip,"schemaImport"}.
'Castable-UnionType-37'(_Config) ->
   {skip,"schemaImport"}.
'Castable-UnionType-38'(_Config) ->
   {skip,"schemaImport"}.
'Castable-ListType-2'(_Config) ->
   {skip,"schemaImport"}.
'Castable-ListType-3'(_Config) ->
   {skip,"schemaImport"}.
'Castable-ListType-4'(_Config) ->
   {skip,"schemaImport"}.
'Castable-ListType-5'(_Config) ->
   {skip,"schemaImport"}.
'Castable-ListType-6'(_Config) ->
   {skip,"schemaImport"}.
'Castable-ListType-7'(_Config) ->
   {skip,"schemaImport"}.
'Castable-ListType-8'(_Config) ->
   {skip,"schemaImport"}.
'Castable-ListType-9'(_Config) ->
   {skip,"schemaImport"}.
'Castable-ListType-10'(_Config) ->
   {skip,"schemaImport"}.
'Castable-ListType-11'(_Config) ->
   {skip,"schemaImport"}.
'Castable-ListType-12'(_Config) ->
   {skip,"schemaImport"}.
'Castable-ListType-13'(_Config) ->
   {skip,"schemaImport"}.
'Castable-ListType-14'(_Config) ->
   {skip,"schemaImport"}.
'Castable-ListType-15'(_Config) ->
   {skip,"schemaImport"}.
'Castable-ListType-16'(_Config) ->
   {skip,"schemaImport"}.
'Castable-ListType-17'(_Config) ->
   {skip,"schemaImport"}.
'Castable-ListType-18'(_Config) ->
   {skip,"schemaImport"}.
'Castable-ListType-19'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-byte-001'(_Config) ->
   Qry = "128 castable as xs:byte",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-byte-002'(_Config) ->
   Qry = "-129 castable as xs:byte",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-byte-003'(_Config) ->
   Qry = "\"128\" castable as xs:byte",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-byte-004'(_Config) ->
   Qry = "\"-129\" castable as xs:byte",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-date-001'(_Config) ->
   Qry = "\"-25252734927766555-06-06\" castable as xs:date",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-date-002'(_Config) ->
   Qry = "\"25252734927766555-07-29\" castable as xs:date",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-dateTime-001'(_Config) ->
   Qry = "\"-25252734927766555-06-06T00:00:00Z\" castable as xs:dateTime",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-dateTime-002'(_Config) ->
   Qry = "\"25252734927766555-07-29T00:00:00Z\" castable as xs:dateTime",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-dayTimeDuration-001'(_Config) ->
   Qry = "\"P11768614336404564651D\" castable as xs:dayTimeDuration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-dayTimeDuration-002'(_Config) ->
   Qry = "\"-P11768614336404564651D\" castable as xs:duration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-decimal-001'(_Config) ->
   Qry = "xs:float('NaN') castable as xs:decimal",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-decimal-002'(_Config) ->
   Qry = "xs:float('-INF') castable as xs:decimal",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-decimal-003'(_Config) ->
   Qry = "xs:float('INF') castable as xs:decimal",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-decimal-004'(_Config) ->
   Qry = "xs:double('NaN') castable as xs:decimal",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-decimal-005'(_Config) ->
   Qry = "xs:double('-INF') castable as xs:decimal",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-decimal-006'(_Config) ->
   Qry = "xs:double('INF') castable as xs:decimal",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-decimal-007'(_Config) ->
   Qry = "1.7976931348623157E+308 castable as xs:decimal",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> ct:fail('any-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-decimal-008'(_Config) ->
   Qry = "-1.7976931348623157E+308 castable as xs:decimal",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> ct:fail('any-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-decimal-009'(_Config) ->
   Qry = "xs:float('3.402823e38') castable as xs:decimal",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> ct:fail('any-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-decimal-010'(_Config) ->
   Qry = "xs:float('-3.402823e38') castable as xs:decimal",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> ct:fail('any-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-duration-001'(_Config) ->
   Qry = "\"-P768614336404564651Y\" castable as xs:duration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-duration-002'(_Config) ->
   Qry = "\"P768614336404564651Y\" castable as xs:duration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-int-001'(_Config) ->
   Qry = "2147483648 castable as xs:int",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-int-002'(_Config) ->
   Qry = "-2147483649 castable as xs:int",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-int-003'(_Config) ->
   Qry = "\"2147483648\" castable as xs:int",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-int-004'(_Config) ->
   Qry = "\"-2147483649\" castable as xs:int",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-integer-001'(_Config) ->
   Qry = "1.7976931348623157E+308 castable as xs:integer",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> ct:fail('any-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-integer-002'(_Config) ->
   Qry = "-1.7976931348623157E+308 castable as xs:integer",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> ct:fail('any-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-integer-003'(_Config) ->
   Qry = "xs:float('3.402823e38') castable as xs:integer",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> ct:fail('any-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-integer-004'(_Config) ->
   Qry = "xs:float('-3.402823e38') castable as xs:integer",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> ct:fail('any-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-language-001'(_Config) ->
   Qry = "xs:language('en-gb') castable as xs:language",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-language-002'(_Config) ->
   Qry = "1.0 castable as xs:language",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-language-003'(_Config) ->
   Qry = "'en-gb' castable as xs:language",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-language-004'(_Config) ->
   Qry = "\"gobbledygook\" castable as xs:language",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-long-001'(_Config) ->
   Qry = "9223372036854775808 castable as xs:long",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOAR0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> ct:fail('any-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-long-002'(_Config) ->
   Qry = "-9223372036854775809 castable as xs:long",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOAR0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> ct:fail('any-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-long-003'(_Config) ->
   Qry = "\"9223372036854775808\" castable as xs:long",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-long-004'(_Config) ->
   Qry = "\"-9223372036854775809\" castable as xs:long",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-name-001'(_Config) ->
   Qry = "xs:NCName('NCName') castable as xs:Name",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-name-002'(_Config) ->
   Qry = "fn:current-time() castable as xs:Name",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-name-003'(_Config) ->
   Qry = "'NCName' castable as xs:Name",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-name-004'(_Config) ->
   Qry = "'N A M E' castable as xs:Name",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-ncname-001'(_Config) ->
   Qry = "xs:ID('id') castable as xs:NCName",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-ncname-002'(_Config) ->
   Qry = "fn:current-time() castable as xs:NCName",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-ncname-003'(_Config) ->
   Qry = "'NCName' castable as xs:NCName",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-ncname-004'(_Config) ->
   Qry = "'NC:Name' castable as xs:NCName",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-negativeInteger-001'(_Config) ->
   Qry = "0 castable as xs:negativeInteger",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-negativeInteger-002'(_Config) ->
   Qry = "\"0\" castable as xs:negativeInteger",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-nmtoken-001'(_Config) ->
   Qry = "xs:NMTOKEN('NMTOKEN') castable as xs:NMTOKEN",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-nmtoken-002'(_Config) ->
   Qry = "
        \"&#xD;&#xA;&#x9; foobar &#xA;&#xD;&#x9;\" castable as xs:NMTOKEN",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-nmtoken-002b'(_Config) ->
   {skip,"XP20+"}.
'cbcl-castable-nonNegativeInteger-001'(_Config) ->
   Qry = "-1 castable as xs:nonNegativeInteger",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-nonNegativeInteger-002'(_Config) ->
   Qry = "\"-1\" castable as xs:nonNegativeInteger",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-nonPositiveInteger-001'(_Config) ->
   Qry = "1 castable as xs:nonPositiveInteger",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-nonPositiveInteger-002'(_Config) ->
   Qry = "\"1\" castable as xs:nonPositiveInteger",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-positiveInteger-001'(_Config) ->
   Qry = "0 castable as xs:positiveInteger",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-positiveInteger-002'(_Config) ->
   Qry = "\"0\" castable as xs:positiveInteger",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-short-001'(_Config) ->
   Qry = "32768 castable as xs:short",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-short-002'(_Config) ->
   Qry = "-32769 castable as xs:short",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-short-003'(_Config) ->
   Qry = "\"32769\" castable as xs:short",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-short-004'(_Config) ->
   Qry = "\"-32769\" castable as xs:short",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-unsignedByte-001'(_Config) ->
   Qry = "256 castable as xs:unsignedByte",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-unsignedByte-002'(_Config) ->
   Qry = "-1 castable as xs:unsignedByte",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-unsignedByte-003'(_Config) ->
   Qry = "\"256\" castable as xs:unsignedByte",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-unsignedByte-004'(_Config) ->
   Qry = "\"-1\" castable as xs:unsignedByte",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-unsignedInt-001'(_Config) ->
   Qry = "4294967296 castable as xs:unsignedInt",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-unsignedInt-002'(_Config) ->
   Qry = "-1 castable as xs:unsignedInt",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-unsignedInt-003'(_Config) ->
   Qry = "\"4294967296\" castable as xs:unsignedInt",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-unsignedInt-004'(_Config) ->
   Qry = "\"-1\" castable as xs:unsignedInt",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-unsignedLong-001'(_Config) ->
   Qry = "18446744073709551616 castable as xs:unsignedLong",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOAR0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> ct:fail('any-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-unsignedLong-002'(_Config) ->
   Qry = "-1 castable as xs:unsignedLong",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-unsignedLong-003'(_Config) ->
   Qry = "\"18446744073709551616\" castable as xs:unsignedLong",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-unsignedLong-004'(_Config) ->
   Qry = "\"-1\" castable as xs:unsignedLong",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-unsignedShort-001'(_Config) ->
   Qry = "65536 castable as xs:unsignedShort",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-unsignedShort-002'(_Config) ->
   Qry = "-1 castable as xs:unsignedShort",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-unsignedShort-003'(_Config) ->
   Qry = "\"65536\" castable as xs:unsignedShort",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-unsignedShort-004'(_Config) ->
   Qry = "\"-1\" castable as xs:unsignedShort",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-yearMonthDuration-001'(_Config) ->
   Qry = "\"-P768614336404564651Y\" castable as xs:yearMonthDuration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-yearMonthDuration-002'(_Config) ->
   Qry = "\"P768614336404564651Y\" castable as xs:yearMonthDuration",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-nonNegativeInteger-003'(_Config) ->
   Qry = "\"-00\" castable as xs:nonNegativeInteger",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-nonPositiveInteger-003'(_Config) ->
   Qry = "\"+00\" castable as xs:nonPositiveInteger",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-unsignedByte-005'(_Config) ->
   Qry = "\"-00\" castable as xs:unsignedByte",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-unsignedInt-005'(_Config) ->
   Qry = "\"-00\" castable as xs:unsignedInt",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-unsignedLong-005'(_Config) ->
   Qry = "\"-00\" castable as xs:unsignedLong",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-unsignedShort-005'(_Config) ->
   Qry = "\"-00\" castable as xs:unsignedShort",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-gYear-001'(_Config) ->
   Qry = "\"99999999999999999999999999999\" castable as xs:gYear",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-gYearMonth-001'(_Config) ->
   Qry = "\"99999999999999999999999999999-01\" castable as xs:gYearMonth",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-gYearMonth-002'(_Config) ->
   Qry = "\"99999999999999999999999999999-XX\" castable as xs:gYearMonth",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-gYear-002'(_Config) ->
   Qry = "\"0000\" castable as xs:gYear",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FODT0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> ct:fail('any-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-gYear-003'(_Config) ->
   Qry = "\"-0000\" castable as xs:gYear",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FODT0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> ct:fail('any-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-gYearMonth-003'(_Config) ->
   Qry = "\"0000-05\" castable as xs:gYearMonth",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FODT0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> ct:fail('any-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-gYearMonth-004'(_Config) ->
   Qry = "\"-0000-05\" castable as xs:gYearMonth",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FODT0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> ct:fail('any-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-castable-ENTITIES-001'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-ENTITIES-002'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-ENTITIES-003'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-ENTITIES-004'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-ENTITIES-005'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-ENTITIES-006'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-ENTITIES-007'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-ENTITIES-008'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-ENTITIES-009'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-ENTITIES-010'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-ENTITIES-011'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-ENTITIES-012'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-ENTITIES-013'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-ENTITIES-014'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-ENTITIES-015'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-ENTITIES-016'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-ENTITIES-017'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-ENTITIES-018'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-ENTITIES-019'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-ENTITIES-020'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-NMTOKENS-001'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-NMTOKENS-002'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-NMTOKENS-003'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-NMTOKENS-004'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-NMTOKENS-005'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-NMTOKENS-006'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-NMTOKENS-007'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-NMTOKENS-008'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-NMTOKENS-009'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-NMTOKENS-010'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-NMTOKENS-011'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-NMTOKENS-012'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-NMTOKENS-013'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-NMTOKENS-014'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-NMTOKENS-015'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-NMTOKENS-016'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-NMTOKENS-017'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-NMTOKENS-018'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-NMTOKENS-019'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-NMTOKENS-020'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-IDREFS-001'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-IDREFS-002'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-IDREFS-003'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-IDREFS-004'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-IDREFS-005'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-IDREFS-006'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-IDREFS-007'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-IDREFS-008'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-IDREFS-009'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-IDREFS-010'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-IDREFS-011'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-IDREFS-012'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-IDREFS-013'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-IDREFS-014'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-IDREFS-015'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-IDREFS-016'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-IDREFS-017'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-IDREFS-018'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-IDREFS-019'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-IDREFS-020'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-impure-001'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-impure-002'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-impure-003'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-impure-004'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-impure-005'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-impure-006'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-impure-007'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-impure-008'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-impure-009'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-impure-010'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-impure-011'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-impure-012'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-impure-013'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-impure-014'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-impure-015'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-impure-016'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-impure-017'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-impure-018'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-impure-019'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-impure-020'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-restricted-union-001'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-restricted-union-002'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-restricted-union-003'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-restricted-union-004'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-restricted-union-005'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-restricted-union-006'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-restricted-union-007'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-restricted-union-008'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-restricted-union-009'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-restricted-union-010'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-restricted-union-011'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-restricted-union-012'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-restricted-union-013'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-restricted-union-014'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-restricted-union-015'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-restricted-union-016'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-restricted-union-017'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-restricted-union-018'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-restricted-union-019'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-castable-restricted-union-020'(_Config) ->
   {skip,"schemaImport"}.
