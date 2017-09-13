-module('fn_matches_re_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['re00001'/1]).
-export(['re00002'/1]).
-export(['re00003'/1]).
-export(['re00004'/1]).
-export(['re00005'/1]).
-export(['re00006'/1]).
-export(['re00007'/1]).
-export(['re00008'/1]).
-export(['re00009'/1]).
-export(['re00010'/1]).
-export(['re00011'/1]).
-export(['re00012'/1]).
-export(['re00013'/1]).
-export(['re00014'/1]).
-export(['re00015'/1]).
-export(['re00016'/1]).
-export(['re00017'/1]).
-export(['re00018'/1]).
-export(['re00019'/1]).
-export(['re00020'/1]).
-export(['re00021'/1]).
-export(['re00022'/1]).
-export(['re00023'/1]).
-export(['re00024'/1]).
-export(['re00025'/1]).
-export(['re00026'/1]).
-export(['re00027'/1]).
-export(['re00028'/1]).
-export(['re00029'/1]).
-export(['re00030'/1]).
-export(['re00031'/1]).
-export(['re00032'/1]).
-export(['re00033'/1]).
-export(['re00034'/1]).
-export(['re00035'/1]).
-export(['re00036'/1]).
-export(['re00037'/1]).
-export(['re00038'/1]).
-export(['re00039'/1]).
-export(['re00040'/1]).
-export(['re00041'/1]).
-export(['re00042'/1]).
-export(['re00043'/1]).
-export(['re00044'/1]).
-export(['re00045'/1]).
-export(['re00046'/1]).
-export(['re00047'/1]).
-export(['re00048'/1]).
-export(['re00049'/1]).
-export(['re00050'/1]).
-export(['re00051'/1]).
-export(['re00052'/1]).
-export(['re00053'/1]).
-export(['re00054'/1]).
-export(['re00055'/1]).
-export(['re00056'/1]).
-export(['re00056a'/1]).
-export(['re00057'/1]).
-export(['re00058'/1]).
-export(['re00059'/1]).
-export(['re00060'/1]).
-export(['re00061'/1]).
-export(['re00062'/1]).
-export(['re00063'/1]).
-export(['re00064'/1]).
-export(['re00065'/1]).
-export(['re00066'/1]).
-export(['re00067'/1]).
-export(['re00068'/1]).
-export(['re00069'/1]).
-export(['re00070'/1]).
-export(['re00071'/1]).
-export(['re00072'/1]).
-export(['re00073'/1]).
-export(['re00074'/1]).
-export(['re00075'/1]).
-export(['re00076'/1]).
-export(['re00077'/1]).
-export(['re00078'/1]).
-export(['re00079'/1]).
-export(['re00080'/1]).
-export(['re00081'/1]).
-export(['re00082'/1]).
-export(['re00083'/1]).
-export(['re00084'/1]).
-export(['re00085'/1]).
-export(['re00086'/1]).
-export(['re00086a'/1]).
-export(['re00087'/1]).
-export(['re00088'/1]).
-export(['re00089'/1]).
-export(['re00090'/1]).
-export(['re00091'/1]).
-export(['re00092'/1]).
-export(['re00093'/1]).
-export(['re00094'/1]).
-export(['re00095'/1]).
-export(['re00096'/1]).
-export(['re00097'/1]).
-export(['re00098'/1]).
-export(['re00099'/1]).
-export(['re00100'/1]).
-export(['re00101'/1]).
-export(['re00102'/1]).
-export(['re00102a'/1]).
-export(['re00103'/1]).
-export(['re00104'/1]).
-export(['re00105'/1]).
-export(['re00106'/1]).
-export(['re00107'/1]).
-export(['re00108'/1]).
-export(['re00109'/1]).
-export(['re00110'/1]).
-export(['re00111'/1]).
-export(['re00112'/1]).
-export(['re00113'/1]).
-export(['re00114'/1]).
-export(['re00115'/1]).
-export(['re00116'/1]).
-export(['re00117'/1]).
-export(['re00118'/1]).
-export(['re00119'/1]).
-export(['re00120'/1]).
-export(['re00121'/1]).
-export(['re00122'/1]).
-export(['re00123'/1]).
-export(['re00124'/1]).
-export(['re00125'/1]).
-export(['re00126'/1]).
-export(['re00127'/1]).
-export(['re00127a'/1]).
-export(['re00128'/1]).
-export(['re00129'/1]).
-export(['re00129a'/1]).
-export(['re00130'/1]).
-export(['re00130a'/1]).
-export(['re00131'/1]).
-export(['re00132'/1]).
-export(['re00133'/1]).
-export(['re00134'/1]).
-export(['re00135'/1]).
-export(['re00136'/1]).
-export(['re00137'/1]).
-export(['re00138'/1]).
-export(['re00139'/1]).
-export(['re00140'/1]).
-export(['re00141'/1]).
-export(['re00142'/1]).
-export(['re00143'/1]).
-export(['re00144'/1]).
-export(['re00145'/1]).
-export(['re00146'/1]).
-export(['re00147'/1]).
-export(['re00148'/1]).
-export(['re00149'/1]).
-export(['re00150'/1]).
-export(['re00151'/1]).
-export(['re00152'/1]).
-export(['re00153'/1]).
-export(['re00154'/1]).
-export(['re00155'/1]).
-export(['re00156'/1]).
-export(['re00157'/1]).
-export(['re00158'/1]).
-export(['re00159'/1]).
-export(['re00160'/1]).
-export(['re00161'/1]).
-export(['re00162'/1]).
-export(['re00163'/1]).
-export(['re00164'/1]).
-export(['re00165'/1]).
-export(['re00166'/1]).
-export(['re00167'/1]).
-export(['re00168'/1]).
-export(['re00169'/1]).
-export(['re00170'/1]).
-export(['re00171'/1]).
-export(['re00172'/1]).
-export(['re00173'/1]).
-export(['re00174'/1]).
-export(['re00175'/1]).
-export(['re00176'/1]).
-export(['re00177'/1]).
-export(['re00178'/1]).
-export(['re00179'/1]).
-export(['re00180'/1]).
-export(['re00181'/1]).
-export(['re00182'/1]).
-export(['re00183'/1]).
-export(['re00184'/1]).
-export(['re00185'/1]).
-export(['re00186'/1]).
-export(['re00187'/1]).
-export(['re00188'/1]).
-export(['re00189'/1]).
-export(['re00190'/1]).
-export(['re00191'/1]).
-export(['re00192'/1]).
-export(['re00193'/1]).
-export(['re00194'/1]).
-export(['re00195'/1]).
-export(['re00196'/1]).
-export(['re00197'/1]).
-export(['re00198'/1]).
-export(['re00199'/1]).
-export(['re00200'/1]).
-export(['re00201'/1]).
-export(['re00202'/1]).
-export(['re00203'/1]).
-export(['re00204'/1]).
-export(['re00205'/1]).
-export(['re00206'/1]).
-export(['re00207'/1]).
-export(['re00208'/1]).
-export(['re00209'/1]).
-export(['re00210'/1]).
-export(['re00211'/1]).
-export(['re00212'/1]).
-export(['re00213'/1]).
-export(['re00214'/1]).
-export(['re00215'/1]).
-export(['re00216'/1]).
-export(['re00217'/1]).
-export(['re00218'/1]).
-export(['re00219'/1]).
-export(['re00220'/1]).
-export(['re00221'/1]).
-export(['re00222'/1]).
-export(['re00223'/1]).
-export(['re00224'/1]).
-export(['re00225'/1]).
-export(['re00226'/1]).
-export(['re00227'/1]).
-export(['re00228'/1]).
-export(['re00229'/1]).
-export(['re00230'/1]).
-export(['re00231'/1]).
-export(['re00232'/1]).
-export(['re00233'/1]).
-export(['re00234'/1]).
-export(['re00235'/1]).
-export(['re00236'/1]).
-export(['re00237'/1]).
-export(['re00238'/1]).
-export(['re00239'/1]).
-export(['re00240'/1]).
-export(['re00241'/1]).
-export(['re00242'/1]).
-export(['re00243'/1]).
-export(['re00244'/1]).
-export(['re00245'/1]).
-export(['re00246'/1]).
-export(['re00247'/1]).
-export(['re00248'/1]).
-export(['re00249'/1]).
-export(['re00250'/1]).
-export(['re00251'/1]).
-export(['re00252'/1]).
-export(['re00253'/1]).
-export(['re00254'/1]).
-export(['re00255'/1]).
-export(['re00256'/1]).
-export(['re00257'/1]).
-export(['re00258'/1]).
-export(['re00259'/1]).
-export(['re00260'/1]).
-export(['re00261'/1]).
-export(['re00262'/1]).
-export(['re00263'/1]).
-export(['re00264'/1]).
-export(['re00265'/1]).
-export(['re00266'/1]).
-export(['re00267'/1]).
-export(['re00268'/1]).
-export(['re00269'/1]).
-export(['re00270'/1]).
-export(['re00271'/1]).
-export(['re00272'/1]).
-export(['re00273'/1]).
-export(['re00274'/1]).
-export(['re00275'/1]).
-export(['re00276'/1]).
-export(['re00277'/1]).
-export(['re00278'/1]).
-export(['re00279'/1]).
-export(['re00280'/1]).
-export(['re00281'/1]).
-export(['re00282'/1]).
-export(['re00283'/1]).
-export(['re00284'/1]).
-export(['re00285'/1]).
-export(['re00286'/1]).
-export(['re00287'/1]).
-export(['re00288'/1]).
-export(['re00289'/1]).
-export(['re00290'/1]).
-export(['re00291'/1]).
-export(['re00292'/1]).
-export(['re00293'/1]).
-export(['re00294'/1]).
-export(['re00295'/1]).
-export(['re00296'/1]).
-export(['re00297'/1]).
-export(['re00298'/1]).
-export(['re00299'/1]).
-export(['re00300'/1]).
-export(['re00301'/1]).
-export(['re00302'/1]).
-export(['re00303'/1]).
-export(['re00304'/1]).
-export(['re00305'/1]).
-export(['re00306'/1]).
-export(['re00307'/1]).
-export(['re00308'/1]).
-export(['re00309'/1]).
-export(['re00310'/1]).
-export(['re00311'/1]).
-export(['re00312'/1]).
-export(['re00313'/1]).
-export(['re00314'/1]).
-export(['re00315'/1]).
-export(['re00316'/1]).
-export(['re00317'/1]).
-export(['re00318'/1]).
-export(['re00319'/1]).
-export(['re00320'/1]).
-export(['re00321'/1]).
-export(['re00322'/1]).
-export(['re00323'/1]).
-export(['re00324'/1]).
-export(['re00325'/1]).
-export(['re00326'/1]).
-export(['re00327'/1]).
-export(['re00328'/1]).
-export(['re00329'/1]).
-export(['re00330'/1]).
-export(['re00331'/1]).
-export(['re00332'/1]).
-export(['re00333'/1]).
-export(['re00334'/1]).
-export(['re00335'/1]).
-export(['re00336'/1]).
-export(['re00337'/1]).
-export(['re00338'/1]).
-export(['re00339'/1]).
-export(['re00340'/1]).
-export(['re00341'/1]).
-export(['re00342'/1]).
-export(['re00343'/1]).
-export(['re00344'/1]).
-export(['re00345'/1]).
-export(['re00346'/1]).
-export(['re00347'/1]).
-export(['re00348'/1]).
-export(['re00349'/1]).
-export(['re00350'/1]).
-export(['re00351'/1]).
-export(['re00352'/1]).
-export(['re00353'/1]).
-export(['re00354'/1]).
-export(['re00355'/1]).
-export(['re00356'/1]).
-export(['re00357'/1]).
-export(['re00358'/1]).
-export(['re00359'/1]).
-export(['re00360'/1]).
-export(['re00361'/1]).
-export(['re00362'/1]).
-export(['re00363'/1]).
-export(['re00364'/1]).
-export(['re00365'/1]).
-export(['re00366'/1]).
-export(['re00367'/1]).
-export(['re00368'/1]).
-export(['re00369'/1]).
-export(['re00370'/1]).
-export(['re00371'/1]).
-export(['re00372'/1]).
-export(['re00373'/1]).
-export(['re00374'/1]).
-export(['re00375'/1]).
-export(['re00376'/1]).
-export(['re00377'/1]).
-export(['re00378'/1]).
-export(['re00379'/1]).
-export(['re00380'/1]).
-export(['re00381'/1]).
-export(['re00382'/1]).
-export(['re00383'/1]).
-export(['re00384'/1]).
-export(['re00385'/1]).
-export(['re00386'/1]).
-export(['re00387'/1]).
-export(['re00388'/1]).
-export(['re00389'/1]).
-export(['re00390'/1]).
-export(['re00391'/1]).
-export(['re00392'/1]).
-export(['re00393'/1]).
-export(['re00394'/1]).
-export(['re00395'/1]).
-export(['re00396'/1]).
-export(['re00397'/1]).
-export(['re00398'/1]).
-export(['re00399'/1]).
-export(['re00400'/1]).
-export(['re00401'/1]).
-export(['re00402'/1]).
-export(['re00403'/1]).
-export(['re00404'/1]).
-export(['re00405'/1]).
-export(['re00406'/1]).
-export(['re00407'/1]).
-export(['re00408'/1]).
-export(['re00409'/1]).
-export(['re00410'/1]).
-export(['re00411'/1]).
-export(['re00412'/1]).
-export(['re00413'/1]).
-export(['re00414'/1]).
-export(['re00415'/1]).
-export(['re00416'/1]).
-export(['re00417'/1]).
-export(['re00418'/1]).
-export(['re00419'/1]).
-export(['re00420'/1]).
-export(['re00421'/1]).
-export(['re00422'/1]).
-export(['re00423'/1]).
-export(['re00424'/1]).
-export(['re00425'/1]).
-export(['re00426'/1]).
-export(['re00427'/1]).
-export(['re00428'/1]).
-export(['re00429'/1]).
-export(['re00430'/1]).
-export(['re00431'/1]).
-export(['re00432'/1]).
-export(['re00433'/1]).
-export(['re00434'/1]).
-export(['re00435'/1]).
-export(['re00436'/1]).
-export(['re00437'/1]).
-export(['re00438'/1]).
-export(['re00439'/1]).
-export(['re00440'/1]).
-export(['re00441'/1]).
-export(['re00442'/1]).
-export(['re00443'/1]).
-export(['re00444'/1]).
-export(['re00445'/1]).
-export(['re00446'/1]).
-export(['re00447'/1]).
-export(['re00448'/1]).
-export(['re00449'/1]).
-export(['re00450'/1]).
-export(['re00451'/1]).
-export(['re00452'/1]).
-export(['re00453'/1]).
-export(['re00454'/1]).
-export(['re00455'/1]).
-export(['re00456'/1]).
-export(['re00457'/1]).
-export(['re00458'/1]).
-export(['re00459'/1]).
-export(['re00460'/1]).
-export(['re00461'/1]).
-export(['re00462'/1]).
-export(['re00463'/1]).
-export(['re00464'/1]).
-export(['re00465'/1]).
-export(['re00466'/1]).
-export(['re00467'/1]).
-export(['re00468'/1]).
-export(['re00469'/1]).
-export(['re00470'/1]).
-export(['re00471'/1]).
-export(['re00472'/1]).
-export(['re00473'/1]).
-export(['re00474'/1]).
-export(['re00475'/1]).
-export(['re00476'/1]).
-export(['re00477'/1]).
-export(['re00478'/1]).
-export(['re00479'/1]).
-export(['re00480'/1]).
-export(['re00481'/1]).
-export(['re00482'/1]).
-export(['re00483'/1]).
-export(['re00484'/1]).
-export(['re00485'/1]).
-export(['re00486'/1]).
-export(['re00487'/1]).
-export(['re00488'/1]).
-export(['re00489'/1]).
-export(['re00490'/1]).
-export(['re00491'/1]).
-export(['re00492'/1]).
-export(['re00493'/1]).
-export(['re00494'/1]).
-export(['re00495'/1]).
-export(['re00496'/1]).
-export(['re00497'/1]).
-export(['re00498'/1]).
-export(['re00499'/1]).
-export(['re00500'/1]).
-export(['re00501'/1]).
-export(['re00502'/1]).
-export(['re00503'/1]).
-export(['re00504'/1]).
-export(['re00505'/1]).
-export(['re00506'/1]).
-export(['re00507'/1]).
-export(['re00508'/1]).
-export(['re00509'/1]).
-export(['re00510'/1]).
-export(['re00511'/1]).
-export(['re00512'/1]).
-export(['re00513'/1]).
-export(['re00514'/1]).
-export(['re00515'/1]).
-export(['re00516'/1]).
-export(['re00517'/1]).
-export(['re00518'/1]).
-export(['re00519'/1]).
-export(['re00520'/1]).
-export(['re00521'/1]).
-export(['re00522'/1]).
-export(['re00523'/1]).
-export(['re00524'/1]).
-export(['re00525'/1]).
-export(['re00526'/1]).
-export(['re00527'/1]).
-export(['re00528'/1]).
-export(['re00529'/1]).
-export(['re00530'/1]).
-export(['re00531'/1]).
-export(['re00532'/1]).
-export(['re00533'/1]).
-export(['re00534'/1]).
-export(['re00535'/1]).
-export(['re00536'/1]).
-export(['re00537'/1]).
-export(['re00538'/1]).
-export(['re00539'/1]).
-export(['re00540'/1]).
-export(['re00541'/1]).
-export(['re00542'/1]).
-export(['re00543'/1]).
-export(['re00544'/1]).
-export(['re00545'/1]).
-export(['re00546'/1]).
-export(['re00547'/1]).
-export(['re00548'/1]).
-export(['re00549'/1]).
-export(['re00550'/1]).
-export(['re00551'/1]).
-export(['re00552'/1]).
-export(['re00553'/1]).
-export(['re00554'/1]).
-export(['re00555'/1]).
-export(['re00556'/1]).
-export(['re00557'/1]).
-export(['re00558'/1]).
-export(['re00559'/1]).
-export(['re00560'/1]).
-export(['re00561'/1]).
-export(['re00562'/1]).
-export(['re00563'/1]).
-export(['re00564'/1]).
-export(['re00565'/1]).
-export(['re00566'/1]).
-export(['re00567'/1]).
-export(['re00568'/1]).
-export(['re00569'/1]).
-export(['re00570'/1]).
-export(['re00571'/1]).
-export(['re00572'/1]).
-export(['re00573'/1]).
-export(['re00574'/1]).
-export(['re00575'/1]).
-export(['re00576'/1]).
-export(['re00577'/1]).
-export(['re00578'/1]).
-export(['re00579'/1]).
-export(['re00580'/1]).
-export(['re00581'/1]).
-export(['re00582'/1]).
-export(['re00583'/1]).
-export(['re00584'/1]).
-export(['re00585'/1]).
-export(['re00586'/1]).
-export(['re00587'/1]).
-export(['re00588'/1]).
-export(['re00589'/1]).
-export(['re00590'/1]).
-export(['re00591'/1]).
-export(['re00592'/1]).
-export(['re00593'/1]).
-export(['re00594'/1]).
-export(['re00595'/1]).
-export(['re00596'/1]).
-export(['re00597'/1]).
-export(['re00598'/1]).
-export(['re00599'/1]).
-export(['re00600'/1]).
-export(['re00601'/1]).
-export(['re00602'/1]).
-export(['re00603'/1]).
-export(['re00604'/1]).
-export(['re00605'/1]).
-export(['re00606'/1]).
-export(['re00607'/1]).
-export(['re00608'/1]).
-export(['re00609'/1]).
-export(['re00610'/1]).
-export(['re00611'/1]).
-export(['re00612'/1]).
-export(['re00613'/1]).
-export(['re00614'/1]).
-export(['re00615'/1]).
-export(['re00616'/1]).
-export(['re00617'/1]).
-export(['re00618'/1]).
-export(['re00619'/1]).
-export(['re00620'/1]).
-export(['re00621'/1]).
-export(['re00622'/1]).
-export(['re00623'/1]).
-export(['re00624'/1]).
-export(['re00625'/1]).
-export(['re00626'/1]).
-export(['re00627'/1]).
-export(['re00628'/1]).
-export(['re00629'/1]).
-export(['re00630'/1]).
-export(['re00631'/1]).
-export(['re00632'/1]).
-export(['re00633'/1]).
-export(['re00634'/1]).
-export(['re00635'/1]).
-export(['re00636'/1]).
-export(['re00637'/1]).
-export(['re00638'/1]).
-export(['re00639'/1]).
-export(['re00640'/1]).
-export(['re00641'/1]).
-export(['re00642'/1]).
-export(['re00643'/1]).
-export(['re00644'/1]).
-export(['re00645'/1]).
-export(['re00646'/1]).
-export(['re00647'/1]).
-export(['re00648'/1]).
-export(['re00649'/1]).
-export(['re00650'/1]).
-export(['re00651'/1]).
-export(['re00652'/1]).
-export(['re00653'/1]).
-export(['re00654'/1]).
-export(['re00655'/1]).
-export(['re00656'/1]).
-export(['re00657'/1]).
-export(['re00658'/1]).
-export(['re00659'/1]).
-export(['re00660'/1]).
-export(['re00661'/1]).
-export(['re00662'/1]).
-export(['re00663'/1]).
-export(['re00664'/1]).
-export(['re00665'/1]).
-export(['re00666'/1]).
-export(['re00667'/1]).
-export(['re00668'/1]).
-export(['re00669'/1]).
-export(['re00670'/1]).
-export(['re00671'/1]).
-export(['re00672'/1]).
-export(['re00673'/1]).
-export(['re00674'/1]).
-export(['re00675'/1]).
-export(['re00676'/1]).
-export(['re00677'/1]).
-export(['re00678'/1]).
-export(['re00679'/1]).
-export(['re00680'/1]).
-export(['re00681'/1]).
-export(['re00682'/1]).
-export(['re00683'/1]).
-export(['re00684'/1]).
-export(['re00685'/1]).
-export(['re00686'/1]).
-export(['re00687'/1]).
-export(['re00688'/1]).
-export(['re00689'/1]).
-export(['re00690'/1]).
-export(['re00691'/1]).
-export(['re00692'/1]).
-export(['re00693'/1]).
-export(['re00694'/1]).
-export(['re00695'/1]).
-export(['re00696'/1]).
-export(['re00697'/1]).
-export(['re00698'/1]).
-export(['re00699'/1]).
-export(['re00700'/1]).
-export(['re00701'/1]).
-export(['re00702'/1]).
-export(['re00703'/1]).
-export(['re00704'/1]).
-export(['re00705'/1]).
-export(['re00706'/1]).
-export(['re00707'/1]).
-export(['re00708'/1]).
-export(['re00709'/1]).
-export(['re00710'/1]).
-export(['re00711'/1]).
-export(['re00712'/1]).
-export(['re00713'/1]).
-export(['re00714'/1]).
-export(['re00715'/1]).
-export(['re00716'/1]).
-export(['re00717'/1]).
-export(['re00718'/1]).
-export(['re00719'/1]).
-export(['re00720'/1]).
-export(['re00721'/1]).
-export(['re00722'/1]).
-export(['re00723'/1]).
-export(['re00724'/1]).
-export(['re00725'/1]).
-export(['re00726'/1]).
-export(['re00727'/1]).
-export(['re00728'/1]).
-export(['re00729'/1]).
-export(['re00730'/1]).
-export(['re00731'/1]).
-export(['re00732'/1]).
-export(['re00733'/1]).
-export(['re00734'/1]).
-export(['re00735'/1]).
-export(['re00736'/1]).
-export(['re00737'/1]).
-export(['re00738'/1]).
-export(['re00739'/1]).
-export(['re00740'/1]).
-export(['re00741'/1]).
-export(['re00742'/1]).
-export(['re00743'/1]).
-export(['re00744'/1]).
-export(['re00745'/1]).
-export(['re00746'/1]).
-export(['re00747'/1]).
-export(['re00748'/1]).
-export(['re00749'/1]).
-export(['re00750'/1]).
-export(['re00751'/1]).
-export(['re00752'/1]).
-export(['re00753'/1]).
-export(['re00754'/1]).
-export(['re00755'/1]).
-export(['re00756'/1]).
-export(['re00757'/1]).
-export(['re00758'/1]).
-export(['re00759'/1]).
-export(['re00760'/1]).
-export(['re00761'/1]).
-export(['re00762'/1]).
-export(['re00763'/1]).
-export(['re00764'/1]).
-export(['re00765'/1]).
-export(['re00766'/1]).
-export(['re00767'/1]).
-export(['re00768'/1]).
-export(['re00769'/1]).
-export(['re00770'/1]).
-export(['re00771'/1]).
-export(['re00772'/1]).
-export(['re00773'/1]).
-export(['re00774'/1]).
-export(['re00775'/1]).
-export(['re00776'/1]).
-export(['re00777'/1]).
-export(['re00778'/1]).
-export(['re00779'/1]).
-export(['re00780'/1]).
-export(['re00781'/1]).
-export(['re00782'/1]).
-export(['re00783'/1]).
-export(['re00784'/1]).
-export(['re00785'/1]).
-export(['re00786'/1]).
-export(['re00787'/1]).
-export(['re00788'/1]).
-export(['re00789'/1]).
-export(['re00790'/1]).
-export(['re00791'/1]).
-export(['re00792'/1]).
-export(['re00793'/1]).
-export(['re00794'/1]).
-export(['re00795'/1]).
-export(['re00796'/1]).
-export(['re00797'/1]).
-export(['re00798'/1]).
-export(['re00799'/1]).
-export(['re00800'/1]).
-export(['re00801'/1]).
-export(['re00802'/1]).
-export(['re00803'/1]).
-export(['re00804'/1]).
-export(['re00805'/1]).
-export(['re00806'/1]).
-export(['re00807'/1]).
-export(['re00808'/1]).
-export(['re00809'/1]).
-export(['re00810'/1]).
-export(['re00811'/1]).
-export(['re00812'/1]).
-export(['re00813'/1]).
-export(['re00814'/1]).
-export(['re00815'/1]).
-export(['re00816'/1]).
-export(['re00817'/1]).
-export(['re00818'/1]).
-export(['re00819'/1]).
-export(['re00820'/1]).
-export(['re00821'/1]).
-export(['re00822'/1]).
-export(['re00823'/1]).
-export(['re00824'/1]).
-export(['re00825'/1]).
-export(['re00826'/1]).
-export(['re00827'/1]).
-export(['re00828'/1]).
-export(['re00829'/1]).
-export(['re00830'/1]).
-export(['re00831'/1]).
-export(['re00832'/1]).
-export(['re00833'/1]).
-export(['re00834'/1]).
-export(['re00835'/1]).
-export(['re00836'/1]).
-export(['re00837'/1]).
-export(['re00838'/1]).
-export(['re00839'/1]).
-export(['re00840'/1]).
-export(['re00841'/1]).
-export(['re00842'/1]).
-export(['re00843'/1]).
-export(['re00844'/1]).
-export(['re00845'/1]).
-export(['re00846'/1]).
-export(['re00847'/1]).
-export(['re00848'/1]).
-export(['re00849'/1]).
-export(['re00850'/1]).
-export(['re00851'/1]).
-export(['re00852'/1]).
-export(['re00853'/1]).
-export(['re00854'/1]).
-export(['re00855'/1]).
-export(['re00856'/1]).
-export(['re00857'/1]).
-export(['re00858'/1]).
-export(['re00859'/1]).
-export(['re00860'/1]).
-export(['re00861'/1]).
-export(['re00862'/1]).
-export(['re00863'/1]).
-export(['re00864'/1]).
-export(['re00865'/1]).
-export(['re00866'/1]).
-export(['re00867'/1]).
-export(['re00868'/1]).
-export(['re00869'/1]).
-export(['re00870'/1]).
-export(['re00871'/1]).
-export(['re00872'/1]).
-export(['re00873'/1]).
-export(['re00874'/1]).
-export(['re00875'/1]).
-export(['re00876'/1]).
-export(['re00877'/1]).
-export(['re00878'/1]).
-export(['re00879'/1]).
-export(['re00880'/1]).
-export(['re00881'/1]).
-export(['re00882'/1]).
-export(['re00883'/1]).
-export(['re00884'/1]).
-export(['re00885'/1]).
-export(['re00886'/1]).
-export(['re00887'/1]).
-export(['re00888'/1]).
-export(['re00889'/1]).
-export(['re00890'/1]).
-export(['re00891'/1]).
-export(['re00892'/1]).
-export(['re00893'/1]).
-export(['re00894'/1]).
-export(['re00895'/1]).
-export(['re00896'/1]).
-export(['re00897'/1]).
-export(['re00898'/1]).
-export(['re00899'/1]).
-export(['re00900'/1]).
-export(['re00901'/1]).
-export(['re00902'/1]).
-export(['re00903'/1]).
-export(['re00904'/1]).
-export(['re00905'/1]).
-export(['re00906'/1]).
-export(['re00907'/1]).
-export(['re00908'/1]).
-export(['re00909'/1]).
-export(['re00910'/1]).
-export(['re00911'/1]).
-export(['re00912'/1]).
-export(['re00913'/1]).
-export(['re00914'/1]).
-export(['re00915'/1]).
-export(['re00916'/1]).
-export(['re00917'/1]).
-export(['re00918'/1]).
-export(['re00919'/1]).
-export(['re00920'/1]).
-export(['re00921'/1]).
-export(['re00922'/1]).
-export(['re00923'/1]).
-export(['re00924'/1]).
-export(['re00925'/1]).
-export(['re00926'/1]).
-export(['re00927'/1]).
-export(['re00928'/1]).
-export(['re00929'/1]).
-export(['re00930'/1]).
-export(['re00931'/1]).
-export(['re00932'/1]).
-export(['re00933'/1]).
-export(['re00934'/1]).
-export(['re00935'/1]).
-export(['re00936'/1]).
-export(['re00937'/1]).
-export(['re00938'/1]).
-export(['re00939'/1]).
-export(['re00940'/1]).
-export(['re00941'/1]).
-export(['re00942'/1]).
-export(['re00943'/1]).
-export(['re00944'/1]).
-export(['re00945'/1]).
-export(['re00946'/1]).
-export(['re00947'/1]).
-export(['re00948'/1]).
-export(['re00949'/1]).
-export(['re00950'/1]).
-export(['re00951'/1]).
-export(['re00952'/1]).
-export(['re00953'/1]).
-export(['re00954'/1]).
-export(['re00955'/1]).
-export(['re00956'/1]).
-export(['re00957'/1]).
-export(['re00958'/1]).
-export(['re00959'/1]).
-export(['re00960'/1]).
-export(['re00961'/1]).
-export(['re00962'/1]).
-export(['re00963'/1]).
-export(['re00964'/1]).
-export(['re00965'/1]).
-export(['re00966'/1]).
-export(['re00967'/1]).
-export(['re00968'/1]).
-export(['re00969'/1]).
-export(['re00970'/1]).
-export(['re00971'/1]).
-export(['re00972'/1]).
-export(['re00973'/1]).
-export(['re00974'/1]).
-export(['re00975'/1]).
-export(['re00976'/1]).
-export(['re00976a'/1]).
-export(['re00976b'/1]).
-export(['re00977'/1]).
-export(['re00978'/1]).
-export(['re00979'/1]).
-export(['re00980'/1]).
-export(['re00981'/1]).
-export(['re00982'/1]).
-export(['re00983'/1]).
-export(['re00984'/1]).
-export(['re00985'/1]).
-export(['re00987'/1]).
-export(['re00988'/1]).
-export(['re00989'/1]).
-export(['re00990'/1]).
-export(['re00991'/1]).
-export(['re00992'/1]).
-export(['re00993'/1]).
-export(['re00994'/1]).
-export(['re00995'/1]).
-export(['re00996'/1]).
-export(['re00997'/1]).
-export(['re00998'/1]).
-export(['re00999'/1]).
-export(['re01000'/1]).
-export(['re01001'/1]).
-export(['re01002'/1]).
-export(['re01003'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   're00001',
   're00002',
   're00003',
   're00004',
   're00005',
   're00006',
   're00007',
   're00008',
   're00009',
   're00010',
   're00011',
   're00012',
   're00013',
   're00014',
   're00015',
   're00016',
   're00017',
   're00018',
   're00019',
   're00020',
   're00021',
   're00022',
   're00023',
   're00024',
   're00025',
   're00026',
   're00027',
   're00028',
   're00029',
   're00030',
   're00031',
   're00032',
   're00033',
   're00034',
   're00035',
   're00036',
   're00037',
   're00038',
   're00039',
   're00040',
   're00041',
   're00042',
   're00043',
   're00044',
   're00045',
   're00046',
   're00047',
   're00048',
   're00049',
   're00050',
   're00051',
   're00052',
   're00053',
   're00054',
   're00055',
   're00056',
   're00056a',
   're00057',
   're00058',
   're00059',
   're00060',
   're00061',
   're00062',
   're00063',
   're00064',
   're00065',
   're00066',
   're00067',
   're00068',
   're00069',
   're00070',
   're00071',
   're00072',
   're00073',
   're00074',
   're00075',
   're00076',
   're00077',
   're00078',
   're00079',
   're00080',
   're00081',
   're00082',
   're00083',
   're00084',
   're00085',
   're00086',
   're00086a',
   're00087',
   're00088',
   're00089',
   're00090',
   're00091',
   're00092',
   're00093',
   're00094',
   're00095',
   're00096',
   're00097',
   're00098',
   're00099',
   're00100',
   're00101',
   're00102',
   're00102a',
   're00103',
   're00104',
   're00105',
   're00106',
   're00107',
   're00108',
   're00109',
   're00110',
   're00111',
   're00112',
   're00113',
   're00114',
   're00115',
   're00116',
   're00117',
   're00118',
   're00119',
   're00120',
   're00121',
   're00122',
   're00123',
   're00124',
   're00125',
   're00126',
   're00127',
   're00127a',
   're00128',
   're00129',
   're00129a',
   're00130',
   're00130a',
   're00131',
   're00132',
   're00133',
   're00134',
   're00135',
   're00136',
   're00137',
   're00138',
   're00139',
   're00140',
   're00141',
   're00142',
   're00143',
   're00144',
   're00145',
   're00146',
   're00147',
   're00148',
   're00149',
   're00150',
   're00151',
   're00152',
   're00153',
   're00154',
   're00155',
   're00156',
   're00157',
   're00158',
   're00159',
   're00160',
   're00161',
   're00162',
   're00163',
   're00164',
   're00165',
   're00166',
   're00167',
   're00168',
   're00169',
   're00170',
   're00171',
   're00172',
   're00173',
   're00174',
   're00175',
   're00176',
   're00177',
   're00178',
   're00179',
   're00180',
   're00181',
   're00182',
   're00183',
   're00184',
   're00185',
   're00186',
   're00187',
   're00188',
   're00189',
   're00190',
   're00191',
   're00192',
   're00193',
   're00194',
   're00195',
   're00196',
   're00197',
   're00198',
   're00199',
   're00200',
   're00201',
   're00202',
   're00203',
   're00204',
   're00205',
   're00206',
   're00207',
   're00208',
   're00209',
   're00210',
   're00211',
   're00212',
   're00213',
   're00214',
   're00215',
   're00216',
   're00217',
   're00218',
   're00219',
   're00220',
   're00221',
   're00222',
   're00223',
   're00224',
   're00225',
   're00226',
   're00227',
   're00228',
   're00229',
   're00230',
   're00231',
   're00232',
   're00233',
   're00234',
   're00235',
   're00236',
   're00237',
   're00238',
   're00239',
   're00240',
   're00241',
   're00242',
   're00243',
   're00244',
   're00245',
   're00246',
   're00247',
   're00248',
   're00249',
   're00250',
   're00251',
   're00252',
   're00253',
   're00254',
   're00255',
   're00256',
   're00257',
   're00258',
   're00259',
   're00260',
   're00261',
   're00262',
   're00263',
   're00264',
   're00265',
   're00266',
   're00267',
   're00268',
   're00269',
   're00270',
   're00271',
   're00272',
   're00273',
   're00274',
   're00275',
   're00276',
   're00277',
   're00278',
   're00279',
   're00280',
   're00281',
   're00282',
   're00283',
   're00284',
   're00285',
   're00286',
   're00287',
   're00288',
   're00289',
   're00290',
   're00291',
   're00292',
   're00293',
   're00294',
   're00295',
   're00296',
   're00297',
   're00298',
   're00299',
   're00300',
   're00301',
   're00302',
   're00303',
   're00304',
   're00305',
   're00306',
   're00307',
   're00308',
   're00309',
   're00310',
   're00311',
   're00312',
   're00313',
   're00314',
   're00315',
   're00316',
   're00317',
   're00318',
   're00319',
   're00320',
   're00321',
   're00322',
   're00323',
   're00324',
   're00325',
   're00326',
   're00327',
   're00328',
   're00329',
   're00330',
   're00331',
   're00332',
   're00333',
   're00334',
   're00335',
   're00336',
   're00337',
   're00338',
   're00339',
   're00340',
   're00341',
   're00342',
   're00343',
   're00344',
   're00345',
   're00346',
   're00347',
   're00348',
   're00349',
   're00350',
   're00351',
   're00352',
   're00353',
   're00354',
   're00355',
   're00356',
   're00357',
   're00358',
   're00359',
   're00360',
   're00361',
   're00362',
   're00363',
   're00364',
   're00365',
   're00366',
   're00367',
   're00368',
   're00369',
   're00370',
   're00371',
   're00372',
   're00373',
   're00374',
   're00375',
   're00376',
   're00377',
   're00378',
   're00379',
   're00380',
   're00381',
   're00382',
   're00383',
   're00384',
   're00385',
   're00386',
   're00387',
   're00388',
   're00389',
   're00390',
   're00391',
   're00392',
   're00393',
   're00394',
   're00395',
   're00396',
   're00397',
   're00398',
   're00399',
   're00400',
   're00401',
   're00402',
   're00403',
   're00404',
   're00405',
   're00406',
   're00407',
   're00408',
   're00409',
   're00410',
   're00411',
   're00412',
   're00413',
   're00414',
   're00415',
   're00416',
   're00417',
   're00418',
   're00419',
   're00420',
   're00421',
   're00422',
   're00423',
   're00424',
   're00425',
   're00426',
   're00427',
   're00428',
   're00429',
   're00430',
   're00431',
   're00432',
   're00433',
   're00434',
   're00435',
   're00436',
   're00437',
   're00438',
   're00439',
   're00440',
   're00441',
   're00442',
   're00443',
   're00444',
   're00445',
   're00446',
   're00447',
   're00448',
   're00449',
   're00450',
   're00451',
   're00452',
   're00453',
   're00454',
   're00455',
   're00456',
   're00457',
   're00458',
   're00459',
   're00460',
   're00461',
   're00462',
   're00463',
   're00464',
   're00465',
   're00466',
   're00467',
   're00468',
   're00469',
   're00470',
   're00471',
   're00472',
   're00473',
   're00474',
   're00475',
   're00476',
   're00477',
   're00478',
   're00479',
   're00480',
   're00481',
   're00482',
   're00483',
   're00484',
   're00485',
   're00486',
   're00487',
   're00488',
   're00489',
   're00490',
   're00491',
   're00492',
   're00493',
   're00494',
   're00495',
   're00496',
   're00497',
   're00498',
   're00499',
   're00500',
   're00501',
   're00502',
   're00503',
   're00504',
   're00505',
   're00506',
   're00507',
   're00508',
   're00509',
   're00510',
   're00511',
   're00512',
   're00513',
   're00514',
   're00515',
   're00516',
   're00517',
   're00518',
   're00519',
   're00520',
   're00521',
   're00522',
   're00523',
   're00524',
   're00525',
   're00526',
   're00527',
   're00528',
   're00529',
   're00530',
   're00531',
   're00532',
   're00533',
   're00534',
   're00535',
   're00536',
   're00537',
   're00538',
   're00539',
   're00540',
   're00541',
   're00542',
   're00543',
   're00544',
   're00545',
   're00546',
   're00547',
   're00548',
   're00549',
   're00550',
   're00551',
   're00552',
   're00553',
   're00554',
   're00555',
   're00556',
   're00557',
   're00558',
   're00559',
   're00560',
   're00561',
   're00562',
   're00563',
   're00564',
   're00565',
   're00566',
   're00567',
   're00568',
   're00569',
   're00570',
   're00571',
   're00572',
   're00573',
   're00574',
   're00575',
   're00576',
   're00577',
   're00578',
   're00579',
   're00580',
   're00581',
   're00582',
   're00583',
   're00584',
   're00585',
   're00586',
   're00587',
   're00588',
   're00589',
   're00590',
   're00591',
   're00592',
   're00593',
   're00594',
   're00595',
   're00596',
   're00597',
   're00598',
   're00599',
   're00600',
   're00601',
   're00602',
   're00603',
   're00604',
   're00605',
   're00606',
   're00607',
   're00608',
   're00609',
   're00610',
   're00611',
   're00612',
   're00613',
   're00614',
   're00615',
   're00616',
   're00617',
   're00618',
   're00619',
   're00620',
   're00621',
   're00622',
   're00623',
   're00624',
   're00625',
   're00626',
   're00627',
   're00628',
   're00629',
   're00630',
   're00631',
   're00632',
   're00633',
   're00634',
   're00635',
   're00636',
   're00637',
   're00638',
   're00639',
   're00640',
   're00641',
   're00642',
   're00643',
   're00644',
   're00645',
   're00646',
   're00647',
   're00648',
   're00649',
   're00650',
   're00651',
   're00652',
   're00653',
   're00654',
   're00655',
   're00656',
   're00657',
   're00658',
   're00659',
   're00660',
   're00661',
   're00662',
   're00663',
   're00664',
   're00665',
   're00666',
   're00667',
   're00668',
   're00669',
   're00670',
   're00671',
   're00672',
   're00673',
   're00674',
   're00675',
   're00676',
   're00677',
   're00678',
   're00679',
   're00680',
   're00681',
   're00682',
   're00683',
   're00684',
   're00685',
   're00686',
   're00687',
   're00688',
   're00689',
   're00690',
   're00691',
   're00692',
   're00693',
   're00694',
   're00695',
   're00696',
   're00697',
   're00698',
   're00699',
   're00700',
   're00701',
   're00702',
   're00703',
   're00704',
   're00705',
   're00706',
   're00707',
   're00708',
   're00709',
   're00710',
   're00711',
   're00712',
   're00713',
   're00714',
   're00715',
   're00716',
   're00717',
   're00718',
   're00719',
   're00720',
   're00721',
   're00722',
   're00723',
   're00724',
   're00725',
   're00726',
   're00727',
   're00728',
   're00729',
   're00730',
   're00731',
   're00732',
   're00733',
   're00734',
   're00735',
   're00736',
   're00737',
   're00738',
   're00739',
   're00740',
   're00741',
   're00742',
   're00743',
   're00744',
   're00745',
   're00746',
   're00747',
   're00748',
   're00749',
   're00750',
   're00751',
   're00752',
   're00753',
   're00754',
   're00755',
   're00756',
   're00757',
   're00758',
   're00759',
   're00760',
   're00761',
   're00762',
   're00763',
   're00764',
   're00765',
   're00766',
   're00767',
   're00768',
   're00769',
   're00770',
   're00771',
   're00772',
   're00773',
   're00774',
   're00775',
   're00776',
   're00777',
   're00778',
   're00779',
   're00780',
   're00781',
   're00782',
   're00783',
   're00784',
   're00785',
   're00786',
   're00787',
   're00788',
   're00789',
   're00790',
   're00791',
   're00792',
   're00793',
   're00794',
   're00795',
   're00796',
   're00797',
   're00798',
   're00799',
   're00800',
   're00801',
   're00802',
   're00803',
   're00804',
   're00805',
   're00806',
   're00807',
   're00808',
   're00809',
   're00810',
   're00811',
   're00812',
   're00813',
   're00814',
   're00815',
   're00816',
   're00817',
   're00818',
   're00819',
   're00820',
   're00821',
   're00822',
   're00823',
   're00824',
   're00825',
   're00826',
   're00827',
   're00828',
   're00829',
   're00830',
   're00831',
   're00832',
   're00833',
   're00834',
   're00835',
   're00836',
   're00837',
   're00838',
   're00839',
   're00840',
   're00841',
   're00842',
   're00843',
   're00844',
   're00845',
   're00846',
   're00847',
   're00848',
   're00849',
   're00850',
   're00851',
   're00852',
   're00853',
   're00854',
   're00855',
   're00856',
   're00857',
   're00858',
   're00859',
   're00860',
   're00861',
   're00862',
   're00863',
   're00864',
   're00865',
   're00866',
   're00867',
   're00868',
   're00869',
   're00870',
   're00871',
   're00872',
   're00873',
   're00874',
   're00875',
   're00876',
   're00877',
   're00878',
   're00879',
   're00880',
   're00881',
   're00882',
   're00883',
   're00884',
   're00885',
   're00886',
   're00887',
   're00888',
   're00889',
   're00890',
   're00891',
   're00892',
   're00893',
   're00894',
   're00895',
   're00896',
   're00897',
   're00898',
   're00899',
   're00900',
   're00901',
   're00902',
   're00903',
   're00904',
   're00905',
   're00906',
   're00907',
   're00908',
   're00909',
   're00910',
   're00911',
   're00912',
   're00913',
   're00914',
   're00915',
   're00916',
   're00917',
   're00918',
   're00919',
   're00920',
   're00921',
   're00922',
   're00923',
   're00924',
   're00925',
   're00926',
   're00927',
   're00928',
   're00929',
   're00930',
   're00931',
   're00932',
   're00933',
   're00934',
   're00935',
   're00936',
   're00937',
   're00938',
   're00939',
   're00940',
   're00941',
   're00942',
   're00943',
   're00944',
   're00945',
   're00946',
   're00947',
   're00948',
   're00949',
   're00950',
   're00951',
   're00952',
   're00953',
   're00954',
   're00955',
   're00956',
   're00957',
   're00958',
   're00959',
   're00960',
   're00961',
   're00962',
   're00963',
   're00964',
   're00965',
   're00966',
   're00967',
   're00968',
   're00969',
   're00970',
   're00971',
   're00972',
   're00973',
   're00974',
   're00975',
   're00976',
   're00976a',
   're00976b',
   're00977',
   're00978',
   're00979',
   're00980',
   're00981',
   're00982',
   're00983',
   're00984',
   're00985',
   're00987',
   're00988',
   're00989',
   're00990',
   're00991',
   're00992',
   're00993',
   're00994',
   're00995',
   're00996',
   're00997',
   're00998',
   're00999',
   're01000',
   're01001',
   're01002',
   're01003'].
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
[{sources, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{resources, []},
{modules, []}
];
environment('atomic-xq') ->
[{sources, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-mod') ->
[{sources, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/works-mod.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works') ->
[{sources, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/works.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('staff') ->
[{sources, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/staff.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-and-staff') ->
[{sources, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/works.xml","$works",""},
{"file:///C:/git/xqerl/test/QT3_1_0/docs/staff.xml","$staff",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('auction') ->
[{sources, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/auction.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.example.com/AuctionWatch","ma"},
{"http://www.w3.org/1999/xlink","xlink"},
{"http://www.example.com/auctioneers#anyzone","anyzone"},
{"http://www.example.com/auctioneers#eachbay","eachbay"},
{"http://www.example.com/auctioneers#yabadoo","yabadoo"}]},
{resources, []},
{modules, []}
];
environment('qname') ->
[{sources, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/QName-source.xml",".",""}]},
{schemas, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/QName-schema.xsd","http://www.example.com/QNameXSD"}]},
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
].
're00001'(_Config) ->
   Qry = "(every $s in tokenize(',', ',') satisfies matches($s, '^(?:)$')) and (every $s in tokenize('a,#x20;,#xD;,#x9;,#xA;', ',') satisfies not(matches($s, '^(?:)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00002'(_Config) ->
   Qry = "(every $s in tokenize('a', ',') satisfies matches($s, '^(?:a)$')) and (every $s in tokenize('aa,b,', ',') satisfies not(matches($s, '^(?:a)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00003'(_Config) ->
   Qry = "(every $s in tokenize('a', ',') satisfies matches($s, '^(?:a|a)$')) and (every $s in tokenize('aa,b,', ',') satisfies not(matches($s, '^(?:a|a)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00004'(_Config) ->
   Qry = "(every $s in tokenize('a,b', ',') satisfies matches($s, '^(?:a|b)$')) and (every $s in tokenize('aa,bb,ab,', ',') satisfies not(matches($s, '^(?:a|b)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00005'(_Config) ->
   Qry = "(every $s in tokenize('ab', ',') satisfies matches($s, '^(?:ab)$')) and (every $s in tokenize('a,b,aa,bb,', ',') satisfies not(matches($s, '^(?:ab)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00006'(_Config) ->
   Qry = "(every $s in tokenize('a,b,c,d', ',') satisfies matches($s, '^(?:a|b|a|c|b|d|a)$')) and (every $s in tokenize('aa,ac,e', ',') satisfies not(matches($s, '^(?:a|b|a|c|b|d|a)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00007'(_Config) ->
   Qry = "(every $s in tokenize('       a', ',') satisfies matches($s, '^(?:       a|b      )$')) and (every $s in tokenize('abc', ',') satisfies not(matches($s, '^(?:       a|b      )$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00008'(_Config) ->
   Qry = "(every $s in tokenize('ac,abc', ',') satisfies matches($s, '^(?:ab?c)$')) and (every $s in tokenize('a,ab,bc,', ',') satisfies not(matches($s, '^(?:ab?c)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00009'(_Config) ->
   Qry = "(every $s in tokenize('ab,abc', ',') satisfies matches($s, '^(?:abc?)$')) and (every $s in tokenize('a,bc,abcc,', ',') satisfies not(matches($s, '^(?:abc?)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00010'(_Config) ->
   Qry = "(every $s in tokenize('abc,abbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbc', ',') satisfies matches($s, '^(?:ab+c)$')) and (every $s in tokenize('ac,bbbc,abbb,', ',') satisfies not(matches($s, '^(?:ab+c)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00011'(_Config) ->
   Qry = "(every $s in tokenize('abc,abccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc', ',') satisfies matches($s, '^(?:abc+)$')) and (every $s in tokenize('a,ab,abcd', ',') satisfies not(matches($s, '^(?:abc+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00012'(_Config) ->
   Qry = "(every $s in tokenize('abc,abbbbbbbc,ac', ',') satisfies matches($s, '^(?:ab*c)$')) and (every $s in tokenize('a,ab,bc,c,abcb,', ',') satisfies not(matches($s, '^(?:ab*c)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00013'(_Config) ->
   Qry = "(every $s in tokenize('abc,ab,abccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc', ',') satisfies matches($s, '^(?:abc*)$')) and (every $s in tokenize('a,abcd,abbc,', ',') satisfies not(matches($s, '^(?:abc*)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00014'(_Config) ->
   Qry = "(every $s in tokenize('b,ab,bcccccc,abc,abbbc', ',') satisfies matches($s, '^(?:a?b+c*)$')) and (every $s in tokenize('aabc,a,c,ac,', ',') satisfies not(matches($s, '^(?:a?b+c*)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00015'(_Config) ->
   Qry = "(every $s in tokenize('abc?,abbbc??,abca??,abbbbca?', ',') satisfies matches($s, '^(?:(ab+c)a?\\?\\??)$')) and (every $s in tokenize('ac??,bc??,abc,abc???', ',') satisfies not(matches($s, '^(?:(ab+c)a?\\?\\??)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00016'(_Config) ->
   Qry = "matches('qwerty','?a')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00017'(_Config) ->
   Qry = "matches('qwerty','+a')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00018'(_Config) ->
   Qry = "matches('qwerty','*a')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00019'(_Config) ->
   Qry = "matches('qwerty','{1}a')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00020'(_Config) ->
   Qry = "(every $s in tokenize(',', ',') satisfies matches($s, '^(?:a{0})$')) and (every $s in tokenize('a', ',') satisfies not(matches($s, '^(?:a{0})$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00021'(_Config) ->
   Qry = "matches('qwerty','a{2,1}')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00022'(_Config) ->
   Qry = "matches('qwerty','a{1,0}')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00023'(_Config) ->
   Qry = "(every $s in tokenize('abab,', ',') satisfies matches($s, '^(?:((ab){2})?)$')) and (every $s in tokenize('a,ab,ababa,abababab', ',') satisfies not(matches($s, '^(?:((ab){2})?)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00024'(_Config) ->
   Qry = "(every $s in tokenize('aa,aaaa,aaaaaaaaaaaaaaaaaaaa', ',') satisfies matches($s, '^(?:(a{2})+)$')) and (every $s in tokenize(',a,a2,aaa', ',') satisfies not(matches($s, '^(?:(a{2})+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00025'(_Config) ->
   Qry = "(every $s in tokenize(',aa,aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', ',') satisfies matches($s, '^(?:(a{2})*)$')) and (every $s in tokenize('a,aaa,aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', ',') satisfies not(matches($s, '^(?:(a{2})*)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00026'(_Config) ->
   Qry = "(every $s in tokenize('abbc', ',') satisfies matches($s, '^(?:ab{2}c)$')) and (every $s in tokenize('ac,abc,abbbc,a,', ',') satisfies not(matches($s, '^(?:ab{2}c)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00027'(_Config) ->
   Qry = "(every $s in tokenize('abcc', ',') satisfies matches($s, '^(?:abc{2})$')) and (every $s in tokenize('abc,abccc,', ',') satisfies not(matches($s, '^(?:abc{2})$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00028'(_Config) ->
   Qry = "(every $s in tokenize('aaabbb,bb,bbb,bbbb', ',') satisfies matches($s, '^(?:a*b{2,4}c{0})$')) and (every $s in tokenize('ab,abbc,bbc,abbbbb,', ',') satisfies not(matches($s, '^(?:a*b{2,4}c{0})$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00029'(_Config) ->
   Qry = "(every $s in tokenize('ab,abac,abacac', ',') satisfies matches($s, '^(?:((ab)(ac){0,2})?)$')) and (every $s in tokenize('ac,abacacac,abaca,abab,abacabac', ',') satisfies not(matches($s, '^(?:((ab)(ac){0,2})?)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00030'(_Config) ->
   Qry = "(every $s in tokenize(',a b,a ba b', ',') satisfies matches($s, '^(?:(a\\sb){0,2})$')) and (every $s in tokenize('a ba ba b,ab,a b a b,a  b', ',') satisfies not(matches($s, '^(?:(a\\sb){0,2})$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00031'(_Config) ->
   Qry = "(every $s in tokenize('abab,ababab,ababababababababababababababababababababababababababababababababab', ',') satisfies matches($s, '^(?:(ab){2,})$')) and (every $s in tokenize('ab,ababa,ababaa,ababababa,abab abab,', ',') satisfies not(matches($s, '^(?:(ab){2,})$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00032'(_Config) ->
   Qry = "matches('qwerty','a{,2}')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00033'(_Config) ->
   Qry = "matches('qwerty','(ab){2,0}')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00034'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:(ab){0,0})$')) and (every $s in tokenize('a,ab', ',') satisfies not(matches($s, '^(?:(ab){0,0})$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00035'(_Config) ->
   Qry = "(every $s in tokenize('abcc,abccc,abbcc,abbccc,bbcc,bbccc', ',') satisfies matches($s, '^(?:a{0,1}b{1,2}c{2,3})$')) and (every $s in tokenize('aabcc,bbbcc,acc,aabcc,abbc,abbcccc', ',') satisfies not(matches($s, '^(?:a{0,1}b{1,2}c{2,3})$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00036'(_Config) ->
   Qry = "(every $s in tokenize(',boy0xx,woman1y,girl1xymany,boy0xxwoman1ygirl1xymany,boy0xxwoman1ygirl1xymanyboy0xxwoman1ygirl1xymany', ',') satisfies matches($s, '^(?:(((((boy)|(girl))[0-1][x-z]{2})?)|(man|woman)[0-1]?[y|n])*)$')) and (every $s in tokenize('boy0xxwoman1ygirl1xyman,boyxx', ',') satisfies not(matches($s, '^(?:(((((boy)|(girl))[0-1][x-z]{2})?)|(man|woman)[0-1]?[y|n])*)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00037'(_Config) ->
   Qry = "matches('qwerty','((a)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00038'(_Config) ->
   Qry = "matches('qwerty','(a))')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00039'(_Config) ->
   Qry = "matches('qwerty','ab|(d))')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00040'(_Config) ->
   Qry = "matches('qwerty','((a*(b*)((a))*(a))))')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00041'(_Config) ->
   Qry = "matches('qwerty','\\')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00042'(_Config) ->
   Qry = "matches('qwerty','?')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00043'(_Config) ->
   Qry = "matches('qwerty','*')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00044'(_Config) ->
   Qry = "matches('qwerty','+')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00045'(_Config) ->
   Qry = "matches('qwerty','(')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00046'(_Config) ->
   Qry = "matches('qwerty',')')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00047'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:|)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:|)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00048'(_Config) ->
   Qry = "matches('qwerty','[')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00049'(_Config) ->
   Qry = "(every $s in tokenize('.\\?*+{}[]()|', ',') satisfies matches($s, '^(?:\\.\\\\\\?\\*\\+\\{\\}\\[\\]\\(\\)\\|)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\.\\\\\\?\\*\\+\\{\\}\\[\\]\\(\\)\\|)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00050'(_Config) ->
   Qry = "(every $s in tokenize('.\\?*+{}[]()|.\\?*+{}[]()|.\\?*+{}[]()|', ',') satisfies matches($s, '^(?:(([\\.\\\\\\?\\*\\+\\{\\}\\[\\]\\(\\)\\|]?)*)+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:(([\\.\\\\\\?\\*\\+\\{\\}\\[\\]\\(\\)\\|]?)*)+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00051'(_Config) ->
   Qry = "(every $s in tokenize('1z', ',') satisfies matches($s, '^(?:[^2-9a-x]{2})$')) and (every $s in tokenize('1x', ',') satisfies not(matches($s, '^(?:[^2-9a-x]{2})$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00052'(_Config) ->
   Qry = "(every $s in tokenize('abc', ',') satisfies matches($s, '^(?:[^\\s]{3})$')) and (every $s in tokenize('a c', ',') satisfies not(matches($s, '^(?:[^\\s]{3})$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00053'(_Config) ->
   Qry = "(every $s in tokenize(',a,ab, a', ',') satisfies matches($s, '^(?:[^@]{0,2})$')) and (every $s in tokenize('@', ',') satisfies not(matches($s, '^(?:[^@]{0,2})$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00054'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[^-z]+)$')) and (every $s in tokenize('aaz,a-z', ',') satisfies not(matches($s, '^(?:[^-z]+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00055'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[a-d-[b-c]])$')) and (every $s in tokenize('b,c', ',') satisfies not(matches($s, '^(?:[a-d-[b-c]])$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00056'(_Config) ->
   {skip,"XSD 1.0"}.
're00056a'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[^a-d-b-c])$')) and (every $s in tokenize('a-b,c-c,ab,cc', ',') satisfies not(matches($s, '^(?:[^a-d-b-c])$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00057'(_Config) ->
   Qry = "(every $s in tokenize('abcxyz}', ',') satisfies matches($s, '^(?:[a-\\}]+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:[a-\\}]+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00058'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[a-b-[0-9]]+)$')) and (every $s in tokenize('a1', ',') satisfies not(matches($s, '^(?:[a-b-[0-9]]+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00059'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[a-c-[^a-c]])$')) and (every $s in tokenize('d', ',') satisfies not(matches($s, '^(?:[a-c-[^a-c]])$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00060'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[a-z-[^a]])$')) and (every $s in tokenize('b', ',') satisfies not(matches($s, '^(?:[a-z-[^a]])$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00061'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,256,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,91,94,92,112,123,73,115,66,97,115,105,99,76,97,116,105,110,125,93,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,91,94,92,112,123,73,115,66,97,115,105,99,76,97,116,105,110,125,93,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00062'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[^\\p{IsBasicLatin}]*)$')) and (every $s in tokenize('a', ',') satisfies not(matches($s, '^(?:[^\\p{IsBasicLatin}]*)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00063'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,97,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,91,94,92,80,123,73,115,66,97,115,105,99,76,97,116,105,110,125,93,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,256,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,91,94,92,80,123,73,115,66,97,115,105,99,76,97,116,105,110,125,93,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00064'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[^\\?])$')) and (every $s in tokenize('?', ',') satisfies not(matches($s, '^(?:[^\\?])$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00065'(_Config) ->
   Qry = "(every $s in tokenize('a+*abc', ',') satisfies matches($s, '^(?:([^\\?])*)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:([^\\?])*)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00066'(_Config) ->
   Qry = "(every $s in tokenize('a*a', ',') satisfies matches($s, '^(?:\\c[^\\d]\\c)$')) and (every $s in tokenize('aa', ',') satisfies not(matches($s, '^(?:\\c[^\\d]\\c)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00067'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\c[^\\s]\\c)$')) and (every $s in tokenize('a c,az,a
c,a	r', ',') satisfies not(matches($s, '^(?:\\c[^\\s]\\c)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00068'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[^\\^a])$')) and (every $s in tokenize('^,a', ',') satisfies not(matches($s, '^(?:[^\\^a])$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00069'(_Config) ->
   Qry = "(every $s in tokenize('abc', ',') satisfies matches($s, '^(?:[a-abc]{3})$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:[a-abc]{3})$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00070'(_Config) ->
   Qry = "(every $s in tokenize('}-', ',') satisfies matches($s, '^(?:[a-\\}-]+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:[a-\\}-]+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00071'(_Config) ->
   Qry = "matches('qwerty','[a--b]')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00072'(_Config) ->
   Qry = "matches('qwerty','[^[a-b]]')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00073'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[a])$')) and (every $s in tokenize('b,', ',') satisfies not(matches($s, '^(?:[a])$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00074'(_Config) ->
   Qry = "(every $s in tokenize('123', ',') satisfies matches($s, '^(?:[1-3]{1,4})$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:[1-3]{1,4})$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00075'(_Config) ->
   Qry = "(every $s in tokenize('a', ',') satisfies matches($s, '^(?:[a-a])$')) and (every $s in tokenize('b', ',') satisfies not(matches($s, '^(?:[a-a])$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00076'(_Config) ->
   Qry = "(every $s in tokenize('1234567890:;<=>?@Azaz', ',') satisfies matches($s, '^(?:[0-z]*)$')) and (every $s in tokenize('{,/', ',') satisfies not(matches($s, '^(?:[0-z]*)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00077'(_Config) ->
   Qry = "(every $s in tokenize('
', ',') satisfies matches($s, '^(?:[\\n])$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:[\\n])$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00078'(_Config) ->
   Qry = "(every $s in tokenize('	', ',') satisfies matches($s, '^(?:[\\t])$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:[\\t])$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00079'(_Config) ->
   Qry = "(every $s in tokenize('\\|.?*+(){}-[]^', ',') satisfies matches($s, '^(?:[\\\\\\|\\.\\?\\*\\+\\(\\)\\{\\}\\-\\[\\]\\^]*)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:[\\\\\\|\\.\\?\\*\\+\\(\\)\\{\\}\\-\\[\\]\\^]*)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00080'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[^a-z^])$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:[^a-z^])$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00081'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\\\-\\{^])$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:[\\\\-\\{^])$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00082'(_Config) ->
   Qry = "(every $s in tokenize('?a?,?b?,?c?', ',') satisfies matches($s, '^(?:[\\C\\?a-c\\?]+)$')) and (every $s in tokenize('?d?', ',') satisfies not(matches($s, '^(?:[\\C\\?a-c\\?]+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00083'(_Config) ->
   Qry = "(every $s in tokenize('?', ',') satisfies matches($s, '^(?:[\\c\\?a-c\\?]+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:[\\c\\?a-c\\?]+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00084'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\D\\?a-c\\?]+)$')) and (every $s in tokenize('?1?', ',') satisfies not(matches($s, '^(?:[\\D\\?a-c\\?]+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00085'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\S\\?a-c\\?]+)$')) and (every $s in tokenize('? ?,?	?', ',') satisfies not(matches($s, '^(?:[\\S\\?a-c\\?]+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00086'(_Config) ->
   {skip,"XSD 1.0"}.
're00086a'(_Config) ->
   Qry = "(every $s in tokenize(',a-1x-7,c-4z-9,a-1z-8a-1z-9,a1z-9,a-1z8,a-1,z-9', ',') satisfies matches($s, '^(?:[a-c-1-4x-z-7-9]*)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:[a-c-1-4x-z-7-9]*)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00087'(_Config) ->
   Qry = "matches('qwerty','[a-\\\\]')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00088'(_Config) ->
   Qry = "matches('qwerty','[a-\\[]')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00089'(_Config) ->
   Qry = "(every $s in tokenize('a*a****aaaaa*', ',') satisfies matches($s, '^(?:[\\*a]*)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:[\\*a]*)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00090'(_Config) ->
   Qry = "matches('qwerty','[a-;]')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00091'(_Config) ->
   Qry = "(every $s in tokenize('1]', ',') satisfies matches($s, '^(?:[1-\\]]+)$')) and (every $s in tokenize('0,^', ',') satisfies not(matches($s, '^(?:[1-\\]]+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00092'(_Config) ->
   Qry = "(every $s in tokenize('=,>', ',') satisfies matches($s, '^(?:[=->])$')) and (every $s in tokenize('\\?', ',') satisfies not(matches($s, '^(?:[=->])$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00093'(_Config) ->
   Qry = "matches('qwerty','[>-=]')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00094'(_Config) ->
   Qry = "(every $s in tokenize('@', ',') satisfies matches($s, '^(?:[@])$')) and (every $s in tokenize('a', ',') satisfies not(matches($s, '^(?:[@])$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00095'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,4095,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,91,4095,93,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,91,4095,93,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00096'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,65536,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,91,65536,93,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,65537,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,91,65536,93,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00097'(_Config) ->
   Qry = "matches('qwerty','[\\]')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00098'(_Config) ->
   Qry = "(every $s in tokenize('\\,[,],\\[,\\[],[],[\\\\,\\]\\,[][', ',') satisfies matches($s, '^(?:[\\\\\\[\\]]{0,3})$')) and (every $s in tokenize('\\[][,\\]\\],[][]', ',') satisfies not(matches($s, '^(?:[\\\\\\[\\]]{0,3})$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00099'(_Config) ->
   Qry = "(every $s in tokenize('-', ',') satisfies matches($s, '^(?:[-])$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:[-])$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00100'(_Config) ->
   Qry = "(every $s in tokenize('a--aa---', ',') satisfies matches($s, '^(?:[-a]+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:[-a]+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00101'(_Config) ->
   Qry = "(every $s in tokenize('a--aa---', ',') satisfies matches($s, '^(?:[a-]*)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:[a-]*)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
           
           
           
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
're00102'(_Config) ->
   Qry = "(every $s in tokenize('a-x', ',') satisfies matches($s, '^(?:[a-a-x-x]+)$')) and (every $s in tokenize('j,a-b', ',') satisfies not(matches($s, '^(?:[a-a-x-x]+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00102a'(_Config) ->
   {skip,"XSD 1.0"}.
're00103'(_Config) ->
   Qry = "(every $s in tokenize('\\|.-^?*+[]{}()*[[]{}}))
		

*()', ',') satisfies matches($s, '^(?:[\\n\\r\\t\\\\\\|\\.\\-\\^\\?\\*\\+\\{\\}\\[\\]\\(\\)]*)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:[\\n\\r\\t\\\\\\|\\.\\-\\^\\?\\*\\+\\{\\}\\[\\]\\(\\)]*)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00104'(_Config) ->
   Qry = "(every $s in tokenize('a**,aa*,a', ',') satisfies matches($s, '^(?:[a\\*]*)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:[a\\*]*)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00105'(_Config) ->
   Qry = "(every $s in tokenize('a?,a?a?a?,a,a??,aa?', ',') satisfies matches($s, '^(?:[(a\\?)?]+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:[(a\\?)?]+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00106'(_Config) ->
   Qry = "(every $s in tokenize('\\t', ',') satisfies matches($s, '^(?:\\\\t)$')) and (every $s in tokenize('t,\\\\t,	', ',') satisfies not(matches($s, '^(?:\\\\t)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00107'(_Config) ->
   Qry = "(every $s in tokenize('\\n', ',') satisfies matches($s, '^(?:\\\\n)$')) and (every $s in tokenize('n,\\\\n,
', ',') satisfies not(matches($s, '^(?:\\\\n)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00108'(_Config) ->
   Qry = "(every $s in tokenize('\\r', ',') satisfies matches($s, '^(?:\\\\r)$')) and (every $s in tokenize('r,\\\\r,', ',') satisfies not(matches($s, '^(?:\\\\r)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00109'(_Config) ->
   Qry = "(every $s in tokenize('
', ',') satisfies matches($s, '^(?:\\n)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\n)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00110'(_Config) ->
   Qry = "(every $s in tokenize('	', ',') satisfies matches($s, '^(?:\\t)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\t)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00111'(_Config) ->
   Qry = "(every $s in tokenize('\\', ',') satisfies matches($s, '^(?:\\\\)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\\\)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00112'(_Config) ->
   Qry = "(every $s in tokenize('|', ',') satisfies matches($s, '^(?:\\|)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\|)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00113'(_Config) ->
   Qry = "(every $s in tokenize('.', ',') satisfies matches($s, '^(?:\\.)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\.)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00114'(_Config) ->
   Qry = "(every $s in tokenize('-', ',') satisfies matches($s, '^(?:\\-)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\-)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00115'(_Config) ->
   Qry = "(every $s in tokenize('^', ',') satisfies matches($s, '^(?:\\^)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\^)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00116'(_Config) ->
   Qry = "(every $s in tokenize('?', ',') satisfies matches($s, '^(?:\\?)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\?)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00117'(_Config) ->
   Qry = "(every $s in tokenize('*', ',') satisfies matches($s, '^(?:\\*)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\*)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00118'(_Config) ->
   Qry = "(every $s in tokenize('+', ',') satisfies matches($s, '^(?:\\+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00119'(_Config) ->
   Qry = "(every $s in tokenize('{', ',') satisfies matches($s, '^(?:\\{)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\{)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00120'(_Config) ->
   Qry = "(every $s in tokenize('}', ',') satisfies matches($s, '^(?:\\})$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\})$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00121'(_Config) ->
   Qry = "(every $s in tokenize('(', ',') satisfies matches($s, '^(?:\\()$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\()$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00122'(_Config) ->
   Qry = "(every $s in tokenize(')', ',') satisfies matches($s, '^(?:\\))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\))$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00123'(_Config) ->
   Qry = "(every $s in tokenize('[', ',') satisfies matches($s, '^(?:\\[)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\[)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00124'(_Config) ->
   Qry = "(every $s in tokenize(']', ',') satisfies matches($s, '^(?:\\])$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\])$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00125'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\n\\\\\\r\\|\\t\\.\\-\\^\\?\\*\\+\\{\\}\\(\\)\\[\\])$')) and (every $s in tokenize('
\\|	.-^?*+{}()[,\\|	.-^?*+{}()[],
\\|	-^?*+{}()[]', ',') satisfies not(matches($s, '^(?:\\n\\\\\\r\\|\\t\\.\\-\\^\\?\\*\\+\\{\\}\\(\\)\\[\\])$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00126'(_Config) ->
   Qry = "not(matches('', '^(?:\\n\\na\\n\\nb\\n\\n)$')) and
         (every $s in tokenize('

a

b;
,
a

b;

,

a

b;
', ',') 
                satisfies not(matches($s, '^(?:\\n\\na\\n\\nb\\n\\n)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00127'(_Config) ->
   {skip,"XP30+"}.
're00127a'(_Config) ->
   Qry = "
        matches('&#xD;&#xD;a&#xD;&#xD;b&#xD;&#xD;',         '^\\r\\ra\\r\\rb\\r\\r$'),
        matches('&#xD;&#xD;a&#xD;&#xD;b&#xD;&#xD;',         '^\\r\\ra\\r\\rb\\r\\r$'),
        matches('&#xD;&#xD;a&#xD;&#xD;b&#xD;',              '^(?:\\r\\ra\\r\\rb\\r\\r)$'),
        matches('&#xD;a&#xD;&#xD;b&#xD;&#xD;',              '^(?:\\r\\ra\\r\\rb\\r\\r)$'),
        matches('&#xD;&#xD;a&#xD;&#xD;&#xD;&#xD;',          '^(?:\\r\\ra\\r\\rb\\r\\r)$'),
        matches('&#xD;&#xD;a&#xD;&#xA;&#xD;b&#xD;&#xD;',    '^(?:\\r\\ra\\r\\rb\\r\\r)$')
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         true(), true(), false(), false(), false(), false()
      ",
 Tst = xqerl:run("true(), true(), false(), false(), false(), false()"),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
're00128'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\t\\ta\\t\\tb\\t\\t)$')) and (every $s in tokenize('		a		b	,	a		b		,		a				,		a			b		', ',') satisfies not(matches($s, '^(?:\\t\\ta\\t\\tb\\t\\t)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00129'(_Config) ->
   {skip,"XP30+"}.
're00129a'(_Config) ->
   Qry = "matches('a&#xD;&#xA;b', '^(?:a\\r\\nb)$'), matches('ab', '^(?:a\\r\\nb)$')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         true(), false()
      ",
 Tst = xqerl:run("true(), false()"),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
're00130'(_Config) ->
   {skip,"XP30+"}.
're00130a'(_Config) ->
   Qry = "(every $s in tokenize('&#xA;&#xD;a&#xA;&#xD;b', ',') satisfies (matches($s, '^(?:\\n\\ra\\n\\rb)$'))) and
         (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\n\\ra\\n\\rb)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00131'(_Config) ->
   Qry = "(every $s in tokenize('	a	b	c	', ',') satisfies matches($s, '^(?:\\ta\\tb\\tc\\t)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\ta\\tb\\tc\\t)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00132'(_Config) ->
   Qry = "(every $s in tokenize('
a
b
c
', ',') satisfies matches($s, '^(?:\\na\\nb\\nc\\n)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\na\\nb\\nc\\n)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00133'(_Config) ->
   Qry = "(every $s in tokenize('	a 

 	b, a  b, a  b ,	a 

 b', ',') satisfies matches($s, '^(?:(\\t|\\s)a(\\r\\n|\\r|\\n|\\s)+(\\s|\\t)b(\\s|\\r\\n|\\r|\\n)*)$')) and (every $s in tokenize(' a b, a b ', ',') satisfies not(matches($s, '^(?:(\\t|\\s)a(\\r\\n|\\r|\\n|\\s)+(\\s|\\t)b(\\s|\\r\\n|\\r|\\n)*)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00134'(_Config) ->
   Qry = "(every $s in tokenize('\\c', ',') satisfies matches($s, '^(?:\\\\c)$')) and (every $s in tokenize('\\p{_xmlC},\\\\c,\\\\', ',') satisfies not(matches($s, '^(?:\\\\c)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00135'(_Config) ->
   Qry = "(every $s in tokenize('\\.,\\s,\\S,\\i,\\I,\\c,\\C,\\d,\\D,\\w,\\W', ';') satisfies matches($s, '^(?:\\\\.,\\\\s,\\\\S,\\\\i,\\\\I,\\\\c,\\\\C,\\\\d,\\\\D,\\\\w,\\\\W)$')) and (every $s in tokenize('', ';') satisfies not(matches($s, '^(?:\\\\.,\\\\s,\\\\S,\\\\i,\\\\I,\\\\c,\\\\C,\\\\d,\\\\D,\\\\w,\\\\W)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00136'(_Config) ->
   Qry = "(every $s in tokenize('\\.abcd,\\sssss,\\SSSSSS,\\iiiiiii,\\,\\c,\\CCCCCC,\\ddd,\\D,\\wwwwwww,\\WWW', ';') satisfies matches($s, '^(?:\\\\.*,\\\\s*,\\\\S*,\\\\i*,\\\\I?,\\\\c+,\\\\C+,\\\\d{0,3},\\\\D{1,1000},\\\\w*,\\\\W+)$')) and (every $s in tokenize('', ';') satisfies not(matches($s, '^(?:\\\\.*,\\\\s*,\\\\S*,\\\\i*,\\\\I?,\\\\c+,\\\\C+,\\\\d{0,3},\\\\D{1,1000},\\\\w*,\\\\W+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00137'(_Config) ->
   Qry = "(every $s in tokenize('aX', ',') satisfies matches($s, '^(?:[\\p{L}*]{0,2})$')) and (every $s in tokenize('aBC', ',') satisfies not(matches($s, '^(?:[\\p{L}*]{0,2})$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00138'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,40,92,112,123,76,108,125,92,112,123,67,99,125,92,112,123,78,100,125,41,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,5760,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,40,92,112,123,76,108,125,92,112,123,67,99,125,92,112,123,78,100,125,41,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00139'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,76,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,8413,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,76,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00140'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,65,120744,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,76,117,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,97,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,76,117,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00141'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,97,120777,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,76,108,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,453,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,76,108,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00142'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,453,8188,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,76,116,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,688,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,76,116,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00143'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,688,65439,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,76,109,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,1488,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,76,109,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00144'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,1488,195101,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,76,111,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,1611,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,76,111,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00145'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,1611,119213,2307,119154,2307,119154,8413,8413,8416,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,77,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,453,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,77,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00146'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,1611,119213,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,77,110,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,2307,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,77,110,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00147'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,2307,119154,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,77,99,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,8413,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,77,99,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00148'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,8413,8416,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,77,101,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,65296,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,77,101,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00149'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,65296,120831,66378,66378,12325,178,178,66339,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,78,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,2307,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,78,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00150'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,65296,120831,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,78,100,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,66378,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,78,100,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00151'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,66378,12325,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,78,108,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,178,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,78,108,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00152'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,178,66339,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,78,111,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,8255,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,78,111,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00153'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,8255,65381,12316,12316,65293,12317,12317,65378,12318,12318,65379,171,171,8249,187,187,8250,191,191,65380,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,80,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,178,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,80,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00154'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,80,99,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,12316,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,80,99,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00155'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,12316,65293,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,80,100,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,12317,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,80,100,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00156'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,12317,65378,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,80,115,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,12318,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,80,115,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00157'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,12318,65379,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,80,101,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,171,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,80,101,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00158'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,171,8249,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,80,105,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,187,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,80,105,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00159'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,187,8250,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,80,102,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,191,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,80,102,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00160'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,191,65380,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,80,111,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,5760,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,80,111,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00161'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,5760,12288,8232,8232,8233,8233,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,90,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,191,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,90,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00162'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,5760,12288,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,90,115,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,8232,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,90,115,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00163'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,8232,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,90,108,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,8233,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,90,108,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00164'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,8233,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,90,112,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,8260,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,90,112,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00165'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,8260,65506,8352,8352,65510,12443,12443,65507,12688,12688,119261,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,83,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,5760,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,83,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00166'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,8260,65506,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,83,109,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,8352,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,83,109,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00167'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,8352,65510,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,83,99,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,12443,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,83,99,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00168'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,12443,65507,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,83,107,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,12688,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,83,107,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00169'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,12688,119261,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,83,111,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,9,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,83,111,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00170'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,67,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,8352,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,67,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00171'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,9,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,67,99,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,1807,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,67,99,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00172'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,1807,917624,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,67,102,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,57344,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,67,102,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00173'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,57344,1048576,983040,1048573,1114109,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,40,92,112,123,67,111,125,41,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,40,92,112,123,67,111,125,41,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00174'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,67,111,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,8260,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,67,111,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00175'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{Cn}*)$')) and (every $s in tokenize('	', ',') satisfies not(matches($s, '^(?:\\p{Cn}*)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00176'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,95,44,8413,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,76,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,97,65,98,66,44,65,120744,97,97,120777,453,453,8188,688,688,65439,1488,1488,195101,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,76,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00177'(_Config) ->
   Qry = "(every $s in tokenize(',#$', ',') satisfies matches($s, '^(?:[\\P{L}*]{0,2})$')) and (every $s in tokenize('!$#,A', ',') satisfies not(matches($s, '^(?:[\\P{L}*]{0,2})$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00178'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,97,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,76,117,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,65,120744,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,76,117,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00179'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,453,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,76,108,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,97,120777,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,76,108,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00180'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,688,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,76,116,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,453,8188,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,76,116,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00181'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,1488,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,76,109,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,688,65439,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,76,109,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00182'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,1611,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,76,111,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,1488,195101,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,76,111,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00183'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,453,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,77,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,1611,119213,2307,119154,2307,119154,8413,8413,8416,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,77,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00184'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,2307,119154,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,77,110,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,1611,119213,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,77,110,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00185'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,8413,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,77,99,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,2307,119154,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,77,99,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00186'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,65296,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,77,101,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,8413,8416,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,77,101,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00187'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,2307,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,78,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,65296,120831,66378,66378,12325,178,178,66339,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,78,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00188'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,66378,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,78,100,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,65296,120831,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,78,100,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00189'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,178,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,78,108,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,66378,12325,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,78,108,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00190'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,8255,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,78,111,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,178,66339,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,78,111,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00191'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,178,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,80,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,8255,65381,12316,12316,65293,12317,12317,65378,12318,12318,65379,171,171,8249,187,187,8250,191,191,65380,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,80,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00192'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,12316,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,80,99,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,8255,65381,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,80,99,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00193'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,12317,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,80,100,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,12316,65293,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,80,100,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00194'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,12318,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,80,115,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,12317,65378,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,80,115,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00195'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,171,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,80,101,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,12318,65379,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,80,101,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00196'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,187,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,80,105,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,171,8249,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,80,105,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00197'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,191,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,80,102,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,187,8250,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,80,102,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00198'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,5760,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,80,111,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,191,65380,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,80,111,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00199'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,191,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,90,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,5760,12288,8232,8232,8233,8233,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,90,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00200'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,8232,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,90,115,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,5760,12288,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,90,115,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00201'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,8233,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,90,108,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,8232,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,90,108,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00202'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,8260,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,90,112,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,8233,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,90,112,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00203'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,5760,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,83,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,8260,65506,8352,8352,65510,12443,12443,65507,12688,12688,119261,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,83,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00204'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,8352,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,83,109,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,8260,65506,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,83,109,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00205'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,12443,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,83,99,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,8352,65510,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,83,99,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00206'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,12688,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,83,107,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,12443,65507,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,83,107,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00207'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,9,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,83,111,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,12688,119261,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,83,111,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00208'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,8352,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,67,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,9,1807,1807,917624,57344,57344,1048576,983040,1048573,1114109,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,67,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00209'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,1807,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,67,99,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,9,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,67,99,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00210'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,57344,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,67,102,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,1807,917624,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,67,102,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00211'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,8260,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,67,111,125,42,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,57344,1048576,983040,1048573,1114109,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,80,123,67,111,125,42,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00212'(_Config) ->
   Qry = "matches('qwerty','\\p{\\\\L}')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00213'(_Config) ->
   Qry = "(every $s in tokenize('\\a', ',') satisfies matches($s, '^(?:\\\\\\p{L}*)$')) and (every $s in tokenize('a', ',') satisfies not(matches($s, '^(?:\\\\\\p{L}*)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00214'(_Config) ->
   Qry = "matches('qwerty','\\p{Is}')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00215'(_Config) ->
   Qry = "matches('qwerty','\\P{Is}')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00216'(_Config) ->
   Qry = "matches('qwerty','\\p{IsaA0-a9}')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00217'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,9,10,13,32,127,57345,9,10,13,32,33,34,35,36,37,39,39,39,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,39,44,32,39,57345,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,66,97,115,105,99,76,97,116,105,110,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,57345,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,66,97,115,105,99,76,97,116,105,110,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00218'(_Config) ->
   Qry = "(every $s in tokenize('ÿ, ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿ', ',') satisfies matches($s, '^(?:\\p{IsLatin-1Supplement}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsLatin-1Supplement}+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00219'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,256,383,44,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289,290,291,292,293,294,295,296,297,298,299,300,301,302,303,304,305,306,307,308,309,310,311,312,313,314,315,316,317,318,319,320,321,322,323,324,325,326,327,328,329,330,331,332,333,334,335,336,337,338,339,340,341,342,343,344,345,346,347,348,349,350,351,352,353,354,355,356,357,358,359,360,361,362,363,364,365,366,367,368,369,370,371,372,373,374,375,376,377,378,379,380,381,382,383,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,76,97,116,105,110,69,120,116,101,110,100,101,100,45,65,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,76,97,116,105,110,69,120,116,101,110,100,101,100,45,65,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00220'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,384,591,44,384,385,386,387,388,389,390,391,392,393,394,395,396,397,398,399,400,401,402,403,404,405,406,407,408,409,410,411,412,413,414,415,416,417,418,419,420,421,422,423,424,425,426,427,428,429,430,431,432,433,434,435,436,437,438,439,440,441,442,443,444,445,446,447,448,449,450,451,452,453,454,455,456,457,458,459,460,461,462,463,464,465,466,467,468,469,470,471,472,473,474,475,476,477,478,479,480,481,482,483,484,485,486,487,488,489,490,491,492,493,494,495,496,497,498,499,500,501,502,503,504,505,506,507,508,509,510,511,512,513,514,515,516,517,518,519,520,521,522,523,524,525,526,527,528,529,530,531,532,533,534,535,536,537,538,539,540,541,542,543,544,545,546,547,548,549,550,551,552,553,554,555,556,557,558,559,560,561,562,563,564,565,566,567,568,569,570,571,572,573,574,575,576,577,578,579,580,581,582,583,584,585,586,587,588,589,590,591,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,76,97,116,105,110,69,120,116,101,110,100,101,100,45,66,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,76,97,116,105,110,69,120,116,101,110,100,101,100,45,66,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00221'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,592,687,44,592,593,594,595,596,597,598,599,600,601,602,603,604,605,606,607,608,609,610,611,612,613,614,615,616,617,618,619,620,621,622,623,624,625,626,627,628,629,630,631,632,633,634,635,636,637,638,639,640,641,642,643,644,645,646,647,648,649,650,651,652,653,654,655,656,657,658,659,660,661,662,663,664,665,666,667,668,669,670,671,672,673,674,675,676,677,678,679,680,681,682,683,684,685,686,687,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,73,80,65,69,120,116,101,110,115,105,111,110,115,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,73,80,65,69,120,116,101,110,115,105,111,110,115,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00222'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,688,767,44,688,689,690,691,692,693,694,695,696,697,698,699,700,701,702,703,704,705,706,707,708,709,710,711,712,713,714,715,716,717,718,719,720,721,722,723,724,725,726,727,728,729,730,731,732,733,734,735,736,737,738,739,740,741,742,743,744,745,746,747,748,749,750,751,752,753,754,755,756,757,758,759,760,761,762,763,764,765,766,767,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,83,112,97,99,105,110,103,77,111,100,105,102,105,101,114,76,101,116,116,101,114,115,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,83,112,97,99,105,110,103,77,111,100,105,102,105,101,114,76,101,116,116,101,114,115,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00223'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,1328,1423,44,1328,1329,1330,1331,1332,1333,1334,1335,1336,1337,1338,1339,1340,1341,1342,1343,1344,1345,1346,1347,1348,1349,1350,1351,1352,1353,1354,1355,1356,1357,1358,1359,1360,1361,1362,1363,1364,1365,1366,1367,1368,1369,1370,1371,1372,1373,1374,1375,1376,1377,1378,1379,1380,1381,1382,1383,1384,1385,1386,1387,1388,1389,1390,1391,1392,1393,1394,1395,1396,1397,1398,1399,1400,1401,1402,1403,1404,1405,1406,1407,1408,1409,1410,1411,1412,1413,1414,1415,1416,1417,1418,1419,1420,1421,1422,1423,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,65,114,109,101,110,105,97,110,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,65,114,109,101,110,105,97,110,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00224'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,1424,1535,44,1424,1425,1426,1427,1428,1429,1430,1431,1432,1433,1434,1435,1436,1437,1438,1439,1440,1441,1442,1443,1444,1445,1446,1447,1448,1449,1450,1451,1452,1453,1454,1455,1456,1457,1458,1459,1460,1461,1462,1463,1464,1465,1466,1467,1468,1469,1470,1471,1472,1473,1474,1475,1476,1477,1478,1479,1480,1481,1482,1483,1484,1485,1486,1487,1488,1489,1490,1491,1492,1493,1494,1495,1496,1497,1498,1499,1500,1501,1502,1503,1504,1505,1506,1507,1508,1509,1510,1511,1512,1513,1514,1515,1516,1517,1518,1519,1520,1521,1522,1523,1524,1525,1526,1527,1528,1529,1530,1531,1532,1533,1534,1535,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,72,101,98,114,101,119,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,72,101,98,114,101,119,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00225'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,1536,1791,44,1536,1537,1538,1539,1540,1541,1542,1543,1544,1545,1546,1547,1548,1549,1550,1551,1552,1553,1554,1555,1556,1557,1558,1559,1560,1561,1562,1563,1564,1565,1566,1567,1568,1569,1570,1571,1572,1573,1574,1575,1576,1577,1578,1579,1580,1581,1582,1583,1584,1585,1586,1587,1588,1589,1590,1591,1592,1593,1594,1595,1596,1597,1598,1599,1600,1601,1602,1603,1604,1605,1606,1607,1608,1609,1610,1611,1612,1613,1614,1615,1616,1617,1618,1619,1620,1621,1622,1623,1624,1625,1626,1627,1628,1629,1630,1631,1632,1633,1634,1635,1636,1637,1638,1639,1640,1641,1642,1643,1644,1645,1646,1647,1648,1649,1650,1651,1652,1653,1654,1655,1656,1657,1658,1659,1660,1661,1662,1663,1664,1665,1666,1667,1668,1669,1670,1671,1672,1673,1674,1675,1676,1677,1678,1679,1680,1681,1682,1683,1684,1685,1686,1687,1688,1689,1690,1691,1692,1693,1694,1695,1696,1697,1698,1699,1700,1701,1702,1703,1704,1705,1706,1707,1708,1709,1710,1711,1712,1713,1714,1715,1716,1717,1718,1719,1720,1721,1722,1723,1724,1725,1726,1727,1728,1729,1730,1731,1732,1733,1734,1735,1736,1737,1738,1739,1740,1741,1742,1743,1744,1745,1746,1747,1748,1749,1750,1751,1752,1753,1754,1755,1756,1757,1758,1759,1760,1761,1762,1763,1764,1765,1766,1767,1768,1769,1770,1771,1772,1773,1774,1775,1776,1777,1778,1779,1780,1781,1782,1783,1784,1785,1786,1787,1788,1789,1790,1791,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,65,114,97,98,105,99,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,65,114,97,98,105,99,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00226'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,1792,1871,44,1792,1793,1794,1795,1796,1797,1798,1799,1800,1801,1802,1803,1804,1805,1806,1807,1808,1809,1810,1811,1812,1813,1814,1815,1816,1817,1818,1819,1820,1821,1822,1823,1824,1825,1826,1827,1828,1829,1830,1831,1832,1833,1834,1835,1836,1837,1838,1839,1840,1841,1842,1843,1844,1845,1846,1847,1848,1849,1850,1851,1852,1853,1854,1855,1856,1857,1858,1859,1860,1861,1862,1863,1864,1865,1866,1867,1868,1869,1870,1871,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,83,121,114,105,97,99,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,83,121,114,105,97,99,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00227'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,1920,1983,44,1920,1921,1922,1923,1924,1925,1926,1927,1928,1929,1930,1931,1932,1933,1934,1935,1936,1937,1938,1939,1940,1941,1942,1943,1944,1945,1946,1947,1948,1949,1950,1951,1952,1953,1954,1955,1956,1957,1958,1959,1960,1961,1962,1963,1964,1965,1966,1967,1968,1969,1970,1971,1972,1973,1974,1975,1976,1977,1978,1979,1980,1981,1982,1983,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,84,104,97,97,110,97,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,84,104,97,97,110,97,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00228'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,2304,2431,44,2304,2305,2306,2307,2308,2309,2310,2311,2312,2313,2314,2315,2316,2317,2318,2319,2320,2321,2322,2323,2324,2325,2326,2327,2328,2329,2330,2331,2332,2333,2334,2335,2336,2337,2338,2339,2340,2341,2342,2343,2344,2345,2346,2347,2348,2349,2350,2351,2352,2353,2354,2355,2356,2357,2358,2359,2360,2361,2362,2363,2364,2365,2366,2367,2368,2369,2370,2371,2372,2373,2374,2375,2376,2377,2378,2379,2380,2381,2382,2383,2384,2385,2386,2387,2388,2389,2390,2391,2392,2393,2394,2395,2396,2397,2398,2399,2400,2401,2402,2403,2404,2405,2406,2407,2408,2409,2410,2411,2412,2413,2414,2415,2416,2417,2418,2419,2420,2421,2422,2423,2424,2425,2426,2427,2428,2429,2430,2431,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,68,101,118,97,110,97,103,97,114,105,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,68,101,118,97,110,97,103,97,114,105,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00229'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,2432,2559,44,2432,2433,2434,2435,2436,2437,2438,2439,2440,2441,2442,2443,2444,2445,2446,2447,2448,2449,2450,2451,2452,2453,2454,2455,2456,2457,2458,2459,2460,2461,2462,2463,2464,2465,2466,2467,2468,2469,2470,2471,2472,2473,2474,2475,2476,2477,2478,2479,2480,2481,2482,2483,2484,2485,2486,2487,2488,2489,2490,2491,2492,2493,2494,2495,2496,2497,2498,2499,2500,2501,2502,2503,2504,2505,2506,2507,2508,2509,2510,2511,2512,2513,2514,2515,2516,2517,2518,2519,2520,2521,2522,2523,2524,2525,2526,2527,2528,2529,2530,2531,2532,2533,2534,2535,2536,2537,2538,2539,2540,2541,2542,2543,2544,2545,2546,2547,2548,2549,2550,2551,2552,2553,2554,2555,2556,2557,2558,2559,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,66,101,110,103,97,108,105,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,66,101,110,103,97,108,105,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00230'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,2560,2687,44,2560,2561,2562,2563,2564,2565,2566,2567,2568,2569,2570,2571,2572,2573,2574,2575,2576,2577,2578,2579,2580,2581,2582,2583,2584,2585,2586,2587,2588,2589,2590,2591,2592,2593,2594,2595,2596,2597,2598,2599,2600,2601,2602,2603,2604,2605,2606,2607,2608,2609,2610,2611,2612,2613,2614,2615,2616,2617,2618,2619,2620,2621,2622,2623,2624,2625,2626,2627,2628,2629,2630,2631,2632,2633,2634,2635,2636,2637,2638,2639,2640,2641,2642,2643,2644,2645,2646,2647,2648,2649,2650,2651,2652,2653,2654,2655,2656,2657,2658,2659,2660,2661,2662,2663,2664,2665,2666,2667,2668,2669,2670,2671,2672,2673,2674,2675,2676,2677,2678,2679,2680,2681,2682,2683,2684,2685,2686,2687,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,71,117,114,109,117,107,104,105,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,71,117,114,109,117,107,104,105,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00231'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,2688,2815,44,2688,2689,2690,2691,2692,2693,2694,2695,2696,2697,2698,2699,2700,2701,2702,2703,2704,2705,2706,2707,2708,2709,2710,2711,2712,2713,2714,2715,2716,2717,2718,2719,2720,2721,2722,2723,2724,2725,2726,2727,2728,2729,2730,2731,2732,2733,2734,2735,2736,2737,2738,2739,2740,2741,2742,2743,2744,2745,2746,2747,2748,2749,2750,2751,2752,2753,2754,2755,2756,2757,2758,2759,2760,2761,2762,2763,2764,2765,2766,2767,2768,2769,2770,2771,2772,2773,2774,2775,2776,2777,2778,2779,2780,2781,2782,2783,2784,2785,2786,2787,2788,2789,2790,2791,2792,2793,2794,2795,2796,2797,2798,2799,2800,2801,2802,2803,2804,2805,2806,2807,2808,2809,2810,2811,2812,2813,2814,2815,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,71,117,106,97,114,97,116,105,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,71,117,106,97,114,97,116,105,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00232'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,2816,2943,44,2816,2817,2818,2819,2820,2821,2822,2823,2824,2825,2826,2827,2828,2829,2830,2831,2832,2833,2834,2835,2836,2837,2838,2839,2840,2841,2842,2843,2844,2845,2846,2847,2848,2849,2850,2851,2852,2853,2854,2855,2856,2857,2858,2859,2860,2861,2862,2863,2864,2865,2866,2867,2868,2869,2870,2871,2872,2873,2874,2875,2876,2877,2878,2879,2880,2881,2882,2883,2884,2885,2886,2887,2888,2889,2890,2891,2892,2893,2894,2895,2896,2897,2898,2899,2900,2901,2902,2903,2904,2905,2906,2907,2908,2909,2910,2911,2912,2913,2914,2915,2916,2917,2918,2919,2920,2921,2922,2923,2924,2925,2926,2927,2928,2929,2930,2931,2932,2933,2934,2935,2936,2937,2938,2939,2940,2941,2942,2943,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,79,114,105,121,97,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,79,114,105,121,97,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00233'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,2944,3071,44,2944,2945,2946,2947,2948,2949,2950,2951,2952,2953,2954,2955,2956,2957,2958,2959,2960,2961,2962,2963,2964,2965,2966,2967,2968,2969,2970,2971,2972,2973,2974,2975,2976,2977,2978,2979,2980,2981,2982,2983,2984,2985,2986,2987,2988,2989,2990,2991,2992,2993,2994,2995,2996,2997,2998,2999,3000,3001,3002,3003,3004,3005,3006,3007,3008,3009,3010,3011,3012,3013,3014,3015,3016,3017,3018,3019,3020,3021,3022,3023,3024,3025,3026,3027,3028,3029,3030,3031,3032,3033,3034,3035,3036,3037,3038,3039,3040,3041,3042,3043,3044,3045,3046,3047,3048,3049,3050,3051,3052,3053,3054,3055,3056,3057,3058,3059,3060,3061,3062,3063,3064,3065,3066,3067,3068,3069,3070,3071,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,84,97,109,105,108,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,84,97,109,105,108,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00234'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,3072,3199,44,3072,3073,3074,3075,3076,3077,3078,3079,3080,3081,3082,3083,3084,3085,3086,3087,3088,3089,3090,3091,3092,3093,3094,3095,3096,3097,3098,3099,3100,3101,3102,3103,3104,3105,3106,3107,3108,3109,3110,3111,3112,3113,3114,3115,3116,3117,3118,3119,3120,3121,3122,3123,3124,3125,3126,3127,3128,3129,3130,3131,3132,3133,3134,3135,3136,3137,3138,3139,3140,3141,3142,3143,3144,3145,3146,3147,3148,3149,3150,3151,3152,3153,3154,3155,3156,3157,3158,3159,3160,3161,3162,3163,3164,3165,3166,3167,3168,3169,3170,3171,3172,3173,3174,3175,3176,3177,3178,3179,3180,3181,3182,3183,3184,3185,3186,3187,3188,3189,3190,3191,3192,3193,3194,3195,3196,3197,3198,3199,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,84,101,108,117,103,117,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,84,101,108,117,103,117,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00235'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,3200,3327,44,3200,3201,3202,3203,3204,3205,3206,3207,3208,3209,3210,3211,3212,3213,3214,3215,3216,3217,3218,3219,3220,3221,3222,3223,3224,3225,3226,3227,3228,3229,3230,3231,3232,3233,3234,3235,3236,3237,3238,3239,3240,3241,3242,3243,3244,3245,3246,3247,3248,3249,3250,3251,3252,3253,3254,3255,3256,3257,3258,3259,3260,3261,3262,3263,3264,3265,3266,3267,3268,3269,3270,3271,3272,3273,3274,3275,3276,3277,3278,3279,3280,3281,3282,3283,3284,3285,3286,3287,3288,3289,3290,3291,3292,3293,3294,3295,3296,3297,3298,3299,3300,3301,3302,3303,3304,3305,3306,3307,3308,3309,3310,3311,3312,3313,3314,3315,3316,3317,3318,3319,3320,3321,3322,3323,3324,3325,3326,3327,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,75,97,110,110,97,100,97,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,75,97,110,110,97,100,97,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00236'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,3328,3455,44,3328,3329,3330,3331,3332,3333,3334,3335,3336,3337,3338,3339,3340,3341,3342,3343,3344,3345,3346,3347,3348,3349,3350,3351,3352,3353,3354,3355,3356,3357,3358,3359,3360,3361,3362,3363,3364,3365,3366,3367,3368,3369,3370,3371,3372,3373,3374,3375,3376,3377,3378,3379,3380,3381,3382,3383,3384,3385,3386,3387,3388,3389,3390,3391,3392,3393,3394,3395,3396,3397,3398,3399,3400,3401,3402,3403,3404,3405,3406,3407,3408,3409,3410,3411,3412,3413,3414,3415,3416,3417,3418,3419,3420,3421,3422,3423,3424,3425,3426,3427,3428,3429,3430,3431,3432,3433,3434,3435,3436,3437,3438,3439,3440,3441,3442,3443,3444,3445,3446,3447,3448,3449,3450,3451,3452,3453,3454,3455,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,77,97,108,97,121,97,108,97,109,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,77,97,108,97,121,97,108,97,109,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00237'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,3456,3583,44,3456,3457,3458,3459,3460,3461,3462,3463,3464,3465,3466,3467,3468,3469,3470,3471,3472,3473,3474,3475,3476,3477,3478,3479,3480,3481,3482,3483,3484,3485,3486,3487,3488,3489,3490,3491,3492,3493,3494,3495,3496,3497,3498,3499,3500,3501,3502,3503,3504,3505,3506,3507,3508,3509,3510,3511,3512,3513,3514,3515,3516,3517,3518,3519,3520,3521,3522,3523,3524,3525,3526,3527,3528,3529,3530,3531,3532,3533,3534,3535,3536,3537,3538,3539,3540,3541,3542,3543,3544,3545,3546,3547,3548,3549,3550,3551,3552,3553,3554,3555,3556,3557,3558,3559,3560,3561,3562,3563,3564,3565,3566,3567,3568,3569,3570,3571,3572,3573,3574,3575,3576,3577,3578,3579,3580,3581,3582,3583,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,83,105,110,104,97,108,97,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,83,105,110,104,97,108,97,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00238'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,3584,3711,44,3584,3585,3586,3587,3588,3589,3590,3591,3592,3593,3594,3595,3596,3597,3598,3599,3600,3601,3602,3603,3604,3605,3606,3607,3608,3609,3610,3611,3612,3613,3614,3615,3616,3617,3618,3619,3620,3621,3622,3623,3624,3625,3626,3627,3628,3629,3630,3631,3632,3633,3634,3635,3636,3637,3638,3639,3640,3641,3642,3643,3644,3645,3646,3647,3648,3649,3650,3651,3652,3653,3654,3655,3656,3657,3658,3659,3660,3661,3662,3663,3664,3665,3666,3667,3668,3669,3670,3671,3672,3673,3674,3675,3676,3677,3678,3679,3680,3681,3682,3683,3684,3685,3686,3687,3688,3689,3690,3691,3692,3693,3694,3695,3696,3697,3698,3699,3700,3701,3702,3703,3704,3705,3706,3707,3708,3709,3710,3711,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,84,104,97,105,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,84,104,97,105,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00239'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,3712,3839,44,3712,3713,3714,3715,3716,3717,3718,3719,3720,3721,3722,3723,3724,3725,3726,3727,3728,3729,3730,3731,3732,3733,3734,3735,3736,3737,3738,3739,3740,3741,3742,3743,3744,3745,3746,3747,3748,3749,3750,3751,3752,3753,3754,3755,3756,3757,3758,3759,3760,3761,3762,3763,3764,3765,3766,3767,3768,3769,3770,3771,3772,3773,3774,3775,3776,3777,3778,3779,3780,3781,3782,3783,3784,3785,3786,3787,3788,3789,3790,3791,3792,3793,3794,3795,3796,3797,3798,3799,3800,3801,3802,3803,3804,3805,3806,3807,3808,3809,3810,3811,3812,3813,3814,3815,3816,3817,3818,3819,3820,3821,3822,3823,3824,3825,3826,3827,3828,3829,3830,3831,3832,3833,3834,3835,3836,3837,3838,3839,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,76,97,111,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,76,97,111,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00240'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,3840,4095,44,3840,3841,3842,3843,3844,3845,3846,3847,3848,3849,3850,3851,3852,3853,3854,3855,3856,3857,3858,3859,3860,3861,3862,3863,3864,3865,3866,3867,3868,3869,3870,3871,3872,3873,3874,3875,3876,3877,3878,3879,3880,3881,3882,3883,3884,3885,3886,3887,3888,3889,3890,3891,3892,3893,3894,3895,3896,3897,3898,3899,3900,3901,3902,3903,3904,3905,3906,3907,3908,3909,3910,3911,3912,3913,3914,3915,3916,3917,3918,3919,3920,3921,3922,3923,3924,3925,3926,3927,3928,3929,3930,3931,3932,3933,3934,3935,3936,3937,3938,3939,3940,3941,3942,3943,3944,3945,3946,3947,3948,3949,3950,3951,3952,3953,3954,3955,3956,3957,3958,3959,3960,3961,3962,3963,3964,3965,3966,3967,3968,3969,3970,3971,3972,3973,3974,3975,3976,3977,3978,3979,3980,3981,3982,3983,3984,3985,3986,3987,3988,3989,3990,3991,3992,3993,3994,3995,3996,3997,3998,3999,4000,4001,4002,4003,4004,4005,4006,4007,4008,4009,4010,4011,4012,4013,4014,4015,4016,4017,4018,4019,4020,4021,4022,4023,4024,4025,4026,4027,4028,4029,4030,4031,4032,4033,4034,4035,4036,4037,4038,4039,4040,4041,4042,4043,4044,4045,4046,4047,4048,4049,4050,4051,4052,4053,4054,4055,4056,4057,4058,4059,4060,4061,4062,4063,4064,4065,4066,4067,4068,4069,4070,4071,4072,4073,4074,4075,4076,4077,4078,4079,4080,4081,4082,4083,4084,4085,4086,4087,4088,4089,4090,4091,4092,4093,4094,4095,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,84,105,98,101,116,97,110,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,84,105,98,101,116,97,110,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00241'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,4096,4255,44,4096,4097,4098,4099,4100,4101,4102,4103,4104,4105,4106,4107,4108,4109,4110,4111,4112,4113,4114,4115,4116,4117,4118,4119,4120,4121,4122,4123,4124,4125,4126,4127,4128,4129,4130,4131,4132,4133,4134,4135,4136,4137,4138,4139,4140,4141,4142,4143,4144,4145,4146,4147,4148,4149,4150,4151,4152,4153,4154,4155,4156,4157,4158,4159,4160,4161,4162,4163,4164,4165,4166,4167,4168,4169,4170,4171,4172,4173,4174,4175,4176,4177,4178,4179,4180,4181,4182,4183,4184,4185,4186,4187,4188,4189,4190,4191,4192,4193,4194,4195,4196,4197,4198,4199,4200,4201,4202,4203,4204,4205,4206,4207,4208,4209,4210,4211,4212,4213,4214,4215,4216,4217,4218,4219,4220,4221,4222,4223,4224,4225,4226,4227,4228,4229,4230,4231,4232,4233,4234,4235,4236,4237,4238,4239,4240,4241,4242,4243,4244,4245,4246,4247,4248,4249,4250,4251,4252,4253,4254,4255,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,77,121,97,110,109,97,114,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,77,121,97,110,109,97,114,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00242'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,4256,4351,44,4256,4257,4258,4259,4260,4261,4262,4263,4264,4265,4266,4267,4268,4269,4270,4271,4272,4273,4274,4275,4276,4277,4278,4279,4280,4281,4282,4283,4284,4285,4286,4287,4288,4289,4290,4291,4292,4293,4294,4295,4296,4297,4298,4299,4300,4301,4302,4303,4304,4305,4306,4307,4308,4309,4310,4311,4312,4313,4314,4315,4316,4317,4318,4319,4320,4321,4322,4323,4324,4325,4326,4327,4328,4329,4330,4331,4332,4333,4334,4335,4336,4337,4338,4339,4340,4341,4342,4343,4344,4345,4346,4347,4348,4349,4350,4351,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,71,101,111,114,103,105,97,110,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,71,101,111,114,103,105,97,110,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00243'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,4352,4607,44,4352,4353,4354,4355,4356,4357,4358,4359,4360,4361,4362,4363,4364,4365,4366,4367,4368,4369,4370,4371,4372,4373,4374,4375,4376,4377,4378,4379,4380,4381,4382,4383,4384,4385,4386,4387,4388,4389,4390,4391,4392,4393,4394,4395,4396,4397,4398,4399,4400,4401,4402,4403,4404,4405,4406,4407,4408,4409,4410,4411,4412,4413,4414,4415,4416,4417,4418,4419,4420,4421,4422,4423,4424,4425,4426,4427,4428,4429,4430,4431,4432,4433,4434,4435,4436,4437,4438,4439,4440,4441,4442,4443,4444,4445,4446,4447,4448,4449,4450,4451,4452,4453,4454,4455,4456,4457,4458,4459,4460,4461,4462,4463,4464,4465,4466,4467,4468,4469,4470,4471,4472,4473,4474,4475,4476,4477,4478,4479,4480,4481,4482,4483,4484,4485,4486,4487,4488,4489,4490,4491,4492,4493,4494,4495,4496,4497,4498,4499,4500,4501,4502,4503,4504,4505,4506,4507,4508,4509,4510,4511,4512,4513,4514,4515,4516,4517,4518,4519,4520,4521,4522,4523,4524,4525,4526,4527,4528,4529,4530,4531,4532,4533,4534,4535,4536,4537,4538,4539,4540,4541,4542,4543,4544,4545,4546,4547,4548,4549,4550,4551,4552,4553,4554,4555,4556,4557,4558,4559,4560,4561,4562,4563,4564,4565,4566,4567,4568,4569,4570,4571,4572,4573,4574,4575,4576,4577,4578,4579,4580,4581,4582,4583,4584,4585,4586,4587,4588,4589,4590,4591,4592,4593,4594,4595,4596,4597,4598,4599,4600,4601,4602,4603,4604,4605,4606,4607,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,72,97,110,103,117,108,74,97,109,111,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,72,97,110,103,117,108,74,97,109,111,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00244'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,4608,4991,44,4608,4609,4610,4611,4612,4613,4614,4615,4616,4617,4618,4619,4620,4621,4622,4623,4624,4625,4626,4627,4628,4629,4630,4631,4632,4633,4634,4635,4636,4637,4638,4639,4640,4641,4642,4643,4644,4645,4646,4647,4648,4649,4650,4651,4652,4653,4654,4655,4656,4657,4658,4659,4660,4661,4662,4663,4664,4665,4666,4667,4668,4669,4670,4671,4672,4673,4674,4675,4676,4677,4678,4679,4680,4681,4682,4683,4684,4685,4686,4687,4688,4689,4690,4691,4692,4693,4694,4695,4696,4697,4698,4699,4700,4701,4702,4703,4704,4705,4706,4707,4708,4709,4710,4711,4712,4713,4714,4715,4716,4717,4718,4719,4720,4721,4722,4723,4724,4725,4726,4727,4728,4729,4730,4731,4732,4733,4734,4735,4736,4737,4738,4739,4740,4741,4742,4743,4744,4745,4746,4747,4748,4749,4750,4751,4752,4753,4754,4755,4756,4757,4758,4759,4760,4761,4762,4763,4764,4765,4766,4767,4768,4769,4770,4771,4772,4773,4774,4775,4776,4777,4778,4779,4780,4781,4782,4783,4784,4785,4786,4787,4788,4789,4790,4791,4792,4793,4794,4795,4796,4797,4798,4799,4800,4801,4802,4803,4804,4805,4806,4807,4808,4809,4810,4811,4812,4813,4814,4815,4816,4817,4818,4819,4820,4821,4822,4823,4824,4825,4826,4827,4828,4829,4830,4831,4832,4833,4834,4835,4836,4837,4838,4839,4840,4841,4842,4843,4844,4845,4846,4847,4848,4849,4850,4851,4852,4853,4854,4855,4856,4857,4858,4859,4860,4861,4862,4863,4864,4865,4866,4867,4868,4869,4870,4871,4872,4873,4874,4875,4876,4877,4878,4879,4880,4881,4882,4883,4884,4885,4886,4887,4888,4889,4890,4891,4892,4893,4894,4895,4896,4897,4898,4899,4900,4901,4902,4903,4904,4905,4906,4907,4908,4909,4910,4911,4912,4913,4914,4915,4916,4917,4918,4919,4920,4921,4922,4923,4924,4925,4926,4927,4928,4929,4930,4931,4932,4933,4934,4935,4936,4937,4938,4939,4940,4941,4942,4943,4944,4945,4946,4947,4948,4949,4950,4951,4952,4953,4954,4955,4956,4957,4958,4959,4960,4961,4962,4963,4964,4965,4966,4967,4968,4969,4970,4971,4972,4973,4974,4975,4976,4977,4978,4979,4980,4981,4982,4983,4984,4985,4986,4987,4988,4989,4990,4991,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,69,116,104,105,111,112,105,99,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,69,116,104,105,111,112,105,99,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00245'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,5024,5119,44,5024,5025,5026,5027,5028,5029,5030,5031,5032,5033,5034,5035,5036,5037,5038,5039,5040,5041,5042,5043,5044,5045,5046,5047,5048,5049,5050,5051,5052,5053,5054,5055,5056,5057,5058,5059,5060,5061,5062,5063,5064,5065,5066,5067,5068,5069,5070,5071,5072,5073,5074,5075,5076,5077,5078,5079,5080,5081,5082,5083,5084,5085,5086,5087,5088,5089,5090,5091,5092,5093,5094,5095,5096,5097,5098,5099,5100,5101,5102,5103,5104,5105,5106,5107,5108,5109,5110,5111,5112,5113,5114,5115,5116,5117,5118,5119,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,104,101,114,111,107,101,101,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,104,101,114,111,107,101,101,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00246'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,5120,5759,44,5120,5121,5122,5123,5124,5125,5126,5127,5128,5129,5130,5131,5132,5133,5134,5135,5136,5137,5138,5139,5140,5141,5142,5143,5144,5145,5146,5147,5148,5149,5150,5151,5152,5153,5154,5155,5156,5157,5158,5159,5160,5161,5162,5163,5164,5165,5166,5167,5168,5169,5170,5171,5172,5173,5174,5175,5176,5177,5178,5179,5180,5181,5182,5183,5184,5185,5186,5187,5188,5189,5190,5191,5192,5193,5194,5195,5196,5197,5198,5199,5200,5201,5202,5203,5204,5205,5206,5207,5208,5209,5210,5211,5212,5213,5214,5215,5216,5217,5218,5219,5220,5221,5222,5223,5224,5225,5226,5227,5228,5229,5230,5231,5232,5233,5234,5235,5236,5237,5238,5239,5240,5241,5242,5243,5244,5245,5246,5247,5248,5249,5250,5251,5252,5253,5254,5255,5256,5257,5258,5259,5260,5261,5262,5263,5264,5265,5266,5267,5268,5269,5270,5271,5272,5273,5274,5275,5276,5277,5278,5279,5280,5281,5282,5283,5284,5285,5286,5287,5288,5289,5290,5291,5292,5293,5294,5295,5296,5297,5298,5299,5300,5301,5302,5303,5304,5305,5306,5307,5308,5309,5310,5311,5312,5313,5314,5315,5316,5317,5318,5319,5320,5321,5322,5323,5324,5325,5326,5327,5328,5329,5330,5331,5332,5333,5334,5335,5336,5337,5338,5339,5340,5341,5342,5343,5344,5345,5346,5347,5348,5349,5350,5351,5352,5353,5354,5355,5356,5357,5358,5359,5360,5361,5362,5363,5364,5365,5366,5367,5368,5369,5370,5371,5372,5373,5374,5375,5376,5377,5378,5379,5380,5381,5382,5383,5384,5385,5386,5387,5388,5389,5390,5391,5392,5393,5394,5395,5396,5397,5398,5399,5400,5401,5402,5403,5404,5405,5406,5407,5408,5409,5410,5411,5412,5413,5414,5415,5416,5417,5418,5419,5420,5421,5422,5423,5424,5425,5426,5427,5428,5429,5430,5431,5432,5433,5434,5435,5436,5437,5438,5439,5440,5441,5442,5443,5444,5445,5446,5447,5448,5449,5450,5451,5452,5453,5454,5455,5456,5457,5458,5459,5460,5461,5462,5463,5464,5465,5466,5467,5468,5469,5470,5471,5472,5473,5474,5475,5476,5477,5478,5479,5480,5481,5482,5483,5484,5485,5486,5487,5488,5489,5490,5491,5492,5493,5494,5495,5496,5497,5498,5499,5500,5501,5502,5503,5504,5505,5506,5507,5508,5509,5510,5511,5512,5513,5514,5515,5516,5517,5518,5519,5520,5521,5522,5523,5524,5525,5526,5527,5528,5529,5530,5531,5532,5533,5534,5535,5536,5537,5538,5539,5540,5541,5542,5543,5544,5545,5546,5547,5548,5549,5550,5551,5552,5553,5554,5555,5556,5557,5558,5559,5560,5561,5562,5563,5564,5565,5566,5567,5568,5569,5570,5571,5572,5573,5574,5575,5576,5577,5578,5579,5580,5581,5582,5583,5584,5585,5586,5587,5588,5589,5590,5591,5592,5593,5594,5595,5596,5597,5598,5599,5600,5601,5602,5603,5604,5605,5606,5607,5608,5609,5610,5611,5612,5613,5614,5615,5616,5617,5618,5619,5620,5621,5622,5623,5624,5625,5626,5627,5628,5629,5630,5631,5632,5633,5634,5635,5636,5637,5638,5639,5640,5641,5642,5643,5644,5645,5646,5647,5648,5649,5650,5651,5652,5653,5654,5655,5656,5657,5658,5659,5660,5661,5662,5663,5664,5665,5666,5667,5668,5669,5670,5671,5672,5673,5674,5675,5676,5677,5678,5679,5680,5681,5682,5683,5684,5685,5686,5687,5688,5689,5690,5691,5692,5693,5694,5695,5696,5697,5698,5699,5700,5701,5702,5703,5704,5705,5706,5707,5708,5709,5710,5711,5712,5713,5714,5715,5716,5717,5718,5719,5720,5721,5722,5723,5724,5725,5726,5727,5728,5729,5730,5731,5732,5733,5734,5735,5736,5737,5738,5739,5740,5741,5742,5743,5744,5745,5746,5747,5748,5749,5750,5751,5752,5753,5754,5755,5756,5757,5758,5759,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,85,110,105,102,105,101,100,67,97,110,97,100,105,97,110,65,98,111,114,105,103,105,110,97,108,83,121,108,108,97,98,105,99,115,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,85,110,105,102,105,101,100,67,97,110,97,100,105,97,110,65,98,111,114,105,103,105,110,97,108,83,121,108,108,97,98,105,99,115,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00247'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,5760,5791,44,5760,5761,5762,5763,5764,5765,5766,5767,5768,5769,5770,5771,5772,5773,5774,5775,5776,5777,5778,5779,5780,5781,5782,5783,5784,5785,5786,5787,5788,5789,5790,5791,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,79,103,104,97,109,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,79,103,104,97,109,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00248'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,5792,5887,44,5792,5793,5794,5795,5796,5797,5798,5799,5800,5801,5802,5803,5804,5805,5806,5807,5808,5809,5810,5811,5812,5813,5814,5815,5816,5817,5818,5819,5820,5821,5822,5823,5824,5825,5826,5827,5828,5829,5830,5831,5832,5833,5834,5835,5836,5837,5838,5839,5840,5841,5842,5843,5844,5845,5846,5847,5848,5849,5850,5851,5852,5853,5854,5855,5856,5857,5858,5859,5860,5861,5862,5863,5864,5865,5866,5867,5868,5869,5870,5871,5872,5873,5874,5875,5876,5877,5878,5879,5880,5881,5882,5883,5884,5885,5886,5887,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,82,117,110,105,99,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,82,117,110,105,99,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00249'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,6016,6143,44,6016,6017,6018,6019,6020,6021,6022,6023,6024,6025,6026,6027,6028,6029,6030,6031,6032,6033,6034,6035,6036,6037,6038,6039,6040,6041,6042,6043,6044,6045,6046,6047,6048,6049,6050,6051,6052,6053,6054,6055,6056,6057,6058,6059,6060,6061,6062,6063,6064,6065,6066,6067,6068,6069,6070,6071,6072,6073,6074,6075,6076,6077,6078,6079,6080,6081,6082,6083,6084,6085,6086,6087,6088,6089,6090,6091,6092,6093,6094,6095,6096,6097,6098,6099,6100,6101,6102,6103,6104,6105,6106,6107,6108,6109,6110,6111,6112,6113,6114,6115,6116,6117,6118,6119,6120,6121,6122,6123,6124,6125,6126,6127,6128,6129,6130,6131,6132,6133,6134,6135,6136,6137,6138,6139,6140,6141,6142,6143,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,75,104,109,101,114,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,75,104,109,101,114,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00250'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,6144,6319,44,6144,6145,6146,6147,6148,6149,6150,6151,6152,6153,6154,6155,6156,6157,6158,6159,6160,6161,6162,6163,6164,6165,6166,6167,6168,6169,6170,6171,6172,6173,6174,6175,6176,6177,6178,6179,6180,6181,6182,6183,6184,6185,6186,6187,6188,6189,6190,6191,6192,6193,6194,6195,6196,6197,6198,6199,6200,6201,6202,6203,6204,6205,6206,6207,6208,6209,6210,6211,6212,6213,6214,6215,6216,6217,6218,6219,6220,6221,6222,6223,6224,6225,6226,6227,6228,6229,6230,6231,6232,6233,6234,6235,6236,6237,6238,6239,6240,6241,6242,6243,6244,6245,6246,6247,6248,6249,6250,6251,6252,6253,6254,6255,6256,6257,6258,6259,6260,6261,6262,6263,6264,6265,6266,6267,6268,6269,6270,6271,6272,6273,6274,6275,6276,6277,6278,6279,6280,6281,6282,6283,6284,6285,6286,6287,6288,6289,6290,6291,6292,6293,6294,6295,6296,6297,6298,6299,6300,6301,6302,6303,6304,6305,6306,6307,6308,6309,6310,6311,6312,6313,6314,6315,6316,6317,6318,6319,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,77,111,110,103,111,108,105,97,110,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,77,111,110,103,111,108,105,97,110,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00251'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,7680,7935,44,7680,7681,7682,7683,7684,7685,7686,7687,7688,7689,7690,7691,7692,7693,7694,7695,7696,7697,7698,7699,7700,7701,7702,7703,7704,7705,7706,7707,7708,7709,7710,7711,7712,7713,7714,7715,7716,7717,7718,7719,7720,7721,7722,7723,7724,7725,7726,7727,7728,7729,7730,7731,7732,7733,7734,7735,7736,7737,7738,7739,7740,7741,7742,7743,7744,7745,7746,7747,7748,7749,7750,7751,7752,7753,7754,7755,7756,7757,7758,7759,7760,7761,7762,7763,7764,7765,7766,7767,7768,7769,7770,7771,7772,7773,7774,7775,7776,7777,7778,7779,7780,7781,7782,7783,7784,7785,7786,7787,7788,7789,7790,7791,7792,7793,7794,7795,7796,7797,7798,7799,7800,7801,7802,7803,7804,7805,7806,7807,7808,7809,7810,7811,7812,7813,7814,7815,7816,7817,7818,7819,7820,7821,7822,7823,7824,7825,7826,7827,7828,7829,7830,7831,7832,7833,7834,7835,7836,7837,7838,7839,7840,7841,7842,7843,7844,7845,7846,7847,7848,7849,7850,7851,7852,7853,7854,7855,7856,7857,7858,7859,7860,7861,7862,7863,7864,7865,7866,7867,7868,7869,7870,7871,7872,7873,7874,7875,7876,7877,7878,7879,7880,7881,7882,7883,7884,7885,7886,7887,7888,7889,7890,7891,7892,7893,7894,7895,7896,7897,7898,7899,7900,7901,7902,7903,7904,7905,7906,7907,7908,7909,7910,7911,7912,7913,7914,7915,7916,7917,7918,7919,7920,7921,7922,7923,7924,7925,7926,7927,7928,7929,7930,7931,7932,7933,7934,7935,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,76,97,116,105,110,69,120,116,101,110,100,101,100,65,100,100,105,116,105,111,110,97,108,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,76,97,116,105,110,69,120,116,101,110,100,101,100,65,100,100,105,116,105,111,110,97,108,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00252'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,7936,8191,44,7936,7937,7938,7939,7940,7941,7942,7943,7944,7945,7946,7947,7948,7949,7950,7951,7952,7953,7954,7955,7956,7957,7958,7959,7960,7961,7962,7963,7964,7965,7966,7967,7968,7969,7970,7971,7972,7973,7974,7975,7976,7977,7978,7979,7980,7981,7982,7983,7984,7985,7986,7987,7988,7989,7990,7991,7992,7993,7994,7995,7996,7997,7998,7999,8000,8001,8002,8003,8004,8005,8006,8007,8008,8009,8010,8011,8012,8013,8014,8015,8016,8017,8018,8019,8020,8021,8022,8023,8024,8025,8026,8027,8028,8029,8030,8031,8032,8033,8034,8035,8036,8037,8038,8039,8040,8041,8042,8043,8044,8045,8046,8047,8048,8049,8050,8051,8052,8053,8054,8055,8056,8057,8058,8059,8060,8061,8062,8063,8064,8065,8066,8067,8068,8069,8070,8071,8072,8073,8074,8075,8076,8077,8078,8079,8080,8081,8082,8083,8084,8085,8086,8087,8088,8089,8090,8091,8092,8093,8094,8095,8096,8097,8098,8099,8100,8101,8102,8103,8104,8105,8106,8107,8108,8109,8110,8111,8112,8113,8114,8115,8116,8117,8118,8119,8120,8121,8122,8123,8124,8125,8126,8127,8128,8129,8130,8131,8132,8133,8134,8135,8136,8137,8138,8139,8140,8141,8142,8143,8144,8145,8146,8147,8148,8149,8150,8151,8152,8153,8154,8155,8156,8157,8158,8159,8160,8161,8162,8163,8164,8165,8166,8167,8168,8169,8170,8171,8172,8173,8174,8175,8176,8177,8178,8179,8180,8181,8182,8183,8184,8185,8186,8187,8188,8189,8190,8191,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,71,114,101,101,107,69,120,116,101,110,100,101,100,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,71,114,101,101,107,69,120,116,101,110,100,101,100,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00253'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,8192,8303,44,8192,8193,8194,8195,8196,8197,8198,8199,8200,8201,8202,8203,8204,8205,8206,8207,8208,8209,8210,8211,8212,8213,8214,8215,8216,8217,8218,8219,8220,8221,8222,8223,8224,8225,8226,8227,8228,8229,8230,8231,8232,8233,8234,8235,8236,8237,8238,8239,8240,8241,8242,8243,8244,8245,8246,8247,8248,8249,8250,8251,8252,8253,8254,8255,8256,8257,8258,8259,8260,8261,8262,8263,8264,8265,8266,8267,8268,8269,8270,8271,8272,8273,8274,8275,8276,8277,8278,8279,8280,8281,8282,8283,8284,8285,8286,8287,8288,8289,8290,8291,8292,8293,8294,8295,8296,8297,8298,8299,8300,8301,8302,8303,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,71,101,110,101,114,97,108,80,117,110,99,116,117,97,116,105,111,110,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,71,101,110,101,114,97,108,80,117,110,99,116,117,97,116,105,111,110,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00254'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,8304,8351,44,8304,8305,8306,8307,8308,8309,8310,8311,8312,8313,8314,8315,8316,8317,8318,8319,8320,8321,8322,8323,8324,8325,8326,8327,8328,8329,8330,8331,8332,8333,8334,8335,8336,8337,8338,8339,8340,8341,8342,8343,8344,8345,8346,8347,8348,8349,8350,8351,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,83,117,112,101,114,115,99,114,105,112,116,115,97,110,100,83,117,98,115,99,114,105,112,116,115,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,83,117,112,101,114,115,99,114,105,112,116,115,97,110,100,83,117,98,115,99,114,105,112,116,115,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00255'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,8352,8399,44,8352,8353,8354,8355,8356,8357,8358,8359,8360,8361,8362,8363,8364,8365,8366,8367,8368,8369,8370,8371,8372,8373,8374,8375,8376,8377,8378,8379,8380,8381,8382,8383,8384,8385,8386,8387,8388,8389,8390,8391,8392,8393,8394,8395,8396,8397,8398,8399,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,117,114,114,101,110,99,121,83,121,109,98,111,108,115,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,117,114,114,101,110,99,121,83,121,109,98,111,108,115,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00256'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,8400,8447,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,111,109,98,105,110,105,110,103,77,97,114,107,115,102,111,114,83,121,109,98,111,108,115,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,111,109,98,105,110,105,110,103,77,97,114,107,115,102,111,114,83,121,109,98,111,108,115,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00257'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,8448,8527,44,8448,8449,8450,8451,8452,8453,8454,8455,8456,8457,8458,8459,8460,8461,8462,8463,8464,8465,8466,8467,8468,8469,8470,8471,8472,8473,8474,8475,8476,8477,8478,8479,8480,8481,8482,8483,8484,8485,8486,8487,8488,8489,8490,8491,8492,8493,8494,8495,8496,8497,8498,8499,8500,8501,8502,8503,8504,8505,8506,8507,8508,8509,8510,8511,8512,8513,8514,8515,8516,8517,8518,8519,8520,8521,8522,8523,8524,8525,8526,8527,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,76,101,116,116,101,114,108,105,107,101,83,121,109,98,111,108,115,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,76,101,116,116,101,114,108,105,107,101,83,121,109,98,111,108,115,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00258'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,8528,8591,44,8528,8529,8530,8531,8532,8533,8534,8535,8536,8537,8538,8539,8540,8541,8542,8543,8544,8545,8546,8547,8548,8549,8550,8551,8552,8553,8554,8555,8556,8557,8558,8559,8560,8561,8562,8563,8564,8565,8566,8567,8568,8569,8570,8571,8572,8573,8574,8575,8576,8577,8578,8579,8580,8581,8582,8583,8584,8585,8586,8587,8588,8589,8590,8591,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,78,117,109,98,101,114,70,111,114,109,115,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,78,117,109,98,101,114,70,111,114,109,115,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00259'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,8592,8703,44,8592,8593,8594,8595,8596,8597,8598,8599,8600,8601,8602,8603,8604,8605,8606,8607,8608,8609,8610,8611,8612,8613,8614,8615,8616,8617,8618,8619,8620,8621,8622,8623,8624,8625,8626,8627,8628,8629,8630,8631,8632,8633,8634,8635,8636,8637,8638,8639,8640,8641,8642,8643,8644,8645,8646,8647,8648,8649,8650,8651,8652,8653,8654,8655,8656,8657,8658,8659,8660,8661,8662,8663,8664,8665,8666,8667,8668,8669,8670,8671,8672,8673,8674,8675,8676,8677,8678,8679,8680,8681,8682,8683,8684,8685,8686,8687,8688,8689,8690,8691,8692,8693,8694,8695,8696,8697,8698,8699,8700,8701,8702,8703,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,65,114,114,111,119,115,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,65,114,114,111,119,115,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00260'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,8704,8959,44,8704,8705,8706,8707,8708,8709,8710,8711,8712,8713,8714,8715,8716,8717,8718,8719,8720,8721,8722,8723,8724,8725,8726,8727,8728,8729,8730,8731,8732,8733,8734,8735,8736,8737,8738,8739,8740,8741,8742,8743,8744,8745,8746,8747,8748,8749,8750,8751,8752,8753,8754,8755,8756,8757,8758,8759,8760,8761,8762,8763,8764,8765,8766,8767,8768,8769,8770,8771,8772,8773,8774,8775,8776,8777,8778,8779,8780,8781,8782,8783,8784,8785,8786,8787,8788,8789,8790,8791,8792,8793,8794,8795,8796,8797,8798,8799,8800,8801,8802,8803,8804,8805,8806,8807,8808,8809,8810,8811,8812,8813,8814,8815,8816,8817,8818,8819,8820,8821,8822,8823,8824,8825,8826,8827,8828,8829,8830,8831,8832,8833,8834,8835,8836,8837,8838,8839,8840,8841,8842,8843,8844,8845,8846,8847,8848,8849,8850,8851,8852,8853,8854,8855,8856,8857,8858,8859,8860,8861,8862,8863,8864,8865,8866,8867,8868,8869,8870,8871,8872,8873,8874,8875,8876,8877,8878,8879,8880,8881,8882,8883,8884,8885,8886,8887,8888,8889,8890,8891,8892,8893,8894,8895,8896,8897,8898,8899,8900,8901,8902,8903,8904,8905,8906,8907,8908,8909,8910,8911,8912,8913,8914,8915,8916,8917,8918,8919,8920,8921,8922,8923,8924,8925,8926,8927,8928,8929,8930,8931,8932,8933,8934,8935,8936,8937,8938,8939,8940,8941,8942,8943,8944,8945,8946,8947,8948,8949,8950,8951,8952,8953,8954,8955,8956,8957,8958,8959,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,77,97,116,104,101,109,97,116,105,99,97,108,79,112,101,114,97,116,111,114,115,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,77,97,116,104,101,109,97,116,105,99,97,108,79,112,101,114,97,116,111,114,115,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00261'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,8960,9215,44,8960,8961,8962,8963,8964,8965,8966,8967,8968,8969,8970,8971,8972,8973,8974,8975,8976,8977,8978,8979,8980,8981,8982,8983,8984,8985,8986,8987,8988,8989,8990,8991,8992,8993,8994,8995,8996,8997,8998,8999,9000,9001,9002,9003,9004,9005,9006,9007,9008,9009,9010,9011,9012,9013,9014,9015,9016,9017,9018,9019,9020,9021,9022,9023,9024,9025,9026,9027,9028,9029,9030,9031,9032,9033,9034,9035,9036,9037,9038,9039,9040,9041,9042,9043,9044,9045,9046,9047,9048,9049,9050,9051,9052,9053,9054,9055,9056,9057,9058,9059,9060,9061,9062,9063,9064,9065,9066,9067,9068,9069,9070,9071,9072,9073,9074,9075,9076,9077,9078,9079,9080,9081,9082,9083,9084,9085,9086,9087,9088,9089,9090,9091,9092,9093,9094,9095,9096,9097,9098,9099,9100,9101,9102,9103,9104,9105,9106,9107,9108,9109,9110,9111,9112,9113,9114,9115,9116,9117,9118,9119,9120,9121,9122,9123,9124,9125,9126,9127,9128,9129,9130,9131,9132,9133,9134,9135,9136,9137,9138,9139,9140,9141,9142,9143,9144,9145,9146,9147,9148,9149,9150,9151,9152,9153,9154,9155,9156,9157,9158,9159,9160,9161,9162,9163,9164,9165,9166,9167,9168,9169,9170,9171,9172,9173,9174,9175,9176,9177,9178,9179,9180,9181,9182,9183,9184,9185,9186,9187,9188,9189,9190,9191,9192,9193,9194,9195,9196,9197,9198,9199,9200,9201,9202,9203,9204,9205,9206,9207,9208,9209,9210,9211,9212,9213,9214,9215,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,77,105,115,99,101,108,108,97,110,101,111,117,115,84,101,99,104,110,105,99,97,108,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,77,105,115,99,101,108,108,97,110,101,111,117,115,84,101,99,104,110,105,99,97,108,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00262'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,9216,9279,44,9216,9217,9218,9219,9220,9221,9222,9223,9224,9225,9226,9227,9228,9229,9230,9231,9232,9233,9234,9235,9236,9237,9238,9239,9240,9241,9242,9243,9244,9245,9246,9247,9248,9249,9250,9251,9252,9253,9254,9255,9256,9257,9258,9259,9260,9261,9262,9263,9264,9265,9266,9267,9268,9269,9270,9271,9272,9273,9274,9275,9276,9277,9278,9279,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,111,110,116,114,111,108,80,105,99,116,117,114,101,115,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,111,110,116,114,111,108,80,105,99,116,117,114,101,115,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00263'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,9280,9311,44,9280,9281,9282,9283,9284,9285,9286,9287,9288,9289,9290,9291,9292,9293,9294,9295,9296,9297,9298,9299,9300,9301,9302,9303,9304,9305,9306,9307,9308,9309,9310,9311,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,79,112,116,105,99,97,108,67,104,97,114,97,99,116,101,114,82,101,99,111,103,110,105,116,105,111,110,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,79,112,116,105,99,97,108,67,104,97,114,97,99,116,101,114,82,101,99,111,103,110,105,116,105,111,110,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00264'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,9312,9471,44,9312,9313,9314,9315,9316,9317,9318,9319,9320,9321,9322,9323,9324,9325,9326,9327,9328,9329,9330,9331,9332,9333,9334,9335,9336,9337,9338,9339,9340,9341,9342,9343,9344,9345,9346,9347,9348,9349,9350,9351,9352,9353,9354,9355,9356,9357,9358,9359,9360,9361,9362,9363,9364,9365,9366,9367,9368,9369,9370,9371,9372,9373,9374,9375,9376,9377,9378,9379,9380,9381,9382,9383,9384,9385,9386,9387,9388,9389,9390,9391,9392,9393,9394,9395,9396,9397,9398,9399,9400,9401,9402,9403,9404,9405,9406,9407,9408,9409,9410,9411,9412,9413,9414,9415,9416,9417,9418,9419,9420,9421,9422,9423,9424,9425,9426,9427,9428,9429,9430,9431,9432,9433,9434,9435,9436,9437,9438,9439,9440,9441,9442,9443,9444,9445,9446,9447,9448,9449,9450,9451,9452,9453,9454,9455,9456,9457,9458,9459,9460,9461,9462,9463,9464,9465,9466,9467,9468,9469,9470,9471,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,69,110,99,108,111,115,101,100,65,108,112,104,97,110,117,109,101,114,105,99,115,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,69,110,99,108,111,115,101,100,65,108,112,104,97,110,117,109,101,114,105,99,115,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00265'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,9472,9599,44,9472,9473,9474,9475,9476,9477,9478,9479,9480,9481,9482,9483,9484,9485,9486,9487,9488,9489,9490,9491,9492,9493,9494,9495,9496,9497,9498,9499,9500,9501,9502,9503,9504,9505,9506,9507,9508,9509,9510,9511,9512,9513,9514,9515,9516,9517,9518,9519,9520,9521,9522,9523,9524,9525,9526,9527,9528,9529,9530,9531,9532,9533,9534,9535,9536,9537,9538,9539,9540,9541,9542,9543,9544,9545,9546,9547,9548,9549,9550,9551,9552,9553,9554,9555,9556,9557,9558,9559,9560,9561,9562,9563,9564,9565,9566,9567,9568,9569,9570,9571,9572,9573,9574,9575,9576,9577,9578,9579,9580,9581,9582,9583,9584,9585,9586,9587,9588,9589,9590,9591,9592,9593,9594,9595,9596,9597,9598,9599,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,66,111,120,68,114,97,119,105,110,103,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,66,111,120,68,114,97,119,105,110,103,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00266'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,9600,9631,44,9600,9601,9602,9603,9604,9605,9606,9607,9608,9609,9610,9611,9612,9613,9614,9615,9616,9617,9618,9619,9620,9621,9622,9623,9624,9625,9626,9627,9628,9629,9630,9631,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,66,108,111,99,107,69,108,101,109,101,110,116,115,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,66,108,111,99,107,69,108,101,109,101,110,116,115,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00267'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,9632,9727,44,9632,9633,9634,9635,9636,9637,9638,9639,9640,9641,9642,9643,9644,9645,9646,9647,9648,9649,9650,9651,9652,9653,9654,9655,9656,9657,9658,9659,9660,9661,9662,9663,9664,9665,9666,9667,9668,9669,9670,9671,9672,9673,9674,9675,9676,9677,9678,9679,9680,9681,9682,9683,9684,9685,9686,9687,9688,9689,9690,9691,9692,9693,9694,9695,9696,9697,9698,9699,9700,9701,9702,9703,9704,9705,9706,9707,9708,9709,9710,9711,9712,9713,9714,9715,9716,9717,9718,9719,9720,9721,9722,9723,9724,9725,9726,9727,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,71,101,111,109,101,116,114,105,99,83,104,97,112,101,115,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,71,101,111,109,101,116,114,105,99,83,104,97,112,101,115,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00268'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,9728,9983,44,9728,9729,9730,9731,9732,9733,9734,9735,9736,9737,9738,9739,9740,9741,9742,9743,9744,9745,9746,9747,9748,9749,9750,9751,9752,9753,9754,9755,9756,9757,9758,9759,9760,9761,9762,9763,9764,9765,9766,9767,9768,9769,9770,9771,9772,9773,9774,9775,9776,9777,9778,9779,9780,9781,9782,9783,9784,9785,9786,9787,9788,9789,9790,9791,9792,9793,9794,9795,9796,9797,9798,9799,9800,9801,9802,9803,9804,9805,9806,9807,9808,9809,9810,9811,9812,9813,9814,9815,9816,9817,9818,9819,9820,9821,9822,9823,9824,9825,9826,9827,9828,9829,9830,9831,9832,9833,9834,9835,9836,9837,9838,9839,9840,9841,9842,9843,9844,9845,9846,9847,9848,9849,9850,9851,9852,9853,9854,9855,9856,9857,9858,9859,9860,9861,9862,9863,9864,9865,9866,9867,9868,9869,9870,9871,9872,9873,9874,9875,9876,9877,9878,9879,9880,9881,9882,9883,9884,9885,9886,9887,9888,9889,9890,9891,9892,9893,9894,9895,9896,9897,9898,9899,9900,9901,9902,9903,9904,9905,9906,9907,9908,9909,9910,9911,9912,9913,9914,9915,9916,9917,9918,9919,9920,9921,9922,9923,9924,9925,9926,9927,9928,9929,9930,9931,9932,9933,9934,9935,9936,9937,9938,9939,9940,9941,9942,9943,9944,9945,9946,9947,9948,9949,9950,9951,9952,9953,9954,9955,9956,9957,9958,9959,9960,9961,9962,9963,9964,9965,9966,9967,9968,9969,9970,9971,9972,9973,9974,9975,9976,9977,9978,9979,9980,9981,9982,9983,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,77,105,115,99,101,108,108,97,110,101,111,117,115,83,121,109,98,111,108,115,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,77,105,115,99,101,108,108,97,110,101,111,117,115,83,121,109,98,111,108,115,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00269'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,9984,10175,44,9984,9985,9986,9987,9988,9989,9990,9991,9992,9993,9994,9995,9996,9997,9998,9999,10000,10001,10002,10003,10004,10005,10006,10007,10008,10009,10010,10011,10012,10013,10014,10015,10016,10017,10018,10019,10020,10021,10022,10023,10024,10025,10026,10027,10028,10029,10030,10031,10032,10033,10034,10035,10036,10037,10038,10039,10040,10041,10042,10043,10044,10045,10046,10047,10048,10049,10050,10051,10052,10053,10054,10055,10056,10057,10058,10059,10060,10061,10062,10063,10064,10065,10066,10067,10068,10069,10070,10071,10072,10073,10074,10075,10076,10077,10078,10079,10080,10081,10082,10083,10084,10085,10086,10087,10088,10089,10090,10091,10092,10093,10094,10095,10096,10097,10098,10099,10100,10101,10102,10103,10104,10105,10106,10107,10108,10109,10110,10111,10112,10113,10114,10115,10116,10117,10118,10119,10120,10121,10122,10123,10124,10125,10126,10127,10128,10129,10130,10131,10132,10133,10134,10135,10136,10137,10138,10139,10140,10141,10142,10143,10144,10145,10146,10147,10148,10149,10150,10151,10152,10153,10154,10155,10156,10157,10158,10159,10160,10161,10162,10163,10164,10165,10166,10167,10168,10169,10170,10171,10172,10173,10174,10175,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,68,105,110,103,98,97,116,115,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,68,105,110,103,98,97,116,115,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00270'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,10240,10495,44,10240,10241,10242,10243,10244,10245,10246,10247,10248,10249,10250,10251,10252,10253,10254,10255,10256,10257,10258,10259,10260,10261,10262,10263,10264,10265,10266,10267,10268,10269,10270,10271,10272,10273,10274,10275,10276,10277,10278,10279,10280,10281,10282,10283,10284,10285,10286,10287,10288,10289,10290,10291,10292,10293,10294,10295,10296,10297,10298,10299,10300,10301,10302,10303,10304,10305,10306,10307,10308,10309,10310,10311,10312,10313,10314,10315,10316,10317,10318,10319,10320,10321,10322,10323,10324,10325,10326,10327,10328,10329,10330,10331,10332,10333,10334,10335,10336,10337,10338,10339,10340,10341,10342,10343,10344,10345,10346,10347,10348,10349,10350,10351,10352,10353,10354,10355,10356,10357,10358,10359,10360,10361,10362,10363,10364,10365,10366,10367,10368,10369,10370,10371,10372,10373,10374,10375,10376,10377,10378,10379,10380,10381,10382,10383,10384,10385,10386,10387,10388,10389,10390,10391,10392,10393,10394,10395,10396,10397,10398,10399,10400,10401,10402,10403,10404,10405,10406,10407,10408,10409,10410,10411,10412,10413,10414,10415,10416,10417,10418,10419,10420,10421,10422,10423,10424,10425,10426,10427,10428,10429,10430,10431,10432,10433,10434,10435,10436,10437,10438,10439,10440,10441,10442,10443,10444,10445,10446,10447,10448,10449,10450,10451,10452,10453,10454,10455,10456,10457,10458,10459,10460,10461,10462,10463,10464,10465,10466,10467,10468,10469,10470,10471,10472,10473,10474,10475,10476,10477,10478,10479,10480,10481,10482,10483,10484,10485,10486,10487,10488,10489,10490,10491,10492,10493,10494,10495,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,66,114,97,105,108,108,101,80,97,116,116,101,114,110,115,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,66,114,97,105,108,108,101,80,97,116,116,101,114,110,115,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00271'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,11904,12031,44,11904,11905,11906,11907,11908,11909,11910,11911,11912,11913,11914,11915,11916,11917,11918,11919,11920,11921,11922,11923,11924,11925,11926,11927,11928,11929,11930,11931,11932,11933,11934,11935,11936,11937,11938,11939,11940,11941,11942,11943,11944,11945,11946,11947,11948,11949,11950,11951,11952,11953,11954,11955,11956,11957,11958,11959,11960,11961,11962,11963,11964,11965,11966,11967,11968,11969,11970,11971,11972,11973,11974,11975,11976,11977,11978,11979,11980,11981,11982,11983,11984,11985,11986,11987,11988,11989,11990,11991,11992,11993,11994,11995,11996,11997,11998,11999,12000,12001,12002,12003,12004,12005,12006,12007,12008,12009,12010,12011,12012,12013,12014,12015,12016,12017,12018,12019,12020,12021,12022,12023,12024,12025,12026,12027,12028,12029,12030,12031,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,74,75,82,97,100,105,99,97,108,115,83,117,112,112,108,101,109,101,110,116,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,74,75,82,97,100,105,99,97,108,115,83,117,112,112,108,101,109,101,110,116,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00272'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,12032,12255,44,12032,12033,12034,12035,12036,12037,12038,12039,12040,12041,12042,12043,12044,12045,12046,12047,12048,12049,12050,12051,12052,12053,12054,12055,12056,12057,12058,12059,12060,12061,12062,12063,12064,12065,12066,12067,12068,12069,12070,12071,12072,12073,12074,12075,12076,12077,12078,12079,12080,12081,12082,12083,12084,12085,12086,12087,12088,12089,12090,12091,12092,12093,12094,12095,12096,12097,12098,12099,12100,12101,12102,12103,12104,12105,12106,12107,12108,12109,12110,12111,12112,12113,12114,12115,12116,12117,12118,12119,12120,12121,12122,12123,12124,12125,12126,12127,12128,12129,12130,12131,12132,12133,12134,12135,12136,12137,12138,12139,12140,12141,12142,12143,12144,12145,12146,12147,12148,12149,12150,12151,12152,12153,12154,12155,12156,12157,12158,12159,12160,12161,12162,12163,12164,12165,12166,12167,12168,12169,12170,12171,12172,12173,12174,12175,12176,12177,12178,12179,12180,12181,12182,12183,12184,12185,12186,12187,12188,12189,12190,12191,12192,12193,12194,12195,12196,12197,12198,12199,12200,12201,12202,12203,12204,12205,12206,12207,12208,12209,12210,12211,12212,12213,12214,12215,12216,12217,12218,12219,12220,12221,12222,12223,12224,12225,12226,12227,12228,12229,12230,12231,12232,12233,12234,12235,12236,12237,12238,12239,12240,12241,12242,12243,12244,12245,12246,12247,12248,12249,12250,12251,12252,12253,12254,12255,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,75,97,110,103,120,105,82,97,100,105,99,97,108,115,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,75,97,110,103,120,105,82,97,100,105,99,97,108,115,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00273'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,12272,12287,44,12272,12273,12274,12275,12276,12277,12278,12279,12280,12281,12282,12283,12284,12285,12286,12287,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,73,100,101,111,103,114,97,112,104,105,99,68,101,115,99,114,105,112,116,105,111,110,67,104,97,114,97,99,116,101,114,115,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,73,100,101,111,103,114,97,112,104,105,99,68,101,115,99,114,105,112,116,105,111,110,67,104,97,114,97,99,116,101,114,115,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00274'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,12288,12351,44,12288,12289,12290,12291,12292,12293,12294,12295,12296,12297,12298,12299,12300,12301,12302,12303,12304,12305,12306,12307,12308,12309,12310,12311,12312,12313,12314,12315,12316,12317,12318,12319,12320,12321,12322,12323,12324,12325,12326,12327,12328,12329,12330,12331,12332,12333,12334,12335,12336,12337,12338,12339,12340,12341,12342,12343,12344,12345,12346,12347,12348,12349,12350,12351,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,74,75,83,121,109,98,111,108,115,97,110,100,80,117,110,99,116,117,97,116,105,111,110,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,74,75,83,121,109,98,111,108,115,97,110,100,80,117,110,99,116,117,97,116,105,111,110,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00275'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,12352,12447,44,12352,12353,12354,12355,12356,12357,12358,12359,12360,12361,12362,12363,12364,12365,12366,12367,12368,12369,12370,12371,12372,12373,12374,12375,12376,12377,12378,12379,12380,12381,12382,12383,12384,12385,12386,12387,12388,12389,12390,12391,12392,12393,12394,12395,12396,12397,12398,12399,12400,12401,12402,12403,12404,12405,12406,12407,12408,12409,12410,12411,12412,12413,12414,12415,12416,12417,12418,12419,12420,12421,12422,12423,12424,12425,12426,12427,12428,12429,12430,12431,12432,12433,12434,12435,12436,12437,12438,12439,12440,12441,12442,12443,12444,12445,12446,12447,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,72,105,114,97,103,97,110,97,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,72,105,114,97,103,97,110,97,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00276'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,12448,12543,44,12448,12449,12450,12451,12452,12453,12454,12455,12456,12457,12458,12459,12460,12461,12462,12463,12464,12465,12466,12467,12468,12469,12470,12471,12472,12473,12474,12475,12476,12477,12478,12479,12480,12481,12482,12483,12484,12485,12486,12487,12488,12489,12490,12491,12492,12493,12494,12495,12496,12497,12498,12499,12500,12501,12502,12503,12504,12505,12506,12507,12508,12509,12510,12511,12512,12513,12514,12515,12516,12517,12518,12519,12520,12521,12522,12523,12524,12525,12526,12527,12528,12529,12530,12531,12532,12533,12534,12535,12536,12537,12538,12539,12540,12541,12542,12543,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,75,97,116,97,107,97,110,97,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,75,97,116,97,107,97,110,97,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00277'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,12544,12591,44,12544,12545,12546,12547,12548,12549,12550,12551,12552,12553,12554,12555,12556,12557,12558,12559,12560,12561,12562,12563,12564,12565,12566,12567,12568,12569,12570,12571,12572,12573,12574,12575,12576,12577,12578,12579,12580,12581,12582,12583,12584,12585,12586,12587,12588,12589,12590,12591,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,66,111,112,111,109,111,102,111,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,66,111,112,111,109,111,102,111,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00278'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,12592,12687,44,12592,12593,12594,12595,12596,12597,12598,12599,12600,12601,12602,12603,12604,12605,12606,12607,12608,12609,12610,12611,12612,12613,12614,12615,12616,12617,12618,12619,12620,12621,12622,12623,12624,12625,12626,12627,12628,12629,12630,12631,12632,12633,12634,12635,12636,12637,12638,12639,12640,12641,12642,12643,12644,12645,12646,12647,12648,12649,12650,12651,12652,12653,12654,12655,12656,12657,12658,12659,12660,12661,12662,12663,12664,12665,12666,12667,12668,12669,12670,12671,12672,12673,12674,12675,12676,12677,12678,12679,12680,12681,12682,12683,12684,12685,12686,12687,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,72,97,110,103,117,108,67,111,109,112,97,116,105,98,105,108,105,116,121,74,97,109,111,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,72,97,110,103,117,108,67,111,109,112,97,116,105,98,105,108,105,116,121,74,97,109,111,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00279'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,12688,12703,44,12688,12689,12690,12691,12692,12693,12694,12695,12696,12697,12698,12699,12700,12701,12702,12703,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,75,97,110,98,117,110,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,75,97,110,98,117,110,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00280'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,12704,12735,44,12704,12705,12706,12707,12708,12709,12710,12711,12712,12713,12714,12715,12716,12717,12718,12719,12720,12721,12722,12723,12724,12725,12726,12727,12728,12729,12730,12731,12732,12733,12734,12735,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,66,111,112,111,109,111,102,111,69,120,116,101,110,100,101,100,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,66,111,112,111,109,111,102,111,69,120,116,101,110,100,101,100,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00281'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,12800,13055,44,12800,12801,12802,12803,12804,12805,12806,12807,12808,12809,12810,12811,12812,12813,12814,12815,12816,12817,12818,12819,12820,12821,12822,12823,12824,12825,12826,12827,12828,12829,12830,12831,12832,12833,12834,12835,12836,12837,12838,12839,12840,12841,12842,12843,12844,12845,12846,12847,12848,12849,12850,12851,12852,12853,12854,12855,12856,12857,12858,12859,12860,12861,12862,12863,12864,12865,12866,12867,12868,12869,12870,12871,12872,12873,12874,12875,12876,12877,12878,12879,12880,12881,12882,12883,12884,12885,12886,12887,12888,12889,12890,12891,12892,12893,12894,12895,12896,12897,12898,12899,12900,12901,12902,12903,12904,12905,12906,12907,12908,12909,12910,12911,12912,12913,12914,12915,12916,12917,12918,12919,12920,12921,12922,12923,12924,12925,12926,12927,12928,12929,12930,12931,12932,12933,12934,12935,12936,12937,12938,12939,12940,12941,12942,12943,12944,12945,12946,12947,12948,12949,12950,12951,12952,12953,12954,12955,12956,12957,12958,12959,12960,12961,12962,12963,12964,12965,12966,12967,12968,12969,12970,12971,12972,12973,12974,12975,12976,12977,12978,12979,12980,12981,12982,12983,12984,12985,12986,12987,12988,12989,12990,12991,12992,12993,12994,12995,12996,12997,12998,12999,13000,13001,13002,13003,13004,13005,13006,13007,13008,13009,13010,13011,13012,13013,13014,13015,13016,13017,13018,13019,13020,13021,13022,13023,13024,13025,13026,13027,13028,13029,13030,13031,13032,13033,13034,13035,13036,13037,13038,13039,13040,13041,13042,13043,13044,13045,13046,13047,13048,13049,13050,13051,13052,13053,13054,13055,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,69,110,99,108,111,115,101,100,67,74,75,76,101,116,116,101,114,115,97,110,100,77,111,110,116,104,115,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,69,110,99,108,111,115,101,100,67,74,75,76,101,116,116,101,114,115,97,110,100,77,111,110,116,104,115,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00282'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,13056,13311,44,13056,13057,13058,13059,13060,13061,13062,13063,13064,13065,13066,13067,13068,13069,13070,13071,13072,13073,13074,13075,13076,13077,13078,13079,13080,13081,13082,13083,13084,13085,13086,13087,13088,13089,13090,13091,13092,13093,13094,13095,13096,13097,13098,13099,13100,13101,13102,13103,13104,13105,13106,13107,13108,13109,13110,13111,13112,13113,13114,13115,13116,13117,13118,13119,13120,13121,13122,13123,13124,13125,13126,13127,13128,13129,13130,13131,13132,13133,13134,13135,13136,13137,13138,13139,13140,13141,13142,13143,13144,13145,13146,13147,13148,13149,13150,13151,13152,13153,13154,13155,13156,13157,13158,13159,13160,13161,13162,13163,13164,13165,13166,13167,13168,13169,13170,13171,13172,13173,13174,13175,13176,13177,13178,13179,13180,13181,13182,13183,13184,13185,13186,13187,13188,13189,13190,13191,13192,13193,13194,13195,13196,13197,13198,13199,13200,13201,13202,13203,13204,13205,13206,13207,13208,13209,13210,13211,13212,13213,13214,13215,13216,13217,13218,13219,13220,13221,13222,13223,13224,13225,13226,13227,13228,13229,13230,13231,13232,13233,13234,13235,13236,13237,13238,13239,13240,13241,13242,13243,13244,13245,13246,13247,13248,13249,13250,13251,13252,13253,13254,13255,13256,13257,13258,13259,13260,13261,13262,13263,13264,13265,13266,13267,13268,13269,13270,13271,13272,13273,13274,13275,13276,13277,13278,13279,13280,13281,13282,13283,13284,13285,13286,13287,13288,13289,13290,13291,13292,13293,13294,13295,13296,13297,13298,13299,13300,13301,13302,13303,13304,13305,13306,13307,13308,13309,13310,13311,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,74,75,67,111,109,112,97,116,105,98,105,108,105,116,121,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,74,75,67,111,109,112,97,116,105,98,105,108,105,116,121,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00283'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,13312,19893,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,74,75,85,110,105,102,105,101,100,73,100,101,111,103,114,97,112,104,115,69,120,116,101,110,115,105,111,110,65,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,74,75,85,110,105,102,105,101,100,73,100,101,111,103,114,97,112,104,115,69,120,116,101,110,115,105,111,110,65,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00284'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,19968,40959,44,19968,19969,19970,19971,19972,19973,19974,19975,19976,19977,19978,19979,19980,19981,19982,19983,19984,19985,19986,19987,19988,19989,19990,19991,19992,19993,19994,19995,19996,19997,19998,19999,20000,20001,20002,20003,20004,20005,20006,20007,20008,20009,20010,20011,20012,20013,20014,20015,20016,20017,20018,20019,20020,20021,20022,20023,20024,20025,20026,20027,20028,20029,20030,20031,20032,20033,20034,20035,20036,20037,20038,20039,20040,20041,20042,20043,20044,20045,20046,20047,20048,20049,20050,20051,20052,20053,20054,20055,20056,20057,20058,20059,20060,20061,20062,20063,20064,20065,20066,20067,20068,20069,20070,20071,20072,20073,20074,20075,20076,20077,20078,20079,20080,20081,20082,20083,20084,20085,20086,20087,20088,20089,20090,20091,20092,20093,20094,20095,20096,20097,20098,20099,20100,20101,20102,20103,20104,20105,20106,20107,20108,20109,20110,20111,20112,20113,20114,20115,20116,20117,20118,20119,20120,20121,20122,20123,20124,20125,20126,20127,20128,20129,20130,20131,20132,20133,20134,20135,20136,20137,20138,20139,20140,20141,20142,20143,20144,20145,20146,20147,20148,20149,20150,20151,20152,20153,20154,20155,20156,20157,20158,20159,20160,20161,20162,20163,20164,20165,20166,20167,20168,20169,20170,20171,20172,20173,20174,20175,20176,20177,20178,20179,20180,20181,20182,20183,20184,20185,20186,20187,20188,20189,20190,20191,20192,20193,20194,20195,20196,20197,20198,20199,20200,20201,20202,20203,20204,20205,20206,20207,20208,20209,20210,20211,20212,20213,20214,20215,20216,20217,20218,20219,20220,20221,20222,20223,20224,20225,20226,20227,20228,20229,20230,20231,20232,20233,20234,20235,20236,20237,20238,20239,20240,20241,20242,20243,20244,20245,20246,20247,20248,20249,20250,20251,20252,20253,20254,20255,20256,20257,20258,20259,20260,20261,20262,20263,20264,20265,20266,20267,20268,20269,20270,20271,20272,20273,20274,20275,20276,20277,20278,20279,20280,20281,20282,20283,20284,20285,20286,20287,20288,20289,20290,20291,20292,20293,20294,20295,20296,20297,20298,20299,20300,20301,20302,20303,20304,20305,20306,20307,20308,20309,20310,20311,20312,20313,20314,20315,20316,20317,20318,20319,20320,20321,20322,20323,20324,20325,20326,20327,20328,20329,20330,20331,20332,20333,20334,20335,20336,20337,20338,20339,20340,20341,20342,20343,20344,20345,20346,20347,20348,20349,20350,20351,20352,20353,20354,20355,20356,20357,20358,20359,20360,20361,20362,20363,20364,20365,20366,20367,20368,20369,20370,20371,20372,20373,20374,20375,20376,20377,20378,20379,20380,20381,20382,20383,20384,20385,20386,20387,20388,20389,20390,20391,20392,20393,20394,20395,20396,20397,20398,20399,20400,20401,20402,20403,20404,20405,20406,20407,20408,20409,20410,20411,20412,20413,20414,20415,20416,20417,20418,20419,20420,20421,20422,20423,20424,20425,20426,20427,20428,20429,20430,20431,20432,20433,20434,20435,20436,20437,20438,20439,20440,20441,20442,20443,20444,20445,20446,20447,20448,20449,20450,20451,20452,20453,20454,20455,20456,20457,20458,20459,20460,20461,20462,20463,20464,20465,20466,20467,20468,20469,20470,20471,20472,20473,20474,20475,20476,20477,20478,20479,20480,20481,20482,20483,20484,20485,20486,20487,20488,20489,20490,20491,20492,20493,20494,20495,20496,20497,20498,20499,20500,20501,20502,20503,20504,20505,20506,20507,20508,20509,20510,20511,20512,20513,20514,20515,20516,20517,20518,20519,20520,20521,20522,20523,20524,20525,20526,20527,20528,20529,20530,20531,20532,20533,20534,20535,20536,20537,20538,20539,20540,20541,20542,20543,20544,20545,20546,20547,20548,20549,20550,20551,20552,20553,20554,20555,20556,20557,20558,20559,20560,20561,20562,20563,20564,20565,20566,20567,20568,20569,20570,20571,20572,20573,20574,20575,20576,20577,20578,20579,20580,20581,20582,20583,20584,20585,20586,20587,20588,20589,20590,20591,20592,20593,20594,20595,20596,20597,20598,20599,20600,20601,20602,20603,20604,20605,20606,20607,20608,20609,20610,20611,20612,20613,20614,20615,20616,20617,20618,20619,20620,20621,20622,20623,20624,20625,20626,20627,20628,20629,20630,20631,20632,20633,20634,20635,20636,20637,20638,20639,20640,20641,20642,20643,20644,20645,20646,20647,20648,20649,20650,20651,20652,20653,20654,20655,20656,20657,20658,20659,20660,20661,20662,20663,20664,20665,20666,20667,20668,20669,20670,20671,20672,20673,20674,20675,20676,20677,20678,20679,20680,20681,20682,20683,20684,20685,20686,20687,20688,20689,20690,20691,20692,20693,20694,20695,20696,20697,20698,20699,20700,20701,20702,20703,20704,20705,20706,20707,20708,20709,20710,20711,20712,20713,20714,20715,20716,20717,20718,20719,20720,20721,20722,20723,20724,20725,20726,20727,20728,20729,20730,20731,20732,20733,20734,20735,20736,20737,20738,20739,20740,20741,20742,20743,20744,20745,20746,20747,20748,20749,20750,20751,20752,20753,20754,20755,20756,20757,20758,20759,20760,20761,20762,20763,20764,20765,20766,20767,20768,20769,20770,20771,20772,20773,20774,20775,20776,20777,20778,20779,20780,20781,20782,20783,20784,20785,20786,20787,20788,20789,20790,20791,20792,20793,20794,20795,20796,20797,20798,20799,20800,20801,20802,20803,20804,20805,20806,20807,20808,20809,20810,20811,20812,20813,20814,20815,20816,20817,20818,20819,20820,20821,20822,20823,20824,20825,20826,20827,20828,20829,20830,20831,20832,20833,20834,20835,20836,20837,20838,20839,20840,20841,20842,20843,20844,20845,20846,20847,20848,20849,20850,20851,20852,20853,20854,20855,20856,20857,20858,20859,20860,20861,20862,20863,20864,20865,20866,20867,20868,20869,20870,20871,20872,20873,20874,20875,20876,20877,20878,20879,20880,20881,20882,20883,20884,20885,20886,20887,20888,20889,20890,20891,20892,20893,20894,20895,20896,20897,20898,20899,20900,20901,20902,20903,20904,20905,20906,20907,20908,20909,20910,20911,20912,20913,20914,20915,20916,20917,20918,20919,20920,20921,20922,20923,20924,20925,20926,20927,20928,20929,20930,20931,20932,20933,20934,20935,20936,20937,20938,20939,20940,20941,20942,20943,20944,20945,20946,20947,20948,20949,20950,20951,20952,20953,20954,20955,20956,20957,20958,20959,20960,20961,20962,20963,20964,20965,20966,20967,20968,20969,20970,20971,20972,20973,20974,20975,20976,20977,20978,20979,20980,20981,20982,20983,20984,20985,20986,20987,20988,20989,20990,20991,20992,20993,20994,20995,20996,20997,20998,20999,21000,21001,21002,21003,21004,21005,21006,21007,21008,21009,21010,21011,21012,21013,21014,21015,21016,21017,21018,21019,21020,21021,21022,21023,21024,21025,21026,21027,21028,21029,21030,21031,21032,21033,21034,21035,21036,21037,21038,21039,21040,21041,21042,21043,21044,21045,21046,21047,21048,21049,21050,21051,21052,21053,21054,21055,21056,21057,21058,21059,21060,21061,21062,21063,21064,21065,21066,21067,21068,21069,21070,21071,21072,21073,21074,21075,21076,21077,21078,21079,21080,21081,21082,21083,21084,21085,21086,21087,21088,21089,21090,21091,21092,21093,21094,21095,21096,21097,21098,21099,21100,21101,21102,21103,21104,21105,21106,21107,21108,21109,21110,21111,21112,21113,21114,21115,21116,21117,21118,21119,21120,21121,21122,21123,21124,21125,21126,21127,21128,21129,21130,21131,21132,21133,21134,21135,21136,21137,21138,21139,21140,21141,21142,21143,21144,21145,21146,21147,21148,21149,21150,21151,21152,21153,21154,21155,21156,21157,21158,21159,21160,21161,21162,21163,21164,21165,21166,21167,21168,21169,21170,21171,21172,21173,21174,21175,21176,21177,21178,21179,21180,21181,21182,21183,21184,21185,21186,21187,21188,21189,21190,21191,21192,21193,21194,21195,21196,21197,21198,21199,21200,21201,21202,21203,21204,21205,21206,21207,21208,21209,21210,21211,21212,21213,21214,21215,21216,21217,21218,21219,21220,21221,21222,21223,21224,21225,21226,21227,21228,21229,21230,21231,21232,21233,21234,21235,21236,21237,21238,21239,21240,21241,21242,21243,21244,21245,21246,21247,21248,21249,21250,21251,21252,21253,21254,21255,21256,21257,21258,21259,21260,21261,21262,21263,21264,21265,21266,21267,21268,21269,21270,21271,21272,21273,21274,21275,21276,21277,21278,21279,21280,21281,21282,21283,21284,21285,21286,21287,21288,21289,21290,21291,21292,21293,21294,21295,21296,21297,21298,21299,21300,21301,21302,21303,21304,21305,21306,21307,21308,21309,21310,21311,21312,21313,21314,21315,21316,21317,21318,21319,21320,21321,21322,21323,21324,21325,21326,21327,21328,21329,21330,21331,21332,21333,21334,21335,21336,21337,21338,21339,21340,21341,21342,21343,21344,21345,21346,21347,21348,21349,21350,21351,21352,21353,21354,21355,21356,21357,21358,21359,21360,21361,21362,21363,21364,21365,21366,21367,21368,21369,21370,21371,21372,21373,21374,21375,21376,21377,21378,21379,21380,21381,21382,21383,21384,21385,21386,21387,21388,21389,21390,21391,21392,21393,21394,21395,21396,21397,21398,21399,21400,21401,21402,21403,21404,21405,21406,21407,21408,21409,21410,21411,21412,21413,21414,21415,21416,21417,21418,21419,21420,21421,21422,21423,21424,21425,21426,21427,21428,21429,21430,21431,21432,21433,21434,21435,21436,21437,21438,21439,21440,21441,21442,21443,21444,21445,21446,21447,21448,21449,21450,21451,21452,21453,21454,21455,21456,21457,21458,21459,21460,21461,21462,21463,21464,21465,21466,21467,21468,21469,21470,21471,21472,21473,21474,21475,21476,21477,21478,21479,21480,21481,21482,21483,21484,21485,21486,21487,21488,21489,21490,21491,21492,21493,21494,21495,21496,21497,21498,21499,21500,21501,21502,21503,21504,21505,21506,21507,21508,21509,21510,21511,21512,21513,21514,21515,21516,21517,21518,21519,21520,21521,21522,21523,21524,21525,21526,21527,21528,21529,21530,21531,21532,21533,21534,21535,21536,21537,21538,21539,21540,21541,21542,21543,21544,21545,21546,21547,21548,21549,21550,21551,21552,21553,21554,21555,21556,21557,21558,21559,21560,21561,21562,21563,21564,21565,21566,21567,21568,21569,21570,21571,21572,21573,21574,21575,21576,21577,21578,21579,21580,21581,21582,21583,21584,21585,21586,21587,21588,21589,21590,21591,21592,21593,21594,21595,21596,21597,21598,21599,21600,21601,21602,21603,21604,21605,21606,21607,21608,21609,21610,21611,21612,21613,21614,21615,21616,21617,21618,21619,21620,21621,21622,21623,21624,21625,21626,21627,21628,21629,21630,21631,21632,21633,21634,21635,21636,21637,21638,21639,21640,21641,21642,21643,21644,21645,21646,21647,21648,21649,21650,21651,21652,21653,21654,21655,21656,21657,21658,21659,21660,21661,21662,21663,21664,21665,21666,21667,21668,21669,21670,21671,21672,21673,21674,21675,21676,21677,21678,21679,21680,21681,21682,21683,21684,21685,21686,21687,21688,21689,21690,21691,21692,21693,21694,21695,21696,21697,21698,21699,21700,21701,21702,21703,21704,21705,21706,21707,21708,21709,21710,21711,21712,21713,21714,21715,21716,21717,21718,21719,21720,21721,21722,21723,21724,21725,21726,21727,21728,21729,21730,21731,21732,21733,21734,21735,21736,21737,21738,21739,21740,21741,21742,21743,21744,21745,21746,21747,21748,21749,21750,21751,21752,21753,21754,21755,21756,21757,21758,21759,21760,21761,21762,21763,21764,21765,21766,21767,21768,21769,21770,21771,21772,21773,21774,21775,21776,21777,21778,21779,21780,21781,21782,21783,21784,21785,21786,21787,21788,21789,21790,21791,21792,21793,21794,21795,21796,21797,21798,21799,21800,21801,21802,21803,21804,21805,21806,21807,21808,21809,21810,21811,21812,21813,21814,21815,21816,21817,21818,21819,21820,21821,21822,21823,21824,21825,21826,21827,21828,21829,21830,21831,21832,21833,21834,21835,21836,21837,21838,21839,21840,21841,21842,21843,21844,21845,21846,21847,21848,21849,21850,21851,21852,21853,21854,21855,21856,21857,21858,21859,21860,21861,21862,21863,21864,21865,21866,21867,21868,21869,21870,21871,21872,21873,21874,21875,21876,21877,21878,21879,21880,21881,21882,21883,21884,21885,21886,21887,21888,21889,21890,21891,21892,21893,21894,21895,21896,21897,21898,21899,21900,21901,21902,21903,21904,21905,21906,21907,21908,21909,21910,21911,21912,21913,21914,21915,21916,21917,21918,21919,21920,21921,21922,21923,21924,21925,21926,21927,21928,21929,21930,21931,21932,21933,21934,21935,21936,21937,21938,21939,21940,21941,21942,21943,21944,21945,21946,21947,21948,21949,21950,21951,21952,21953,21954,21955,21956,21957,21958,21959,21960,21961,21962,21963,21964,21965,21966,21967,21968,21969,21970,21971,21972,21973,21974,21975,21976,21977,21978,21979,21980,21981,21982,21983,21984,21985,21986,21987,21988,21989,21990,21991,21992,21993,21994,21995,21996,21997,21998,21999,22000,22001,22002,22003,22004,22005,22006,22007,22008,22009,22010,22011,22012,22013,22014,22015,22016,22017,22018,22019,22020,22021,22022,22023,22024,22025,22026,22027,22028,22029,22030,22031,22032,22033,22034,22035,22036,22037,22038,22039,22040,22041,22042,22043,22044,22045,22046,22047,22048,22049,22050,22051,22052,22053,22054,22055,22056,22057,22058,22059,22060,22061,22062,22063,22064,22065,22066,22067,22068,22069,22070,22071,22072,22073,22074,22075,22076,22077,22078,22079,22080,22081,22082,22083,22084,22085,22086,22087,22088,22089,22090,22091,22092,22093,22094,22095,22096,22097,22098,22099,22100,22101,22102,22103,22104,22105,22106,22107,22108,22109,22110,22111,22112,22113,22114,22115,22116,22117,22118,22119,22120,22121,22122,22123,22124,22125,22126,22127,22128,22129,22130,22131,22132,22133,22134,22135,22136,22137,22138,22139,22140,22141,22142,22143,22144,22145,22146,22147,22148,22149,22150,22151,22152,22153,22154,22155,22156,22157,22158,22159,22160,22161,22162,22163,22164,22165,22166,22167,22168,22169,22170,22171,22172,22173,22174,22175,22176,22177,22178,22179,22180,22181,22182,22183,22184,22185,22186,22187,22188,22189,22190,22191,22192,22193,22194,22195,22196,22197,22198,22199,22200,22201,22202,22203,22204,22205,22206,22207,22208,22209,22210,22211,22212,22213,22214,22215,22216,22217,22218,22219,22220,22221,22222,22223,22224,22225,22226,22227,22228,22229,22230,22231,22232,22233,22234,22235,22236,22237,22238,22239,22240,22241,22242,22243,22244,22245,22246,22247,22248,22249,22250,22251,22252,22253,22254,22255,22256,22257,22258,22259,22260,22261,22262,22263,22264,22265,22266,22267,22268,22269,22270,22271,22272,22273,22274,22275,22276,22277,22278,22279,22280,22281,22282,22283,22284,22285,22286,22287,22288,22289,22290,22291,22292,22293,22294,22295,22296,22297,22298,22299,22300,22301,22302,22303,22304,22305,22306,22307,22308,22309,22310,22311,22312,22313,22314,22315,22316,22317,22318,22319,22320,22321,22322,22323,22324,22325,22326,22327,22328,22329,22330,22331,22332,22333,22334,22335,22336,22337,22338,22339,22340,22341,22342,22343,22344,22345,22346,22347,22348,22349,22350,22351,22352,22353,22354,22355,22356,22357,22358,22359,22360,22361,22362,22363,22364,22365,22366,22367,22368,22369,22370,22371,22372,22373,22374,22375,22376,22377,22378,22379,22380,22381,22382,22383,22384,22385,22386,22387,22388,22389,22390,22391,22392,22393,22394,22395,22396,22397,22398,22399,22400,22401,22402,22403,22404,22405,22406,22407,22408,22409,22410,22411,22412,22413,22414,22415,22416,22417,22418,22419,22420,22421,22422,22423,22424,22425,22426,22427,22428,22429,22430,22431,22432,22433,22434,22435,22436,22437,22438,22439,22440,22441,22442,22443,22444,22445,22446,22447,22448,22449,22450,22451,22452,22453,22454,22455,22456,22457,22458,22459,22460,22461,22462,22463,22464,22465,22466,22467,22468,22469,22470,22471,22472,22473,22474,22475,22476,22477,22478,22479,22480,22481,22482,22483,22484,22485,22486,22487,22488,22489,22490,22491,22492,22493,22494,22495,22496,22497,22498,22499,22500,22501,22502,22503,22504,22505,22506,22507,22508,22509,22510,22511,22512,22513,22514,22515,22516,22517,22518,22519,22520,22521,22522,22523,22524,22525,22526,22527,22528,22529,22530,22531,22532,22533,22534,22535,22536,22537,22538,22539,22540,22541,22542,22543,22544,22545,22546,22547,22548,22549,22550,22551,22552,22553,22554,22555,22556,22557,22558,22559,22560,22561,22562,22563,22564,22565,22566,22567,22568,22569,22570,22571,22572,22573,22574,22575,22576,22577,22578,22579,22580,22581,22582,22583,22584,22585,22586,22587,22588,22589,22590,22591,22592,22593,22594,22595,22596,22597,22598,22599,22600,22601,22602,22603,22604,22605,22606,22607,22608,22609,22610,22611,22612,22613,22614,22615,22616,22617,22618,22619,22620,22621,22622,22623,22624,22625,22626,22627,22628,22629,22630,22631,22632,22633,22634,22635,22636,22637,22638,22639,22640,22641,22642,22643,22644,22645,22646,22647,22648,22649,22650,22651,22652,22653,22654,22655,22656,22657,22658,22659,22660,22661,22662,22663,22664,22665,22666,22667,22668,22669,22670,22671,22672,22673,22674,22675,22676,22677,22678,22679,22680,22681,22682,22683,22684,22685,22686,22687,22688,22689,22690,22691,22692,22693,22694,22695,22696,22697,22698,22699,22700,22701,22702,22703,22704,22705,22706,22707,22708,22709,22710,22711,22712,22713,22714,22715,22716,22717,22718,22719,22720,22721,22722,22723,22724,22725,22726,22727,22728,22729,22730,22731,22732,22733,22734,22735,22736,22737,22738,22739,22740,22741,22742,22743,22744,22745,22746,22747,22748,22749,22750,22751,22752,22753,22754,22755,22756,22757,22758,22759,22760,22761,22762,22763,22764,22765,22766,22767,22768,22769,22770,22771,22772,22773,22774,22775,22776,22777,22778,22779,22780,22781,22782,22783,22784,22785,22786,22787,22788,22789,22790,22791,22792,22793,22794,22795,22796,22797,22798,22799,22800,22801,22802,22803,22804,22805,22806,22807,22808,22809,22810,22811,22812,22813,22814,22815,22816,22817,22818,22819,22820,22821,22822,22823,22824,22825,22826,22827,22828,22829,22830,22831,22832,22833,22834,22835,22836,22837,22838,22839,22840,22841,22842,22843,22844,22845,22846,22847,22848,22849,22850,22851,22852,22853,22854,22855,22856,22857,22858,22859,22860,22861,22862,22863,22864,22865,22866,22867,22868,22869,22870,22871,22872,22873,22874,22875,22876,22877,22878,22879,22880,22881,22882,22883,22884,22885,22886,22887,22888,22889,22890,22891,22892,22893,22894,22895,22896,22897,22898,22899,22900,22901,22902,22903,22904,22905,22906,22907,22908,22909,22910,22911,22912,22913,22914,22915,22916,22917,22918,22919,22920,22921,22922,22923,22924,22925,22926,22927,22928,22929,22930,22931,22932,22933,22934,22935,22936,22937,22938,22939,22940,22941,22942,22943,22944,22945,22946,22947,22948,22949,22950,22951,22952,22953,22954,22955,22956,22957,22958,22959,22960,22961,22962,22963,22964,22965,22966,22967,22968,22969,22970,22971,22972,22973,22974,22975,22976,22977,22978,22979,22980,22981,22982,22983,22984,22985,22986,22987,22988,22989,22990,22991,22992,22993,22994,22995,22996,22997,22998,22999,23000,23001,23002,23003,23004,23005,23006,23007,23008,23009,23010,23011,23012,23013,23014,23015,23016,23017,23018,23019,23020,23021,23022,23023,23024,23025,23026,23027,23028,23029,23030,23031,23032,23033,23034,23035,23036,23037,23038,23039,23040,23041,23042,23043,23044,23045,23046,23047,23048,23049,23050,23051,23052,23053,23054,23055,23056,23057,23058,23059,23060,23061,23062,23063,23064,23065,23066,23067,23068,23069,23070,23071,23072,23073,23074,23075,23076,23077,23078,23079,23080,23081,23082,23083,23084,23085,23086,23087,23088,23089,23090,23091,23092,23093,23094,23095,23096,23097,23098,23099,23100,23101,23102,23103,23104,23105,23106,23107,23108,23109,23110,23111,23112,23113,23114,23115,23116,23117,23118,23119,23120,23121,23122,23123,23124,23125,23126,23127,23128,23129,23130,23131,23132,23133,23134,23135,23136,23137,23138,23139,23140,23141,23142,23143,23144,23145,23146,23147,23148,23149,23150,23151,23152,23153,23154,23155,23156,23157,23158,23159,23160,23161,23162,23163,23164,23165,23166,23167,23168,23169,23170,23171,23172,23173,23174,23175,23176,23177,23178,23179,23180,23181,23182,23183,23184,23185,23186,23187,23188,23189,23190,23191,23192,23193,23194,23195,23196,23197,23198,23199,23200,23201,23202,23203,23204,23205,23206,23207,23208,23209,23210,23211,23212,23213,23214,23215,23216,23217,23218,23219,23220,23221,23222,23223,23224,23225,23226,23227,23228,23229,23230,23231,23232,23233,23234,23235,23236,23237,23238,23239,23240,23241,23242,23243,23244,23245,23246,23247,23248,23249,23250,23251,23252,23253,23254,23255,23256,23257,23258,23259,23260,23261,23262,23263,23264,23265,23266,23267,23268,23269,23270,23271,23272,23273,23274,23275,23276,23277,23278,23279,23280,23281,23282,23283,23284,23285,23286,23287,23288,23289,23290,23291,23292,23293,23294,23295,23296,23297,23298,23299,23300,23301,23302,23303,23304,23305,23306,23307,23308,23309,23310,23311,23312,23313,23314,23315,23316,23317,23318,23319,23320,23321,23322,23323,23324,23325,23326,23327,23328,23329,23330,23331,23332,23333,23334,23335,23336,23337,23338,23339,23340,23341,23342,23343,23344,23345,23346,23347,23348,23349,23350,23351,23352,23353,23354,23355,23356,23357,23358,23359,23360,23361,23362,23363,23364,23365,23366,23367,23368,23369,23370,23371,23372,23373,23374,23375,23376,23377,23378,23379,23380,23381,23382,23383,23384,23385,23386,23387,23388,23389,23390,23391,23392,23393,23394,23395,23396,23397,23398,23399,23400,23401,23402,23403,23404,23405,23406,23407,23408,23409,23410,23411,23412,23413,23414,23415,23416,23417,23418,23419,23420,23421,23422,23423,23424,23425,23426,23427,23428,23429,23430,23431,23432,23433,23434,23435,23436,23437,23438,23439,23440,23441,23442,23443,23444,23445,23446,23447,23448,23449,23450,23451,23452,23453,23454,23455,23456,23457,23458,23459,23460,23461,23462,23463,23464,23465,23466,23467,23468,23469,23470,23471,23472,23473,23474,23475,23476,23477,23478,23479,23480,23481,23482,23483,23484,23485,23486,23487,23488,23489,23490,23491,23492,23493,23494,23495,23496,23497,23498,23499,23500,23501,23502,23503,23504,23505,23506,23507,23508,23509,23510,23511,23512,23513,23514,23515,23516,23517,23518,23519,23520,23521,23522,23523,23524,23525,23526,23527,23528,23529,23530,23531,23532,23533,23534,23535,23536,23537,23538,23539,23540,23541,23542,23543,23544,23545,23546,23547,23548,23549,23550,23551,23552,23553,23554,23555,23556,23557,23558,23559,23560,23561,23562,23563,23564,23565,23566,23567,23568,23569,23570,23571,23572,23573,23574,23575,23576,23577,23578,23579,23580,23581,23582,23583,23584,23585,23586,23587,23588,23589,23590,23591,23592,23593,23594,23595,23596,23597,23598,23599,23600,23601,23602,23603,23604,23605,23606,23607,23608,23609,23610,23611,23612,23613,23614,23615,23616,23617,23618,23619,23620,23621,23622,23623,23624,23625,23626,23627,23628,23629,23630,23631,23632,23633,23634,23635,23636,23637,23638,23639,23640,23641,23642,23643,23644,23645,23646,23647,23648,23649,23650,23651,23652,23653,23654,23655,23656,23657,23658,23659,23660,23661,23662,23663,23664,23665,23666,23667,23668,23669,23670,23671,23672,23673,23674,23675,23676,23677,23678,23679,23680,23681,23682,23683,23684,23685,23686,23687,23688,23689,23690,23691,23692,23693,23694,23695,23696,23697,23698,23699,23700,23701,23702,23703,23704,23705,23706,23707,23708,23709,23710,23711,23712,23713,23714,23715,23716,23717,23718,23719,23720,23721,23722,23723,23724,23725,23726,23727,23728,23729,23730,23731,23732,23733,23734,23735,23736,23737,23738,23739,23740,23741,23742,23743,23744,23745,23746,23747,23748,23749,23750,23751,23752,23753,23754,23755,23756,23757,23758,23759,23760,23761,23762,23763,23764,23765,23766,23767,23768,23769,23770,23771,23772,23773,23774,23775,23776,23777,23778,23779,23780,23781,23782,23783,23784,23785,23786,23787,23788,23789,23790,23791,23792,23793,23794,23795,23796,23797,23798,23799,23800,23801,23802,23803,23804,23805,23806,23807,23808,23809,23810,23811,23812,23813,23814,23815,23816,23817,23818,23819,23820,23821,23822,23823,23824,23825,23826,23827,23828,23829,23830,23831,23832,23833,23834,23835,23836,23837,23838,23839,23840,23841,23842,23843,23844,23845,23846,23847,23848,23849,23850,23851,23852,23853,23854,23855,23856,23857,23858,23859,23860,23861,23862,23863,23864,23865,23866,23867,23868,23869,23870,23871,23872,23873,23874,23875,23876,23877,23878,23879,23880,23881,23882,23883,23884,23885,23886,23887,23888,23889,23890,23891,23892,23893,23894,23895,23896,23897,23898,23899,23900,23901,23902,23903,23904,23905,23906,23907,23908,23909,23910,23911,23912,23913,23914,23915,23916,23917,23918,23919,23920,23921,23922,23923,23924,23925,23926,23927,23928,23929,23930,23931,23932,23933,23934,23935,23936,23937,23938,23939,23940,23941,23942,23943,23944,23945,23946,23947,23948,23949,23950,23951,23952,23953,23954,23955,23956,23957,23958,23959,23960,23961,23962,23963,23964,23965,23966,23967,23968,23969,23970,23971,23972,23973,23974,23975,23976,23977,23978,23979,23980,23981,23982,23983,23984,23985,23986,23987,23988,23989,23990,23991,23992,23993,23994,23995,23996,23997,23998,23999,24000,24001,24002,24003,24004,24005,24006,24007,24008,24009,24010,24011,24012,24013,24014,24015,24016,24017,24018,24019,24020,24021,24022,24023,24024,24025,24026,24027,24028,24029,24030,24031,24032,24033,24034,24035,24036,24037,24038,24039,24040,24041,24042,24043,24044,24045,24046,24047,24048,24049,24050,24051,24052,24053,24054,24055,24056,24057,24058,24059,24060,24061,24062,24063,24064,24065,24066,24067,24068,24069,24070,24071,24072,24073,24074,24075,24076,24077,24078,24079,24080,24081,24082,24083,24084,24085,24086,24087,24088,24089,24090,24091,24092,24093,24094,24095,24096,24097,24098,24099,24100,24101,24102,24103,24104,24105,24106,24107,24108,24109,24110,24111,24112,24113,24114,24115,24116,24117,24118,24119,24120,24121,24122,24123,24124,24125,24126,24127,24128,24129,24130,24131,24132,24133,24134,24135,24136,24137,24138,24139,24140,24141,24142,24143,24144,24145,24146,24147,24148,24149,24150,24151,24152,24153,24154,24155,24156,24157,24158,24159,24160,24161,24162,24163,24164,24165,24166,24167,24168,24169,24170,24171,24172,24173,24174,24175,24176,24177,24178,24179,24180,24181,24182,24183,24184,24185,24186,24187,24188,24189,24190,24191,24192,24193,24194,24195,24196,24197,24198,24199,24200,24201,24202,24203,24204,24205,24206,24207,24208,24209,24210,24211,24212,24213,24214,24215,24216,24217,24218,24219,24220,24221,24222,24223,24224,24225,24226,24227,24228,24229,24230,24231,24232,24233,24234,24235,24236,24237,24238,24239,24240,24241,24242,24243,24244,24245,24246,24247,24248,24249,24250,24251,24252,24253,24254,24255,24256,24257,24258,24259,24260,24261,24262,24263,24264,24265,24266,24267,24268,24269,24270,24271,24272,24273,24274,24275,24276,24277,24278,24279,24280,24281,24282,24283,24284,24285,24286,24287,24288,24289,24290,24291,24292,24293,24294,24295,24296,24297,24298,24299,24300,24301,24302,24303,24304,24305,24306,24307,24308,24309,24310,24311,24312,24313,24314,24315,24316,24317,24318,24319,24320,24321,24322,24323,24324,24325,24326,24327,24328,24329,24330,24331,24332,24333,24334,24335,24336,24337,24338,24339,24340,24341,24342,24343,24344,24345,24346,24347,24348,24349,24350,24351,24352,24353,24354,24355,24356,24357,24358,24359,24360,24361,24362,24363,24364,24365,24366,24367,24368,24369,24370,24371,24372,24373,24374,24375,24376,24377,24378,24379,24380,24381,24382,24383,24384,24385,24386,24387,24388,24389,24390,24391,24392,24393,24394,24395,24396,24397,24398,24399,24400,24401,24402,24403,24404,24405,24406,24407,24408,24409,24410,24411,24412,24413,24414,24415,24416,24417,24418,24419,24420,24421,24422,24423,24424,24425,24426,24427,24428,24429,24430,24431,24432,24433,24434,24435,24436,24437,24438,24439,24440,24441,24442,24443,24444,24445,24446,24447,24448,24449,24450,24451,24452,24453,24454,24455,24456,24457,24458,24459,24460,24461,24462,24463,24464,24465,24466,24467,24468,24469,24470,24471,24472,24473,24474,24475,24476,24477,24478,24479,24480,24481,24482,24483,24484,24485,24486,24487,24488,24489,24490,24491,24492,24493,24494,24495,24496,24497,24498,24499,24500,24501,24502,24503,24504,24505,24506,24507,24508,24509,24510,24511,24512,24513,24514,24515,24516,24517,24518,24519,24520,24521,24522,24523,24524,24525,24526,24527,24528,24529,24530,24531,24532,24533,24534,24535,24536,24537,24538,24539,24540,24541,24542,24543,24544,24545,24546,24547,24548,24549,24550,24551,24552,24553,24554,24555,24556,24557,24558,24559,24560,24561,24562,24563,24564,24565,24566,24567,24568,24569,24570,24571,24572,24573,24574,24575,24576,24577,24578,24579,24580,24581,24582,24583,24584,24585,24586,24587,24588,24589,24590,24591,24592,24593,24594,24595,24596,24597,24598,24599,24600,24601,24602,24603,24604,24605,24606,24607,24608,24609,24610,24611,24612,24613,24614,24615,24616,24617,24618,24619,24620,24621,24622,24623,24624,24625,24626,24627,24628,24629,24630,24631,24632,24633,24634,24635,24636,24637,24638,24639,24640,24641,24642,24643,24644,24645,24646,24647,24648,24649,24650,24651,24652,24653,24654,24655,24656,24657,24658,24659,24660,24661,24662,24663,24664,24665,24666,24667,24668,24669,24670,24671,24672,24673,24674,24675,24676,24677,24678,24679,24680,24681,24682,24683,24684,24685,24686,24687,24688,24689,24690,24691,24692,24693,24694,24695,24696,24697,24698,24699,24700,24701,24702,24703,24704,24705,24706,24707,24708,24709,24710,24711,24712,24713,24714,24715,24716,24717,24718,24719,24720,24721,24722,24723,24724,24725,24726,24727,24728,24729,24730,24731,24732,24733,24734,24735,24736,24737,24738,24739,24740,24741,24742,24743,24744,24745,24746,24747,24748,24749,24750,24751,24752,24753,24754,24755,24756,24757,24758,24759,24760,24761,24762,24763,24764,24765,24766,24767,24768,24769,24770,24771,24772,24773,24774,24775,24776,24777,24778,24779,24780,24781,24782,24783,24784,24785,24786,24787,24788,24789,24790,24791,24792,24793,24794,24795,24796,24797,24798,24799,24800,24801,24802,24803,24804,24805,24806,24807,24808,24809,24810,24811,24812,24813,24814,24815,24816,24817,24818,24819,24820,24821,24822,24823,24824,24825,24826,24827,24828,24829,24830,24831,24832,24833,24834,24835,24836,24837,24838,24839,24840,24841,24842,24843,24844,24845,24846,24847,24848,24849,24850,24851,24852,24853,24854,24855,24856,24857,24858,24859,24860,24861,24862,24863,24864,24865,24866,24867,24868,24869,24870,24871,24872,24873,24874,24875,24876,24877,24878,24879,24880,24881,24882,24883,24884,24885,24886,24887,24888,24889,24890,24891,24892,24893,24894,24895,24896,24897,24898,24899,24900,24901,24902,24903,24904,24905,24906,24907,24908,24909,24910,24911,24912,24913,24914,24915,24916,24917,24918,24919,24920,24921,24922,24923,24924,24925,24926,24927,24928,24929,24930,24931,24932,24933,24934,24935,24936,24937,24938,24939,24940,24941,24942,24943,24944,24945,24946,24947,24948,24949,24950,24951,24952,24953,24954,24955,24956,24957,24958,24959,24960,24961,24962,24963,24964,24965,24966,24967,24968,24969,24970,24971,24972,24973,24974,24975,24976,24977,24978,24979,24980,24981,24982,24983,24984,24985,24986,24987,24988,24989,24990,24991,24992,24993,24994,24995,24996,24997,24998,24999,25000,25001,25002,25003,25004,25005,25006,25007,25008,25009,25010,25011,25012,25013,25014,25015,25016,25017,25018,25019,25020,25021,25022,25023,25024,25025,25026,25027,25028,25029,25030,25031,25032,25033,25034,25035,25036,25037,25038,25039,25040,25041,25042,25043,25044,25045,25046,25047,25048,25049,25050,25051,25052,25053,25054,25055,25056,25057,25058,25059,25060,25061,25062,25063,25064,25065,25066,25067,25068,25069,25070,25071,25072,25073,25074,25075,25076,25077,25078,25079,25080,25081,25082,25083,25084,25085,25086,25087,25088,25089,25090,25091,25092,25093,25094,25095,25096,25097,25098,25099,25100,25101,25102,25103,25104,25105,25106,25107,25108,25109,25110,25111,25112,25113,25114,25115,25116,25117,25118,25119,25120,25121,25122,25123,25124,25125,25126,25127,25128,25129,25130,25131,25132,25133,25134,25135,25136,25137,25138,25139,25140,25141,25142,25143,25144,25145,25146,25147,25148,25149,25150,25151,25152,25153,25154,25155,25156,25157,25158,25159,25160,25161,25162,25163,25164,25165,25166,25167,25168,25169,25170,25171,25172,25173,25174,25175,25176,25177,25178,25179,25180,25181,25182,25183,25184,25185,25186,25187,25188,25189,25190,25191,25192,25193,25194,25195,25196,25197,25198,25199,25200,25201,25202,25203,25204,25205,25206,25207,25208,25209,25210,25211,25212,25213,25214,25215,25216,25217,25218,25219,25220,25221,25222,25223,25224,25225,25226,25227,25228,25229,25230,25231,25232,25233,25234,25235,25236,25237,25238,25239,25240,25241,25242,25243,25244,25245,25246,25247,25248,25249,25250,25251,25252,25253,25254,25255,25256,25257,25258,25259,25260,25261,25262,25263,25264,25265,25266,25267,25268,25269,25270,25271,25272,25273,25274,25275,25276,25277,25278,25279,25280,25281,25282,25283,25284,25285,25286,25287,25288,25289,25290,25291,25292,25293,25294,25295,25296,25297,25298,25299,25300,25301,25302,25303,25304,25305,25306,25307,25308,25309,25310,25311,25312,25313,25314,25315,25316,25317,25318,25319,25320,25321,25322,25323,25324,25325,25326,25327,25328,25329,25330,25331,25332,25333,25334,25335,25336,25337,25338,25339,25340,25341,25342,25343,25344,25345,25346,25347,25348,25349,25350,25351,25352,25353,25354,25355,25356,25357,25358,25359,25360,25361,25362,25363,25364,25365,25366,25367,25368,25369,25370,25371,25372,25373,25374,25375,25376,25377,25378,25379,25380,25381,25382,25383,25384,25385,25386,25387,25388,25389,25390,25391,25392,25393,25394,25395,25396,25397,25398,25399,25400,25401,25402,25403,25404,25405,25406,25407,25408,25409,25410,25411,25412,25413,25414,25415,25416,25417,25418,25419,25420,25421,25422,25423,25424,25425,25426,25427,25428,25429,25430,25431,25432,25433,25434,25435,25436,25437,25438,25439,25440,25441,25442,25443,25444,25445,25446,25447,25448,25449,25450,25451,25452,25453,25454,25455,25456,25457,25458,25459,25460,25461,25462,25463,25464,25465,25466,25467,25468,25469,25470,25471,25472,25473,25474,25475,25476,25477,25478,25479,25480,25481,25482,25483,25484,25485,25486,25487,25488,25489,25490,25491,25492,25493,25494,25495,25496,25497,25498,25499,25500,25501,25502,25503,25504,25505,25506,25507,25508,25509,25510,25511,25512,25513,25514,25515,25516,25517,25518,25519,25520,25521,25522,25523,25524,25525,25526,25527,25528,25529,25530,25531,25532,25533,25534,25535,25536,25537,25538,25539,25540,25541,25542,25543,25544,25545,25546,25547,25548,25549,25550,25551,25552,25553,25554,25555,25556,25557,25558,25559,25560,25561,25562,25563,25564,25565,25566,25567,25568,25569,25570,25571,25572,25573,25574,25575,25576,25577,25578,25579,25580,25581,25582,25583,25584,25585,25586,25587,25588,25589,25590,25591,25592,25593,25594,25595,25596,25597,25598,25599,25600,25601,25602,25603,25604,25605,25606,25607,25608,25609,25610,25611,25612,25613,25614,25615,25616,25617,25618,25619,25620,25621,25622,25623,25624,25625,25626,25627,25628,25629,25630,25631,25632,25633,25634,25635,25636,25637,25638,25639,25640,25641,25642,25643,25644,25645,25646,25647,25648,25649,25650,25651,25652,25653,25654,25655,25656,25657,25658,25659,25660,25661,25662,25663,25664,25665,25666,25667,25668,25669,25670,25671,25672,25673,25674,25675,25676,25677,25678,25679,25680,25681,25682,25683,25684,25685,25686,25687,25688,25689,25690,25691,25692,25693,25694,25695,25696,25697,25698,25699,25700,25701,25702,25703,25704,25705,25706,25707,25708,25709,25710,25711,25712,25713,25714,25715,25716,25717,25718,25719,25720,25721,25722,25723,25724,25725,25726,25727,25728,25729,25730,25731,25732,25733,25734,25735,25736,25737,25738,25739,25740,25741,25742,25743,25744,25745,25746,25747,25748,25749,25750,25751,25752,25753,25754,25755,25756,25757,25758,25759,25760,25761,25762,25763,25764,25765,25766,25767,25768,25769,25770,25771,25772,25773,25774,25775,25776,25777,25778,25779,25780,25781,25782,25783,25784,25785,25786,25787,25788,25789,25790,25791,25792,25793,25794,25795,25796,25797,25798,25799,25800,25801,25802,25803,25804,25805,25806,25807,25808,25809,25810,25811,25812,25813,25814,25815,25816,25817,25818,25819,25820,25821,25822,25823,25824,25825,25826,25827,25828,25829,25830,25831,25832,25833,25834,25835,25836,25837,25838,25839,25840,25841,25842,25843,25844,25845,25846,25847,25848,25849,25850,25851,25852,25853,25854,25855,25856,25857,25858,25859,25860,25861,25862,25863,25864,25865,25866,25867,25868,25869,25870,25871,25872,25873,25874,25875,25876,25877,25878,25879,25880,25881,25882,25883,25884,25885,25886,25887,25888,25889,25890,25891,25892,25893,25894,25895,25896,25897,25898,25899,25900,25901,25902,25903,25904,25905,25906,25907,25908,25909,25910,25911,25912,25913,25914,25915,25916,25917,25918,25919,25920,25921,25922,25923,25924,25925,25926,25927,25928,25929,25930,25931,25932,25933,25934,25935,25936,25937,25938,25939,25940,25941,25942,25943,25944,25945,25946,25947,25948,25949,25950,25951,25952,25953,25954,25955,25956,25957,25958,25959,25960,25961,25962,25963,25964,25965,25966,25967,25968,25969,25970,25971,25972,25973,25974,25975,25976,25977,25978,25979,25980,25981,25982,25983,25984,25985,25986,25987,25988,25989,25990,25991,25992,25993,25994,25995,25996,25997,25998,25999,26000,26001,26002,26003,26004,26005,26006,26007,26008,26009,26010,26011,26012,26013,26014,26015,26016,26017,26018,26019,26020,26021,26022,26023,26024,26025,26026,26027,26028,26029,26030,26031,26032,26033,26034,26035,26036,26037,26038,26039,26040,26041,26042,26043,26044,26045,26046,26047,26048,26049,26050,26051,26052,26053,26054,26055,26056,26057,26058,26059,26060,26061,26062,26063,26064,26065,26066,26067,26068,26069,26070,26071,26072,26073,26074,26075,26076,26077,26078,26079,26080,26081,26082,26083,26084,26085,26086,26087,26088,26089,26090,26091,26092,26093,26094,26095,26096,26097,26098,26099,26100,26101,26102,26103,26104,26105,26106,26107,26108,26109,26110,26111,26112,26113,26114,26115,26116,26117,26118,26119,26120,26121,26122,26123,26124,26125,26126,26127,26128,26129,26130,26131,26132,26133,26134,26135,26136,26137,26138,26139,26140,26141,26142,26143,26144,26145,26146,26147,26148,26149,26150,26151,26152,26153,26154,26155,26156,26157,26158,26159,26160,26161,26162,26163,26164,26165,26166,26167,26168,26169,26170,26171,26172,26173,26174,26175,26176,26177,26178,26179,26180,26181,26182,26183,26184,26185,26186,26187,26188,26189,26190,26191,26192,26193,26194,26195,26196,26197,26198,26199,26200,26201,26202,26203,26204,26205,26206,26207,26208,26209,26210,26211,26212,26213,26214,26215,26216,26217,26218,26219,26220,26221,26222,26223,26224,26225,26226,26227,26228,26229,26230,26231,26232,26233,26234,26235,26236,26237,26238,26239,26240,26241,26242,26243,26244,26245,26246,26247,26248,26249,26250,26251,26252,26253,26254,26255,26256,26257,26258,26259,26260,26261,26262,26263,26264,26265,26266,26267,26268,26269,26270,26271,26272,26273,26274,26275,26276,26277,26278,26279,26280,26281,26282,26283,26284,26285,26286,26287,26288,26289,26290,26291,26292,26293,26294,26295,26296,26297,26298,26299,26300,26301,26302,26303,26304,26305,26306,26307,26308,26309,26310,26311,26312,26313,26314,26315,26316,26317,26318,26319,26320,26321,26322,26323,26324,26325,26326,26327,26328,26329,26330,26331,26332,26333,26334,26335,26336,26337,26338,26339,26340,26341,26342,26343,26344,26345,26346,26347,26348,26349,26350,26351,26352,26353,26354,26355,26356,26357,26358,26359,26360,26361,26362,26363,26364,26365,26366,26367,26368,26369,26370,26371,26372,26373,26374,26375,26376,26377,26378,26379,26380,26381,26382,26383,26384,26385,26386,26387,26388,26389,26390,26391,26392,26393,26394,26395,26396,26397,26398,26399,26400,26401,26402,26403,26404,26405,26406,26407,26408,26409,26410,26411,26412,26413,26414,26415,26416,26417,26418,26419,26420,26421,26422,26423,26424,26425,26426,26427,26428,26429,26430,26431,26432,26433,26434,26435,26436,26437,26438,26439,26440,26441,26442,26443,26444,26445,26446,26447,26448,26449,26450,26451,26452,26453,26454,26455,26456,26457,26458,26459,26460,26461,26462,26463,26464,26465,26466,26467,26468,26469,26470,26471,26472,26473,26474,26475,26476,26477,26478,26479,26480,26481,26482,26483,26484,26485,26486,26487,26488,26489,26490,26491,26492,26493,26494,26495,26496,26497,26498,26499,26500,26501,26502,26503,26504,26505,26506,26507,26508,26509,26510,26511,26512,26513,26514,26515,26516,26517,26518,26519,26520,26521,26522,26523,26524,26525,26526,26527,26528,26529,26530,26531,26532,26533,26534,26535,26536,26537,26538,26539,26540,26541,26542,26543,26544,26545,26546,26547,26548,26549,26550,26551,26552,26553,26554,26555,26556,26557,26558,26559,26560,26561,26562,26563,26564,26565,26566,26567,26568,26569,26570,26571,26572,26573,26574,26575,26576,26577,26578,26579,26580,26581,26582,26583,26584,26585,26586,26587,26588,26589,26590,26591,26592,26593,26594,26595,26596,26597,26598,26599,26600,26601,26602,26603,26604,26605,26606,26607,26608,26609,26610,26611,26612,26613,26614,26615,26616,26617,26618,26619,26620,26621,26622,26623,26624,26625,26626,26627,26628,26629,26630,26631,26632,26633,26634,26635,26636,26637,26638,26639,26640,26641,26642,26643,26644,26645,26646,26647,26648,26649,26650,26651,26652,26653,26654,26655,26656,26657,26658,26659,26660,26661,26662,26663,26664,26665,26666,26667,26668,26669,26670,26671,26672,26673,26674,26675,26676,26677,26678,26679,26680,26681,26682,26683,26684,26685,26686,26687,26688,26689,26690,26691,26692,26693,26694,26695,26696,26697,26698,26699,26700,26701,26702,26703,26704,26705,26706,26707,26708,26709,26710,26711,26712,26713,26714,26715,26716,26717,26718,26719,26720,26721,26722,26723,26724,26725,26726,26727,26728,26729,26730,26731,26732,26733,26734,26735,26736,26737,26738,26739,26740,26741,26742,26743,26744,26745,26746,26747,26748,26749,26750,26751,26752,26753,26754,26755,26756,26757,26758,26759,26760,26761,26762,26763,26764,26765,26766,26767,26768,26769,26770,26771,26772,26773,26774,26775,26776,26777,26778,26779,26780,26781,26782,26783,26784,26785,26786,26787,26788,26789,26790,26791,26792,26793,26794,26795,26796,26797,26798,26799,26800,26801,26802,26803,26804,26805,26806,26807,26808,26809,26810,26811,26812,26813,26814,26815,26816,26817,26818,26819,26820,26821,26822,26823,26824,26825,26826,26827,26828,26829,26830,26831,26832,26833,26834,26835,26836,26837,26838,26839,26840,26841,26842,26843,26844,26845,26846,26847,26848,26849,26850,26851,26852,26853,26854,26855,26856,26857,26858,26859,26860,26861,26862,26863,26864,26865,26866,26867,26868,26869,26870,26871,26872,26873,26874,26875,26876,26877,26878,26879,26880,26881,26882,26883,26884,26885,26886,26887,26888,26889,26890,26891,26892,26893,26894,26895,26896,26897,26898,26899,26900,26901,26902,26903,26904,26905,26906,26907,26908,26909,26910,26911,26912,26913,26914,26915,26916,26917,26918,26919,26920,26921,26922,26923,26924,26925,26926,26927,26928,26929,26930,26931,26932,26933,26934,26935,26936,26937,26938,26939,26940,26941,26942,26943,26944,26945,26946,26947,26948,26949,26950,26951,26952,26953,26954,26955,26956,26957,26958,26959,26960,26961,26962,26963,26964,26965,26966,26967,26968,26969,26970,26971,26972,26973,26974,26975,26976,26977,26978,26979,26980,26981,26982,26983,26984,26985,26986,26987,26988,26989,26990,26991,26992,26993,26994,26995,26996,26997,26998,26999,27000,27001,27002,27003,27004,27005,27006,27007,27008,27009,27010,27011,27012,27013,27014,27015,27016,27017,27018,27019,27020,27021,27022,27023,27024,27025,27026,27027,27028,27029,27030,27031,27032,27033,27034,27035,27036,27037,27038,27039,27040,27041,27042,27043,27044,27045,27046,27047,27048,27049,27050,27051,27052,27053,27054,27055,27056,27057,27058,27059,27060,27061,27062,27063,27064,27065,27066,27067,27068,27069,27070,27071,27072,27073,27074,27075,27076,27077,27078,27079,27080,27081,27082,27083,27084,27085,27086,27087,27088,27089,27090,27091,27092,27093,27094,27095,27096,27097,27098,27099,27100,27101,27102,27103,27104,27105,27106,27107,27108,27109,27110,27111,27112,27113,27114,27115,27116,27117,27118,27119,27120,27121,27122,27123,27124,27125,27126,27127,27128,27129,27130,27131,27132,27133,27134,27135,27136,27137,27138,27139,27140,27141,27142,27143,27144,27145,27146,27147,27148,27149,27150,27151,27152,27153,27154,27155,27156,27157,27158,27159,27160,27161,27162,27163,27164,27165,27166,27167,27168,27169,27170,27171,27172,27173,27174,27175,27176,27177,27178,27179,27180,27181,27182,27183,27184,27185,27186,27187,27188,27189,27190,27191,27192,27193,27194,27195,27196,27197,27198,27199,27200,27201,27202,27203,27204,27205,27206,27207,27208,27209,27210,27211,27212,27213,27214,27215,27216,27217,27218,27219,27220,27221,27222,27223,27224,27225,27226,27227,27228,27229,27230,27231,27232,27233,27234,27235,27236,27237,27238,27239,27240,27241,27242,27243,27244,27245,27246,27247,27248,27249,27250,27251,27252,27253,27254,27255,27256,27257,27258,27259,27260,27261,27262,27263,27264,27265,27266,27267,27268,27269,27270,27271,27272,27273,27274,27275,27276,27277,27278,27279,27280,27281,27282,27283,27284,27285,27286,27287,27288,27289,27290,27291,27292,27293,27294,27295,27296,27297,27298,27299,27300,27301,27302,27303,27304,27305,27306,27307,27308,27309,27310,27311,27312,27313,27314,27315,27316,27317,27318,27319,27320,27321,27322,27323,27324,27325,27326,27327,27328,27329,27330,27331,27332,27333,27334,27335,27336,27337,27338,27339,27340,27341,27342,27343,27344,27345,27346,27347,27348,27349,27350,27351,27352,27353,27354,27355,27356,27357,27358,27359,27360,27361,27362,27363,27364,27365,27366,27367,27368,27369,27370,27371,27372,27373,27374,27375,27376,27377,27378,27379,27380,27381,27382,27383,27384,27385,27386,27387,27388,27389,27390,27391,27392,27393,27394,27395,27396,27397,27398,27399,27400,27401,27402,27403,27404,27405,27406,27407,27408,27409,27410,27411,27412,27413,27414,27415,27416,27417,27418,27419,27420,27421,27422,27423,27424,27425,27426,27427,27428,27429,27430,27431,27432,27433,27434,27435,27436,27437,27438,27439,27440,27441,27442,27443,27444,27445,27446,27447,27448,27449,27450,27451,27452,27453,27454,27455,27456,27457,27458,27459,27460,27461,27462,27463,27464,27465,27466,27467,27468,27469,27470,27471,27472,27473,27474,27475,27476,27477,27478,27479,27480,27481,27482,27483,27484,27485,27486,27487,27488,27489,27490,27491,27492,27493,27494,27495,27496,27497,27498,27499,27500,27501,27502,27503,27504,27505,27506,27507,27508,27509,27510,27511,27512,27513,27514,27515,27516,27517,27518,27519,27520,27521,27522,27523,27524,27525,27526,27527,27528,27529,27530,27531,27532,27533,27534,27535,27536,27537,27538,27539,27540,27541,27542,27543,27544,27545,27546,27547,27548,27549,27550,27551,27552,27553,27554,27555,27556,27557,27558,27559,27560,27561,27562,27563,27564,27565,27566,27567,27568,27569,27570,27571,27572,27573,27574,27575,27576,27577,27578,27579,27580,27581,27582,27583,27584,27585,27586,27587,27588,27589,27590,27591,27592,27593,27594,27595,27596,27597,27598,27599,27600,27601,27602,27603,27604,27605,27606,27607,27608,27609,27610,27611,27612,27613,27614,27615,27616,27617,27618,27619,27620,27621,27622,27623,27624,27625,27626,27627,27628,27629,27630,27631,27632,27633,27634,27635,27636,27637,27638,27639,27640,27641,27642,27643,27644,27645,27646,27647,27648,27649,27650,27651,27652,27653,27654,27655,27656,27657,27658,27659,27660,27661,27662,27663,27664,27665,27666,27667,27668,27669,27670,27671,27672,27673,27674,27675,27676,27677,27678,27679,27680,27681,27682,27683,27684,27685,27686,27687,27688,27689,27690,27691,27692,27693,27694,27695,27696,27697,27698,27699,27700,27701,27702,27703,27704,27705,27706,27707,27708,27709,27710,27711,27712,27713,27714,27715,27716,27717,27718,27719,27720,27721,27722,27723,27724,27725,27726,27727,27728,27729,27730,27731,27732,27733,27734,27735,27736,27737,27738,27739,27740,27741,27742,27743,27744,27745,27746,27747,27748,27749,27750,27751,27752,27753,27754,27755,27756,27757,27758,27759,27760,27761,27762,27763,27764,27765,27766,27767,27768,27769,27770,27771,27772,27773,27774,27775,27776,27777,27778,27779,27780,27781,27782,27783,27784,27785,27786,27787,27788,27789,27790,27791,27792,27793,27794,27795,27796,27797,27798,27799,27800,27801,27802,27803,27804,27805,27806,27807,27808,27809,27810,27811,27812,27813,27814,27815,27816,27817,27818,27819,27820,27821,27822,27823,27824,27825,27826,27827,27828,27829,27830,27831,27832,27833,27834,27835,27836,27837,27838,27839,27840,27841,27842,27843,27844,27845,27846,27847,27848,27849,27850,27851,27852,27853,27854,27855,27856,27857,27858,27859,27860,27861,27862,27863,27864,27865,27866,27867,27868,27869,27870,27871,27872,27873,27874,27875,27876,27877,27878,27879,27880,27881,27882,27883,27884,27885,27886,27887,27888,27889,27890,27891,27892,27893,27894,27895,27896,27897,27898,27899,27900,27901,27902,27903,27904,27905,27906,27907,27908,27909,27910,27911,27912,27913,27914,27915,27916,27917,27918,27919,27920,27921,27922,27923,27924,27925,27926,27927,27928,27929,27930,27931,27932,27933,27934,27935,27936,27937,27938,27939,27940,27941,27942,27943,27944,27945,27946,27947,27948,27949,27950,27951,27952,27953,27954,27955,27956,27957,27958,27959,27960,27961,27962,27963,27964,27965,27966,27967,27968,27969,27970,27971,27972,27973,27974,27975,27976,27977,27978,27979,27980,27981,27982,27983,27984,27985,27986,27987,27988,27989,27990,27991,27992,27993,27994,27995,27996,27997,27998,27999,28000,28001,28002,28003,28004,28005,28006,28007,28008,28009,28010,28011,28012,28013,28014,28015,28016,28017,28018,28019,28020,28021,28022,28023,28024,28025,28026,28027,28028,28029,28030,28031,28032,28033,28034,28035,28036,28037,28038,28039,28040,28041,28042,28043,28044,28045,28046,28047,28048,28049,28050,28051,28052,28053,28054,28055,28056,28057,28058,28059,28060,28061,28062,28063,28064,28065,28066,28067,28068,28069,28070,28071,28072,28073,28074,28075,28076,28077,28078,28079,28080,28081,28082,28083,28084,28085,28086,28087,28088,28089,28090,28091,28092,28093,28094,28095,28096,28097,28098,28099,28100,28101,28102,28103,28104,28105,28106,28107,28108,28109,28110,28111,28112,28113,28114,28115,28116,28117,28118,28119,28120,28121,28122,28123,28124,28125,28126,28127,28128,28129,28130,28131,28132,28133,28134,28135,28136,28137,28138,28139,28140,28141,28142,28143,28144,28145,28146,28147,28148,28149,28150,28151,28152,28153,28154,28155,28156,28157,28158,28159,28160,28161,28162,28163,28164,28165,28166,28167,28168,28169,28170,28171,28172,28173,28174,28175,28176,28177,28178,28179,28180,28181,28182,28183,28184,28185,28186,28187,28188,28189,28190,28191,28192,28193,28194,28195,28196,28197,28198,28199,28200,28201,28202,28203,28204,28205,28206,28207,28208,28209,28210,28211,28212,28213,28214,28215,28216,28217,28218,28219,28220,28221,28222,28223,28224,28225,28226,28227,28228,28229,28230,28231,28232,28233,28234,28235,28236,28237,28238,28239,28240,28241,28242,28243,28244,28245,28246,28247,28248,28249,28250,28251,28252,28253,28254,28255,28256,28257,28258,28259,28260,28261,28262,28263,28264,28265,28266,28267,28268,28269,28270,28271,28272,28273,28274,28275,28276,28277,28278,28279,28280,28281,28282,28283,28284,28285,28286,28287,28288,28289,28290,28291,28292,28293,28294,28295,28296,28297,28298,28299,28300,28301,28302,28303,28304,28305,28306,28307,28308,28309,28310,28311,28312,28313,28314,28315,28316,28317,28318,28319,28320,28321,28322,28323,28324,28325,28326,28327,28328,28329,28330,28331,28332,28333,28334,28335,28336,28337,28338,28339,28340,28341,28342,28343,28344,28345,28346,28347,28348,28349,28350,28351,28352,28353,28354,28355,28356,28357,28358,28359,28360,28361,28362,28363,28364,28365,28366,28367,28368,28369,28370,28371,28372,28373,28374,28375,28376,28377,28378,28379,28380,28381,28382,28383,28384,28385,28386,28387,28388,28389,28390,28391,28392,28393,28394,28395,28396,28397,28398,28399,28400,28401,28402,28403,28404,28405,28406,28407,28408,28409,28410,28411,28412,28413,28414,28415,28416,28417,28418,28419,28420,28421,28422,28423,28424,28425,28426,28427,28428,28429,28430,28431,28432,28433,28434,28435,28436,28437,28438,28439,28440,28441,28442,28443,28444,28445,28446,28447,28448,28449,28450,28451,28452,28453,28454,28455,28456,28457,28458,28459,28460,28461,28462,28463,28464,28465,28466,28467,28468,28469,28470,28471,28472,28473,28474,28475,28476,28477,28478,28479,28480,28481,28482,28483,28484,28485,28486,28487,28488,28489,28490,28491,28492,28493,28494,28495,28496,28497,28498,28499,28500,28501,28502,28503,28504,28505,28506,28507,28508,28509,28510,28511,28512,28513,28514,28515,28516,28517,28518,28519,28520,28521,28522,28523,28524,28525,28526,28527,28528,28529,28530,28531,28532,28533,28534,28535,28536,28537,28538,28539,28540,28541,28542,28543,28544,28545,28546,28547,28548,28549,28550,28551,28552,28553,28554,28555,28556,28557,28558,28559,28560,28561,28562,28563,28564,28565,28566,28567,28568,28569,28570,28571,28572,28573,28574,28575,28576,28577,28578,28579,28580,28581,28582,28583,28584,28585,28586,28587,28588,28589,28590,28591,28592,28593,28594,28595,28596,28597,28598,28599,28600,28601,28602,28603,28604,28605,28606,28607,28608,28609,28610,28611,28612,28613,28614,28615,28616,28617,28618,28619,28620,28621,28622,28623,28624,28625,28626,28627,28628,28629,28630,28631,28632,28633,28634,28635,28636,28637,28638,28639,28640,28641,28642,28643,28644,28645,28646,28647,28648,28649,28650,28651,28652,28653,28654,28655,28656,28657,28658,28659,28660,28661,28662,28663,28664,28665,28666,28667,28668,28669,28670,28671,28672,28673,28674,28675,28676,28677,28678,28679,28680,28681,28682,28683,28684,28685,28686,28687,28688,28689,28690,28691,28692,28693,28694,28695,28696,28697,28698,28699,28700,28701,28702,28703,28704,28705,28706,28707,28708,28709,28710,28711,28712,28713,28714,28715,28716,28717,28718,28719,28720,28721,28722,28723,28724,28725,28726,28727,28728,28729,28730,28731,28732,28733,28734,28735,28736,28737,28738,28739,28740,28741,28742,28743,28744,28745,28746,28747,28748,28749,28750,28751,28752,28753,28754,28755,28756,28757,28758,28759,28760,28761,28762,28763,28764,28765,28766,28767,28768,28769,28770,28771,28772,28773,28774,28775,28776,28777,28778,28779,28780,28781,28782,28783,28784,28785,28786,28787,28788,28789,28790,28791,28792,28793,28794,28795,28796,28797,28798,28799,28800,28801,28802,28803,28804,28805,28806,28807,28808,28809,28810,28811,28812,28813,28814,28815,28816,28817,28818,28819,28820,28821,28822,28823,28824,28825,28826,28827,28828,28829,28830,28831,28832,28833,28834,28835,28836,28837,28838,28839,28840,28841,28842,28843,28844,28845,28846,28847,28848,28849,28850,28851,28852,28853,28854,28855,28856,28857,28858,28859,28860,28861,28862,28863,28864,28865,28866,28867,28868,28869,28870,28871,28872,28873,28874,28875,28876,28877,28878,28879,28880,28881,28882,28883,28884,28885,28886,28887,28888,28889,28890,28891,28892,28893,28894,28895,28896,28897,28898,28899,28900,28901,28902,28903,28904,28905,28906,28907,28908,28909,28910,28911,28912,28913,28914,28915,28916,28917,28918,28919,28920,28921,28922,28923,28924,28925,28926,28927,28928,28929,28930,28931,28932,28933,28934,28935,28936,28937,28938,28939,28940,28941,28942,28943,28944,28945,28946,28947,28948,28949,28950,28951,28952,28953,28954,28955,28956,28957,28958,28959,28960,28961,28962,28963,28964,28965,28966,28967,28968,28969,28970,28971,28972,28973,28974,28975,28976,28977,28978,28979,28980,28981,28982,28983,28984,28985,28986,28987,28988,28989,28990,28991,28992,28993,28994,28995,28996,28997,28998,28999,29000,29001,29002,29003,29004,29005,29006,29007,29008,29009,29010,29011,29012,29013,29014,29015,29016,29017,29018,29019,29020,29021,29022,29023,29024,29025,29026,29027,29028,29029,29030,29031,29032,29033,29034,29035,29036,29037,29038,29039,29040,29041,29042,29043,29044,29045,29046,29047,29048,29049,29050,29051,29052,29053,29054,29055,29056,29057,29058,29059,29060,29061,29062,29063,29064,29065,29066,29067,29068,29069,29070,29071,29072,29073,29074,29075,29076,29077,29078,29079,29080,29081,29082,29083,29084,29085,29086,29087,29088,29089,29090,29091,29092,29093,29094,29095,29096,29097,29098,29099,29100,29101,29102,29103,29104,29105,29106,29107,29108,29109,29110,29111,29112,29113,29114,29115,29116,29117,29118,29119,29120,29121,29122,29123,29124,29125,29126,29127,29128,29129,29130,29131,29132,29133,29134,29135,29136,29137,29138,29139,29140,29141,29142,29143,29144,29145,29146,29147,29148,29149,29150,29151,29152,29153,29154,29155,29156,29157,29158,29159,29160,29161,29162,29163,29164,29165,29166,29167,29168,29169,29170,29171,29172,29173,29174,29175,29176,29177,29178,29179,29180,29181,29182,29183,29184,29185,29186,29187,29188,29189,29190,29191,29192,29193,29194,29195,29196,29197,29198,29199,29200,29201,29202,29203,29204,29205,29206,29207,29208,29209,29210,29211,29212,29213,29214,29215,29216,29217,29218,29219,29220,29221,29222,29223,29224,29225,29226,29227,29228,29229,29230,29231,29232,29233,29234,29235,29236,29237,29238,29239,29240,29241,29242,29243,29244,29245,29246,29247,29248,29249,29250,29251,29252,29253,29254,29255,29256,29257,29258,29259,29260,29261,29262,29263,29264,29265,29266,29267,29268,29269,29270,29271,29272,29273,29274,29275,29276,29277,29278,29279,29280,29281,29282,29283,29284,29285,29286,29287,29288,29289,29290,29291,29292,29293,29294,29295,29296,29297,29298,29299,29300,29301,29302,29303,29304,29305,29306,29307,29308,29309,29310,29311,29312,29313,29314,29315,29316,29317,29318,29319,29320,29321,29322,29323,29324,29325,29326,29327,29328,29329,29330,29331,29332,29333,29334,29335,29336,29337,29338,29339,29340,29341,29342,29343,29344,29345,29346,29347,29348,29349,29350,29351,29352,29353,29354,29355,29356,29357,29358,29359,29360,29361,29362,29363,29364,29365,29366,29367,29368,29369,29370,29371,29372,29373,29374,29375,29376,29377,29378,29379,29380,29381,29382,29383,29384,29385,29386,29387,29388,29389,29390,29391,29392,29393,29394,29395,29396,29397,29398,29399,29400,29401,29402,29403,29404,29405,29406,29407,29408,29409,29410,29411,29412,29413,29414,29415,29416,29417,29418,29419,29420,29421,29422,29423,29424,29425,29426,29427,29428,29429,29430,29431,29432,29433,29434,29435,29436,29437,29438,29439,29440,29441,29442,29443,29444,29445,29446,29447,29448,29449,29450,29451,29452,29453,29454,29455,29456,29457,29458,29459,29460,29461,29462,29463,29464,29465,29466,29467,29468,29469,29470,29471,29472,29473,29474,29475,29476,29477,29478,29479,29480,29481,29482,29483,29484,29485,29486,29487,29488,29489,29490,29491,29492,29493,29494,29495,29496,29497,29498,29499,29500,29501,29502,29503,29504,29505,29506,29507,29508,29509,29510,29511,29512,29513,29514,29515,29516,29517,29518,29519,29520,29521,29522,29523,29524,29525,29526,29527,29528,29529,29530,29531,29532,29533,29534,29535,29536,29537,29538,29539,29540,29541,29542,29543,29544,29545,29546,29547,29548,29549,29550,29551,29552,29553,29554,29555,29556,29557,29558,29559,29560,29561,29562,29563,29564,29565,29566,29567,29568,29569,29570,29571,29572,29573,29574,29575,29576,29577,29578,29579,29580,29581,29582,29583,29584,29585,29586,29587,29588,29589,29590,29591,29592,29593,29594,29595,29596,29597,29598,29599,29600,29601,29602,29603,29604,29605,29606,29607,29608,29609,29610,29611,29612,29613,29614,29615,29616,29617,29618,29619,29620,29621,29622,29623,29624,29625,29626,29627,29628,29629,29630,29631,29632,29633,29634,29635,29636,29637,29638,29639,29640,29641,29642,29643,29644,29645,29646,29647,29648,29649,29650,29651,29652,29653,29654,29655,29656,29657,29658,29659,29660,29661,29662,29663,29664,29665,29666,29667,29668,29669,29670,29671,29672,29673,29674,29675,29676,29677,29678,29679,29680,29681,29682,29683,29684,29685,29686,29687,29688,29689,29690,29691,29692,29693,29694,29695,29696,29697,29698,29699,29700,29701,29702,29703,29704,29705,29706,29707,29708,29709,29710,29711,29712,29713,29714,29715,29716,29717,29718,29719,29720,29721,29722,29723,29724,29725,29726,29727,29728,29729,29730,29731,29732,29733,29734,29735,29736,29737,29738,29739,29740,29741,29742,29743,29744,29745,29746,29747,29748,29749,29750,29751,29752,29753,29754,29755,29756,29757,29758,29759,29760,29761,29762,29763,29764,29765,29766,29767,29768,29769,29770,29771,29772,29773,29774,29775,29776,29777,29778,29779,29780,29781,29782,29783,29784,29785,29786,29787,29788,29789,29790,29791,29792,29793,29794,29795,29796,29797,29798,29799,29800,29801,29802,29803,29804,29805,29806,29807,29808,29809,29810,29811,29812,29813,29814,29815,29816,29817,29818,29819,29820,29821,29822,29823,29824,29825,29826,29827,29828,29829,29830,29831,29832,29833,29834,29835,29836,29837,29838,29839,29840,29841,29842,29843,29844,29845,29846,29847,29848,29849,29850,29851,29852,29853,29854,29855,29856,29857,29858,29859,29860,29861,29862,29863,29864,29865,29866,29867,29868,29869,29870,29871,29872,29873,29874,29875,29876,29877,29878,29879,29880,29881,29882,29883,29884,29885,29886,29887,29888,29889,29890,29891,29892,29893,29894,29895,29896,29897,29898,29899,29900,29901,29902,29903,29904,29905,29906,29907,29908,29909,29910,29911,29912,29913,29914,29915,29916,29917,29918,29919,29920,29921,29922,29923,29924,29925,29926,29927,29928,29929,29930,29931,29932,29933,29934,29935,29936,29937,29938,29939,29940,29941,29942,29943,29944,29945,29946,29947,29948,29949,29950,29951,29952,29953,29954,29955,29956,29957,29958,29959,29960,29961,29962,29963,29964,29965,29966,29967,29968,29969,29970,29971,29972,29973,29974,29975,29976,29977,29978,29979,29980,29981,29982,29983,29984,29985,29986,29987,29988,29989,29990,29991,29992,29993,29994,29995,29996,29997,29998,29999,30000,30001,30002,30003,30004,30005,30006,30007,30008,30009,30010,30011,30012,30013,30014,30015,30016,30017,30018,30019,30020,30021,30022,30023,30024,30025,30026,30027,30028,30029,30030,30031,30032,30033,30034,30035,30036,30037,30038,30039,30040,30041,30042,30043,30044,30045,30046,30047,30048,30049,30050,30051,30052,30053,30054,30055,30056,30057,30058,30059,30060,30061,30062,30063,30064,30065,30066,30067,30068,30069,30070,30071,30072,30073,30074,30075,30076,30077,30078,30079,30080,30081,30082,30083,30084,30085,30086,30087,30088,30089,30090,30091,30092,30093,30094,30095,30096,30097,30098,30099,30100,30101,30102,30103,30104,30105,30106,30107,30108,30109,30110,30111,30112,30113,30114,30115,30116,30117,30118,30119,30120,30121,30122,30123,30124,30125,30126,30127,30128,30129,30130,30131,30132,30133,30134,30135,30136,30137,30138,30139,30140,30141,30142,30143,30144,30145,30146,30147,30148,30149,30150,30151,30152,30153,30154,30155,30156,30157,30158,30159,30160,30161,30162,30163,30164,30165,30166,30167,30168,30169,30170,30171,30172,30173,30174,30175,30176,30177,30178,30179,30180,30181,30182,30183,30184,30185,30186,30187,30188,30189,30190,30191,30192,30193,30194,30195,30196,30197,30198,30199,30200,30201,30202,30203,30204,30205,30206,30207,30208,30209,30210,30211,30212,30213,30214,30215,30216,30217,30218,30219,30220,30221,30222,30223,30224,30225,30226,30227,30228,30229,30230,30231,30232,30233,30234,30235,30236,30237,30238,30239,30240,30241,30242,30243,30244,30245,30246,30247,30248,30249,30250,30251,30252,30253,30254,30255,30256,30257,30258,30259,30260,30261,30262,30263,30264,30265,30266,30267,30268,30269,30270,30271,30272,30273,30274,30275,30276,30277,30278,30279,30280,30281,30282,30283,30284,30285,30286,30287,30288,30289,30290,30291,30292,30293,30294,30295,30296,30297,30298,30299,30300,30301,30302,30303,30304,30305,30306,30307,30308,30309,30310,30311,30312,30313,30314,30315,30316,30317,30318,30319,30320,30321,30322,30323,30324,30325,30326,30327,30328,30329,30330,30331,30332,30333,30334,30335,30336,30337,30338,30339,30340,30341,30342,30343,30344,30345,30346,30347,30348,30349,30350,30351,30352,30353,30354,30355,30356,30357,30358,30359,30360,30361,30362,30363,30364,30365,30366,30367,30368,30369,30370,30371,30372,30373,30374,30375,30376,30377,30378,30379,30380,30381,30382,30383,30384,30385,30386,30387,30388,30389,30390,30391,30392,30393,30394,30395,30396,30397,30398,30399,30400,30401,30402,30403,30404,30405,30406,30407,30408,30409,30410,30411,30412,30413,30414,30415,30416,30417,30418,30419,30420,30421,30422,30423,30424,30425,30426,30427,30428,30429,30430,30431,30432,30433,30434,30435,30436,30437,30438,30439,30440,30441,30442,30443,30444,30445,30446,30447,30448,30449,30450,30451,30452,30453,30454,30455,30456,30457,30458,30459,30460,30461,30462,30463,30464,30465,30466,30467,30468,30469,30470,30471,30472,30473,30474,30475,30476,30477,30478,30479,30480,30481,30482,30483,30484,30485,30486,30487,30488,30489,30490,30491,30492,30493,30494,30495,30496,30497,30498,30499,30500,30501,30502,30503,30504,30505,30506,30507,30508,30509,30510,30511,30512,30513,30514,30515,30516,30517,30518,30519,30520,30521,30522,30523,30524,30525,30526,30527,30528,30529,30530,30531,30532,30533,30534,30535,30536,30537,30538,30539,30540,30541,30542,30543,30544,30545,30546,30547,30548,30549,30550,30551,30552,30553,30554,30555,30556,30557,30558,30559,30560,30561,30562,30563,30564,30565,30566,30567,30568,30569,30570,30571,30572,30573,30574,30575,30576,30577,30578,30579,30580,30581,30582,30583,30584,30585,30586,30587,30588,30589,30590,30591,30592,30593,30594,30595,30596,30597,30598,30599,30600,30601,30602,30603,30604,30605,30606,30607,30608,30609,30610,30611,30612,30613,30614,30615,30616,30617,30618,30619,30620,30621,30622,30623,30624,30625,30626,30627,30628,30629,30630,30631,30632,30633,30634,30635,30636,30637,30638,30639,30640,30641,30642,30643,30644,30645,30646,30647,30648,30649,30650,30651,30652,30653,30654,30655,30656,30657,30658,30659,30660,30661,30662,30663,30664,30665,30666,30667,30668,30669,30670,30671,30672,30673,30674,30675,30676,30677,30678,30679,30680,30681,30682,30683,30684,30685,30686,30687,30688,30689,30690,30691,30692,30693,30694,30695,30696,30697,30698,30699,30700,30701,30702,30703,30704,30705,30706,30707,30708,30709,30710,30711,30712,30713,30714,30715,30716,30717,30718,30719,30720,30721,30722,30723,30724,30725,30726,30727,30728,30729,30730,30731,30732,30733,30734,30735,30736,30737,30738,30739,30740,30741,30742,30743,30744,30745,30746,30747,30748,30749,30750,30751,30752,30753,30754,30755,30756,30757,30758,30759,30760,30761,30762,30763,30764,30765,30766,30767,30768,30769,30770,30771,30772,30773,30774,30775,30776,30777,30778,30779,30780,30781,30782,30783,30784,30785,30786,30787,30788,30789,30790,30791,30792,30793,30794,30795,30796,30797,30798,30799,30800,30801,30802,30803,30804,30805,30806,30807,30808,30809,30810,30811,30812,30813,30814,30815,30816,30817,30818,30819,30820,30821,30822,30823,30824,30825,30826,30827,30828,30829,30830,30831,30832,30833,30834,30835,30836,30837,30838,30839,30840,30841,30842,30843,30844,30845,30846,30847,30848,30849,30850,30851,30852,30853,30854,30855,30856,30857,30858,30859,30860,30861,30862,30863,30864,30865,30866,30867,30868,30869,30870,30871,30872,30873,30874,30875,30876,30877,30878,30879,30880,30881,30882,30883,30884,30885,30886,30887,30888,30889,30890,30891,30892,30893,30894,30895,30896,30897,30898,30899,30900,30901,30902,30903,30904,30905,30906,30907,30908,30909,30910,30911,30912,30913,30914,30915,30916,30917,30918,30919,30920,30921,30922,30923,30924,30925,30926,30927,30928,30929,30930,30931,30932,30933,30934,30935,30936,30937,30938,30939,30940,30941,30942,30943,30944,30945,30946,30947,30948,30949,30950,30951,30952,30953,30954,30955,30956,30957,30958,30959,30960,30961,30962,30963,30964,30965,30966,30967,30968,30969,30970,30971,30972,30973,30974,30975,30976,30977,30978,30979,30980,30981,30982,30983,30984,30985,30986,30987,30988,30989,30990,30991,30992,30993,30994,30995,30996,30997,30998,30999,31000,31001,31002,31003,31004,31005,31006,31007,31008,31009,31010,31011,31012,31013,31014,31015,31016,31017,31018,31019,31020,31021,31022,31023,31024,31025,31026,31027,31028,31029,31030,31031,31032,31033,31034,31035,31036,31037,31038,31039,31040,31041,31042,31043,31044,31045,31046,31047,31048,31049,31050,31051,31052,31053,31054,31055,31056,31057,31058,31059,31060,31061,31062,31063,31064,31065,31066,31067,31068,31069,31070,31071,31072,31073,31074,31075,31076,31077,31078,31079,31080,31081,31082,31083,31084,31085,31086,31087,31088,31089,31090,31091,31092,31093,31094,31095,31096,31097,31098,31099,31100,31101,31102,31103,31104,31105,31106,31107,31108,31109,31110,31111,31112,31113,31114,31115,31116,31117,31118,31119,31120,31121,31122,31123,31124,31125,31126,31127,31128,31129,31130,31131,31132,31133,31134,31135,31136,31137,31138,31139,31140,31141,31142,31143,31144,31145,31146,31147,31148,31149,31150,31151,31152,31153,31154,31155,31156,31157,31158,31159,31160,31161,31162,31163,31164,31165,31166,31167,31168,31169,31170,31171,31172,31173,31174,31175,31176,31177,31178,31179,31180,31181,31182,31183,31184,31185,31186,31187,31188,31189,31190,31191,31192,31193,31194,31195,31196,31197,31198,31199,31200,31201,31202,31203,31204,31205,31206,31207,31208,31209,31210,31211,31212,31213,31214,31215,31216,31217,31218,31219,31220,31221,31222,31223,31224,31225,31226,31227,31228,31229,31230,31231,31232,31233,31234,31235,31236,31237,31238,31239,31240,31241,31242,31243,31244,31245,31246,31247,31248,31249,31250,31251,31252,31253,31254,31255,31256,31257,31258,31259,31260,31261,31262,31263,31264,31265,31266,31267,31268,31269,31270,31271,31272,31273,31274,31275,31276,31277,31278,31279,31280,31281,31282,31283,31284,31285,31286,31287,31288,31289,31290,31291,31292,31293,31294,31295,31296,31297,31298,31299,31300,31301,31302,31303,31304,31305,31306,31307,31308,31309,31310,31311,31312,31313,31314,31315,31316,31317,31318,31319,31320,31321,31322,31323,31324,31325,31326,31327,31328,31329,31330,31331,31332,31333,31334,31335,31336,31337,31338,31339,31340,31341,31342,31343,31344,31345,31346,31347,31348,31349,31350,31351,31352,31353,31354,31355,31356,31357,31358,31359,31360,31361,31362,31363,31364,31365,31366,31367,31368,31369,31370,31371,31372,31373,31374,31375,31376,31377,31378,31379,31380,31381,31382,31383,31384,31385,31386,31387,31388,31389,31390,31391,31392,31393,31394,31395,31396,31397,31398,31399,31400,31401,31402,31403,31404,31405,31406,31407,31408,31409,31410,31411,31412,31413,31414,31415,31416,31417,31418,31419,31420,31421,31422,31423,31424,31425,31426,31427,31428,31429,31430,31431,31432,31433,31434,31435,31436,31437,31438,31439,31440,31441,31442,31443,31444,31445,31446,31447,31448,31449,31450,31451,31452,31453,31454,31455,31456,31457,31458,31459,31460,31461,31462,31463,31464,31465,31466,31467,31468,31469,31470,31471,31472,31473,31474,31475,31476,31477,31478,31479,31480,31481,31482,31483,31484,31485,31486,31487,31488,31489,31490,31491,31492,31493,31494,31495,31496,31497,31498,31499,31500,31501,31502,31503,31504,31505,31506,31507,31508,31509,31510,31511,31512,31513,31514,31515,31516,31517,31518,31519,31520,31521,31522,31523,31524,31525,31526,31527,31528,31529,31530,31531,31532,31533,31534,31535,31536,31537,31538,31539,31540,31541,31542,31543,31544,31545,31546,31547,31548,31549,31550,31551,31552,31553,31554,31555,31556,31557,31558,31559,31560,31561,31562,31563,31564,31565,31566,31567,31568,31569,31570,31571,31572,31573,31574,31575,31576,31577,31578,31579,31580,31581,31582,31583,31584,31585,31586,31587,31588,31589,31590,31591,31592,31593,31594,31595,31596,31597,31598,31599,31600,31601,31602,31603,31604,31605,31606,31607,31608,31609,31610,31611,31612,31613,31614,31615,31616,31617,31618,31619,31620,31621,31622,31623,31624,31625,31626,31627,31628,31629,31630,31631,31632,31633,31634,31635,31636,31637,31638,31639,31640,31641,31642,31643,31644,31645,31646,31647,31648,31649,31650,31651,31652,31653,31654,31655,31656,31657,31658,31659,31660,31661,31662,31663,31664,31665,31666,31667,31668,31669,31670,31671,31672,31673,31674,31675,31676,31677,31678,31679,31680,31681,31682,31683,31684,31685,31686,31687,31688,31689,31690,31691,31692,31693,31694,31695,31696,31697,31698,31699,31700,31701,31702,31703,31704,31705,31706,31707,31708,31709,31710,31711,31712,31713,31714,31715,31716,31717,31718,31719,31720,31721,31722,31723,31724,31725,31726,31727,31728,31729,31730,31731,31732,31733,31734,31735,31736,31737,31738,31739,31740,31741,31742,31743,31744,31745,31746,31747,31748,31749,31750,31751,31752,31753,31754,31755,31756,31757,31758,31759,31760,31761,31762,31763,31764,31765,31766,31767,31768,31769,31770,31771,31772,31773,31774,31775,31776,31777,31778,31779,31780,31781,31782,31783,31784,31785,31786,31787,31788,31789,31790,31791,31792,31793,31794,31795,31796,31797,31798,31799,31800,31801,31802,31803,31804,31805,31806,31807,31808,31809,31810,31811,31812,31813,31814,31815,31816,31817,31818,31819,31820,31821,31822,31823,31824,31825,31826,31827,31828,31829,31830,31831,31832,31833,31834,31835,31836,31837,31838,31839,31840,31841,31842,31843,31844,31845,31846,31847,31848,31849,31850,31851,31852,31853,31854,31855,31856,31857,31858,31859,31860,31861,31862,31863,31864,31865,31866,31867,31868,31869,31870,31871,31872,31873,31874,31875,31876,31877,31878,31879,31880,31881,31882,31883,31884,31885,31886,31887,31888,31889,31890,31891,31892,31893,31894,31895,31896,31897,31898,31899,31900,31901,31902,31903,31904,31905,31906,31907,31908,31909,31910,31911,31912,31913,31914,31915,31916,31917,31918,31919,31920,31921,31922,31923,31924,31925,31926,31927,31928,31929,31930,31931,31932,31933,31934,31935,31936,31937,31938,31939,31940,31941,31942,31943,31944,31945,31946,31947,31948,31949,31950,31951,31952,31953,31954,31955,31956,31957,31958,31959,31960,31961,31962,31963,31964,31965,31966,31967,31968,31969,31970,31971,31972,31973,31974,31975,31976,31977,31978,31979,31980,31981,31982,31983,31984,31985,31986,31987,31988,31989,31990,31991,31992,31993,31994,31995,31996,31997,31998,31999,32000,32001,32002,32003,32004,32005,32006,32007,32008,32009,32010,32011,32012,32013,32014,32015,32016,32017,32018,32019,32020,32021,32022,32023,32024,32025,32026,32027,32028,32029,32030,32031,32032,32033,32034,32035,32036,32037,32038,32039,32040,32041,32042,32043,32044,32045,32046,32047,32048,32049,32050,32051,32052,32053,32054,32055,32056,32057,32058,32059,32060,32061,32062,32063,32064,32065,32066,32067,32068,32069,32070,32071,32072,32073,32074,32075,32076,32077,32078,32079,32080,32081,32082,32083,32084,32085,32086,32087,32088,32089,32090,32091,32092,32093,32094,32095,32096,32097,32098,32099,32100,32101,32102,32103,32104,32105,32106,32107,32108,32109,32110,32111,32112,32113,32114,32115,32116,32117,32118,32119,32120,32121,32122,32123,32124,32125,32126,32127,32128,32129,32130,32131,32132,32133,32134,32135,32136,32137,32138,32139,32140,32141,32142,32143,32144,32145,32146,32147,32148,32149,32150,32151,32152,32153,32154,32155,32156,32157,32158,32159,32160,32161,32162,32163,32164,32165,32166,32167,32168,32169,32170,32171,32172,32173,32174,32175,32176,32177,32178,32179,32180,32181,32182,32183,32184,32185,32186,32187,32188,32189,32190,32191,32192,32193,32194,32195,32196,32197,32198,32199,32200,32201,32202,32203,32204,32205,32206,32207,32208,32209,32210,32211,32212,32213,32214,32215,32216,32217,32218,32219,32220,32221,32222,32223,32224,32225,32226,32227,32228,32229,32230,32231,32232,32233,32234,32235,32236,32237,32238,32239,32240,32241,32242,32243,32244,32245,32246,32247,32248,32249,32250,32251,32252,32253,32254,32255,32256,32257,32258,32259,32260,32261,32262,32263,32264,32265,32266,32267,32268,32269,32270,32271,32272,32273,32274,32275,32276,32277,32278,32279,32280,32281,32282,32283,32284,32285,32286,32287,32288,32289,32290,32291,32292,32293,32294,32295,32296,32297,32298,32299,32300,32301,32302,32303,32304,32305,32306,32307,32308,32309,32310,32311,32312,32313,32314,32315,32316,32317,32318,32319,32320,32321,32322,32323,32324,32325,32326,32327,32328,32329,32330,32331,32332,32333,32334,32335,32336,32337,32338,32339,32340,32341,32342,32343,32344,32345,32346,32347,32348,32349,32350,32351,32352,32353,32354,32355,32356,32357,32358,32359,32360,32361,32362,32363,32364,32365,32366,32367,32368,32369,32370,32371,32372,32373,32374,32375,32376,32377,32378,32379,32380,32381,32382,32383,32384,32385,32386,32387,32388,32389,32390,32391,32392,32393,32394,32395,32396,32397,32398,32399,32400,32401,32402,32403,32404,32405,32406,32407,32408,32409,32410,32411,32412,32413,32414,32415,32416,32417,32418,32419,32420,32421,32422,32423,32424,32425,32426,32427,32428,32429,32430,32431,32432,32433,32434,32435,32436,32437,32438,32439,32440,32441,32442,32443,32444,32445,32446,32447,32448,32449,32450,32451,32452,32453,32454,32455,32456,32457,32458,32459,32460,32461,32462,32463,32464,32465,32466,32467,32468,32469,32470,32471,32472,32473,32474,32475,32476,32477,32478,32479,32480,32481,32482,32483,32484,32485,32486,32487,32488,32489,32490,32491,32492,32493,32494,32495,32496,32497,32498,32499,32500,32501,32502,32503,32504,32505,32506,32507,32508,32509,32510,32511,32512,32513,32514,32515,32516,32517,32518,32519,32520,32521,32522,32523,32524,32525,32526,32527,32528,32529,32530,32531,32532,32533,32534,32535,32536,32537,32538,32539,32540,32541,32542,32543,32544,32545,32546,32547,32548,32549,32550,32551,32552,32553,32554,32555,32556,32557,32558,32559,32560,32561,32562,32563,32564,32565,32566,32567,32568,32569,32570,32571,32572,32573,32574,32575,32576,32577,32578,32579,32580,32581,32582,32583,32584,32585,32586,32587,32588,32589,32590,32591,32592,32593,32594,32595,32596,32597,32598,32599,32600,32601,32602,32603,32604,32605,32606,32607,32608,32609,32610,32611,32612,32613,32614,32615,32616,32617,32618,32619,32620,32621,32622,32623,32624,32625,32626,32627,32628,32629,32630,32631,32632,32633,32634,32635,32636,32637,32638,32639,32640,32641,32642,32643,32644,32645,32646,32647,32648,32649,32650,32651,32652,32653,32654,32655,32656,32657,32658,32659,32660,32661,32662,32663,32664,32665,32666,32667,32668,32669,32670,32671,32672,32673,32674,32675,32676,32677,32678,32679,32680,32681,32682,32683,32684,32685,32686,32687,32688,32689,32690,32691,32692,32693,32694,32695,32696,32697,32698,32699,32700,32701,32702,32703,32704,32705,32706,32707,32708,32709,32710,32711,32712,32713,32714,32715,32716,32717,32718,32719,32720,32721,32722,32723,32724,32725,32726,32727,32728,32729,32730,32731,32732,32733,32734,32735,32736,32737,32738,32739,32740,32741,32742,32743,32744,32745,32746,32747,32748,32749,32750,32751,32752,32753,32754,32755,32756,32757,32758,32759,32760,32761,32762,32763,32764,32765,32766,32767,32768,32769,32770,32771,32772,32773,32774,32775,32776,32777,32778,32779,32780,32781,32782,32783,32784,32785,32786,32787,32788,32789,32790,32791,32792,32793,32794,32795,32796,32797,32798,32799,32800,32801,32802,32803,32804,32805,32806,32807,32808,32809,32810,32811,32812,32813,32814,32815,32816,32817,32818,32819,32820,32821,32822,32823,32824,32825,32826,32827,32828,32829,32830,32831,32832,32833,32834,32835,32836,32837,32838,32839,32840,32841,32842,32843,32844,32845,32846,32847,32848,32849,32850,32851,32852,32853,32854,32855,32856,32857,32858,32859,32860,32861,32862,32863,32864,32865,32866,32867,32868,32869,32870,32871,32872,32873,32874,32875,32876,32877,32878,32879,32880,32881,32882,32883,32884,32885,32886,32887,32888,32889,32890,32891,32892,32893,32894,32895,32896,32897,32898,32899,32900,32901,32902,32903,32904,32905,32906,32907,32908,32909,32910,32911,32912,32913,32914,32915,32916,32917,32918,32919,32920,32921,32922,32923,32924,32925,32926,32927,32928,32929,32930,32931,32932,32933,32934,32935,32936,32937,32938,32939,32940,32941,32942,32943,32944,32945,32946,32947,32948,32949,32950,32951,32952,32953,32954,32955,32956,32957,32958,32959,32960,32961,32962,32963,32964,32965,32966,32967,32968,32969,32970,32971,32972,32973,32974,32975,32976,32977,32978,32979,32980,32981,32982,32983,32984,32985,32986,32987,32988,32989,32990,32991,32992,32993,32994,32995,32996,32997,32998,32999,33000,33001,33002,33003,33004,33005,33006,33007,33008,33009,33010,33011,33012,33013,33014,33015,33016,33017,33018,33019,33020,33021,33022,33023,33024,33025,33026,33027,33028,33029,33030,33031,33032,33033,33034,33035,33036,33037,33038,33039,33040,33041,33042,33043,33044,33045,33046,33047,33048,33049,33050,33051,33052,33053,33054,33055,33056,33057,33058,33059,33060,33061,33062,33063,33064,33065,33066,33067,33068,33069,33070,33071,33072,33073,33074,33075,33076,33077,33078,33079,33080,33081,33082,33083,33084,33085,33086,33087,33088,33089,33090,33091,33092,33093,33094,33095,33096,33097,33098,33099,33100,33101,33102,33103,33104,33105,33106,33107,33108,33109,33110,33111,33112,33113,33114,33115,33116,33117,33118,33119,33120,33121,33122,33123,33124,33125,33126,33127,33128,33129,33130,33131,33132,33133,33134,33135,33136,33137,33138,33139,33140,33141,33142,33143,33144,33145,33146,33147,33148,33149,33150,33151,33152,33153,33154,33155,33156,33157,33158,33159,33160,33161,33162,33163,33164,33165,33166,33167,33168,33169,33170,33171,33172,33173,33174,33175,33176,33177,33178,33179,33180,33181,33182,33183,33184,33185,33186,33187,33188,33189,33190,33191,33192,33193,33194,33195,33196,33197,33198,33199,33200,33201,33202,33203,33204,33205,33206,33207,33208,33209,33210,33211,33212,33213,33214,33215,33216,33217,33218,33219,33220,33221,33222,33223,33224,33225,33226,33227,33228,33229,33230,33231,33232,33233,33234,33235,33236,33237,33238,33239,33240,33241,33242,33243,33244,33245,33246,33247,33248,33249,33250,33251,33252,33253,33254,33255,33256,33257,33258,33259,33260,33261,33262,33263,33264,33265,33266,33267,33268,33269,33270,33271,33272,33273,33274,33275,33276,33277,33278,33279,33280,33281,33282,33283,33284,33285,33286,33287,33288,33289,33290,33291,33292,33293,33294,33295,33296,33297,33298,33299,33300,33301,33302,33303,33304,33305,33306,33307,33308,33309,33310,33311,33312,33313,33314,33315,33316,33317,33318,33319,33320,33321,33322,33323,33324,33325,33326,33327,33328,33329,33330,33331,33332,33333,33334,33335,33336,33337,33338,33339,33340,33341,33342,33343,33344,33345,33346,33347,33348,33349,33350,33351,33352,33353,33354,33355,33356,33357,33358,33359,33360,33361,33362,33363,33364,33365,33366,33367,33368,33369,33370,33371,33372,33373,33374,33375,33376,33377,33378,33379,33380,33381,33382,33383,33384,33385,33386,33387,33388,33389,33390,33391,33392,33393,33394,33395,33396,33397,33398,33399,33400,33401,33402,33403,33404,33405,33406,33407,33408,33409,33410,33411,33412,33413,33414,33415,33416,33417,33418,33419,33420,33421,33422,33423,33424,33425,33426,33427,33428,33429,33430,33431,33432,33433,33434,33435,33436,33437,33438,33439,33440,33441,33442,33443,33444,33445,33446,33447,33448,33449,33450,33451,33452,33453,33454,33455,33456,33457,33458,33459,33460,33461,33462,33463,33464,33465,33466,33467,33468,33469,33470,33471,33472,33473,33474,33475,33476,33477,33478,33479,33480,33481,33482,33483,33484,33485,33486,33487,33488,33489,33490,33491,33492,33493,33494,33495,33496,33497,33498,33499,33500,33501,33502,33503,33504,33505,33506,33507,33508,33509,33510,33511,33512,33513,33514,33515,33516,33517,33518,33519,33520,33521,33522,33523,33524,33525,33526,33527,33528,33529,33530,33531,33532,33533,33534,33535,33536,33537,33538,33539,33540,33541,33542,33543,33544,33545,33546,33547,33548,33549,33550,33551,33552,33553,33554,33555,33556,33557,33558,33559,33560,33561,33562,33563,33564,33565,33566,33567,33568,33569,33570,33571,33572,33573,33574,33575,33576,33577,33578,33579,33580,33581,33582,33583,33584,33585,33586,33587,33588,33589,33590,33591,33592,33593,33594,33595,33596,33597,33598,33599,33600,33601,33602,33603,33604,33605,33606,33607,33608,33609,33610,33611,33612,33613,33614,33615,33616,33617,33618,33619,33620,33621,33622,33623,33624,33625,33626,33627,33628,33629,33630,33631,33632,33633,33634,33635,33636,33637,33638,33639,33640,33641,33642,33643,33644,33645,33646,33647,33648,33649,33650,33651,33652,33653,33654,33655,33656,33657,33658,33659,33660,33661,33662,33663,33664,33665,33666,33667,33668,33669,33670,33671,33672,33673,33674,33675,33676,33677,33678,33679,33680,33681,33682,33683,33684,33685,33686,33687,33688,33689,33690,33691,33692,33693,33694,33695,33696,33697,33698,33699,33700,33701,33702,33703,33704,33705,33706,33707,33708,33709,33710,33711,33712,33713,33714,33715,33716,33717,33718,33719,33720,33721,33722,33723,33724,33725,33726,33727,33728,33729,33730,33731,33732,33733,33734,33735,33736,33737,33738,33739,33740,33741,33742,33743,33744,33745,33746,33747,33748,33749,33750,33751,33752,33753,33754,33755,33756,33757,33758,33759,33760,33761,33762,33763,33764,33765,33766,33767,33768,33769,33770,33771,33772,33773,33774,33775,33776,33777,33778,33779,33780,33781,33782,33783,33784,33785,33786,33787,33788,33789,33790,33791,33792,33793,33794,33795,33796,33797,33798,33799,33800,33801,33802,33803,33804,33805,33806,33807,33808,33809,33810,33811,33812,33813,33814,33815,33816,33817,33818,33819,33820,33821,33822,33823,33824,33825,33826,33827,33828,33829,33830,33831,33832,33833,33834,33835,33836,33837,33838,33839,33840,33841,33842,33843,33844,33845,33846,33847,33848,33849,33850,33851,33852,33853,33854,33855,33856,33857,33858,33859,33860,33861,33862,33863,33864,33865,33866,33867,33868,33869,33870,33871,33872,33873,33874,33875,33876,33877,33878,33879,33880,33881,33882,33883,33884,33885,33886,33887,33888,33889,33890,33891,33892,33893,33894,33895,33896,33897,33898,33899,33900,33901,33902,33903,33904,33905,33906,33907,33908,33909,33910,33911,33912,33913,33914,33915,33916,33917,33918,33919,33920,33921,33922,33923,33924,33925,33926,33927,33928,33929,33930,33931,33932,33933,33934,33935,33936,33937,33938,33939,33940,33941,33942,33943,33944,33945,33946,33947,33948,33949,33950,33951,33952,33953,33954,33955,33956,33957,33958,33959,33960,33961,33962,33963,33964,33965,33966,33967,33968,33969,33970,33971,33972,33973,33974,33975,33976,33977,33978,33979,33980,33981,33982,33983,33984,33985,33986,33987,33988,33989,33990,33991,33992,33993,33994,33995,33996,33997,33998,33999,34000,34001,34002,34003,34004,34005,34006,34007,34008,34009,34010,34011,34012,34013,34014,34015,34016,34017,34018,34019,34020,34021,34022,34023,34024,34025,34026,34027,34028,34029,34030,34031,34032,34033,34034,34035,34036,34037,34038,34039,34040,34041,34042,34043,34044,34045,34046,34047,34048,34049,34050,34051,34052,34053,34054,34055,34056,34057,34058,34059,34060,34061,34062,34063,34064,34065,34066,34067,34068,34069,34070,34071,34072,34073,34074,34075,34076,34077,34078,34079,34080,34081,34082,34083,34084,34085,34086,34087,34088,34089,34090,34091,34092,34093,34094,34095,34096,34097,34098,34099,34100,34101,34102,34103,34104,34105,34106,34107,34108,34109,34110,34111,34112,34113,34114,34115,34116,34117,34118,34119,34120,34121,34122,34123,34124,34125,34126,34127,34128,34129,34130,34131,34132,34133,34134,34135,34136,34137,34138,34139,34140,34141,34142,34143,34144,34145,34146,34147,34148,34149,34150,34151,34152,34153,34154,34155,34156,34157,34158,34159,34160,34161,34162,34163,34164,34165,34166,34167,34168,34169,34170,34171,34172,34173,34174,34175,34176,34177,34178,34179,34180,34181,34182,34183,34184,34185,34186,34187,34188,34189,34190,34191,34192,34193,34194,34195,34196,34197,34198,34199,34200,34201,34202,34203,34204,34205,34206,34207,34208,34209,34210,34211,34212,34213,34214,34215,34216,34217,34218,34219,34220,34221,34222,34223,34224,34225,34226,34227,34228,34229,34230,34231,34232,34233,34234,34235,34236,34237,34238,34239,34240,34241,34242,34243,34244,34245,34246,34247,34248,34249,34250,34251,34252,34253,34254,34255,34256,34257,34258,34259,34260,34261,34262,34263,34264,34265,34266,34267,34268,34269,34270,34271,34272,34273,34274,34275,34276,34277,34278,34279,34280,34281,34282,34283,34284,34285,34286,34287,34288,34289,34290,34291,34292,34293,34294,34295,34296,34297,34298,34299,34300,34301,34302,34303,34304,34305,34306,34307,34308,34309,34310,34311,34312,34313,34314,34315,34316,34317,34318,34319,34320,34321,34322,34323,34324,34325,34326,34327,34328,34329,34330,34331,34332,34333,34334,34335,34336,34337,34338,34339,34340,34341,34342,34343,34344,34345,34346,34347,34348,34349,34350,34351,34352,34353,34354,34355,34356,34357,34358,34359,34360,34361,34362,34363,34364,34365,34366,34367,34368,34369,34370,34371,34372,34373,34374,34375,34376,34377,34378,34379,34380,34381,34382,34383,34384,34385,34386,34387,34388,34389,34390,34391,34392,34393,34394,34395,34396,34397,34398,34399,34400,34401,34402,34403,34404,34405,34406,34407,34408,34409,34410,34411,34412,34413,34414,34415,34416,34417,34418,34419,34420,34421,34422,34423,34424,34425,34426,34427,34428,34429,34430,34431,34432,34433,34434,34435,34436,34437,34438,34439,34440,34441,34442,34443,34444,34445,34446,34447,34448,34449,34450,34451,34452,34453,34454,34455,34456,34457,34458,34459,34460,34461,34462,34463,34464,34465,34466,34467,34468,34469,34470,34471,34472,34473,34474,34475,34476,34477,34478,34479,34480,34481,34482,34483,34484,34485,34486,34487,34488,34489,34490,34491,34492,34493,34494,34495,34496,34497,34498,34499,34500,34501,34502,34503,34504,34505,34506,34507,34508,34509,34510,34511,34512,34513,34514,34515,34516,34517,34518,34519,34520,34521,34522,34523,34524,34525,34526,34527,34528,34529,34530,34531,34532,34533,34534,34535,34536,34537,34538,34539,34540,34541,34542,34543,34544,34545,34546,34547,34548,34549,34550,34551,34552,34553,34554,34555,34556,34557,34558,34559,34560,34561,34562,34563,34564,34565,34566,34567,34568,34569,34570,34571,34572,34573,34574,34575,34576,34577,34578,34579,34580,34581,34582,34583,34584,34585,34586,34587,34588,34589,34590,34591,34592,34593,34594,34595,34596,34597,34598,34599,34600,34601,34602,34603,34604,34605,34606,34607,34608,34609,34610,34611,34612,34613,34614,34615,34616,34617,34618,34619,34620,34621,34622,34623,34624,34625,34626,34627,34628,34629,34630,34631,34632,34633,34634,34635,34636,34637,34638,34639,34640,34641,34642,34643,34644,34645,34646,34647,34648,34649,34650,34651,34652,34653,34654,34655,34656,34657,34658,34659,34660,34661,34662,34663,34664,34665,34666,34667,34668,34669,34670,34671,34672,34673,34674,34675,34676,34677,34678,34679,34680,34681,34682,34683,34684,34685,34686,34687,34688,34689,34690,34691,34692,34693,34694,34695,34696,34697,34698,34699,34700,34701,34702,34703,34704,34705,34706,34707,34708,34709,34710,34711,34712,34713,34714,34715,34716,34717,34718,34719,34720,34721,34722,34723,34724,34725,34726,34727,34728,34729,34730,34731,34732,34733,34734,34735,34736,34737,34738,34739,34740,34741,34742,34743,34744,34745,34746,34747,34748,34749,34750,34751,34752,34753,34754,34755,34756,34757,34758,34759,34760,34761,34762,34763,34764,34765,34766,34767,34768,34769,34770,34771,34772,34773,34774,34775,34776,34777,34778,34779,34780,34781,34782,34783,34784,34785,34786,34787,34788,34789,34790,34791,34792,34793,34794,34795,34796,34797,34798,34799,34800,34801,34802,34803,34804,34805,34806,34807,34808,34809,34810,34811,34812,34813,34814,34815,34816,34817,34818,34819,34820,34821,34822,34823,34824,34825,34826,34827,34828,34829,34830,34831,34832,34833,34834,34835,34836,34837,34838,34839,34840,34841,34842,34843,34844,34845,34846,34847,34848,34849,34850,34851,34852,34853,34854,34855,34856,34857,34858,34859,34860,34861,34862,34863,34864,34865,34866,34867,34868,34869,34870,34871,34872,34873,34874,34875,34876,34877,34878,34879,34880,34881,34882,34883,34884,34885,34886,34887,34888,34889,34890,34891,34892,34893,34894,34895,34896,34897,34898,34899,34900,34901,34902,34903,34904,34905,34906,34907,34908,34909,34910,34911,34912,34913,34914,34915,34916,34917,34918,34919,34920,34921,34922,34923,34924,34925,34926,34927,34928,34929,34930,34931,34932,34933,34934,34935,34936,34937,34938,34939,34940,34941,34942,34943,34944,34945,34946,34947,34948,34949,34950,34951,34952,34953,34954,34955,34956,34957,34958,34959,34960,34961,34962,34963,34964,34965,34966,34967,34968,34969,34970,34971,34972,34973,34974,34975,34976,34977,34978,34979,34980,34981,34982,34983,34984,34985,34986,34987,34988,34989,34990,34991,34992,34993,34994,34995,34996,34997,34998,34999,35000,35001,35002,35003,35004,35005,35006,35007,35008,35009,35010,35011,35012,35013,35014,35015,35016,35017,35018,35019,35020,35021,35022,35023,35024,35025,35026,35027,35028,35029,35030,35031,35032,35033,35034,35035,35036,35037,35038,35039,35040,35041,35042,35043,35044,35045,35046,35047,35048,35049,35050,35051,35052,35053,35054,35055,35056,35057,35058,35059,35060,35061,35062,35063,35064,35065,35066,35067,35068,35069,35070,35071,35072,35073,35074,35075,35076,35077,35078,35079,35080,35081,35082,35083,35084,35085,35086,35087,35088,35089,35090,35091,35092,35093,35094,35095,35096,35097,35098,35099,35100,35101,35102,35103,35104,35105,35106,35107,35108,35109,35110,35111,35112,35113,35114,35115,35116,35117,35118,35119,35120,35121,35122,35123,35124,35125,35126,35127,35128,35129,35130,35131,35132,35133,35134,35135,35136,35137,35138,35139,35140,35141,35142,35143,35144,35145,35146,35147,35148,35149,35150,35151,35152,35153,35154,35155,35156,35157,35158,35159,35160,35161,35162,35163,35164,35165,35166,35167,35168,35169,35170,35171,35172,35173,35174,35175,35176,35177,35178,35179,35180,35181,35182,35183,35184,35185,35186,35187,35188,35189,35190,35191,35192,35193,35194,35195,35196,35197,35198,35199,35200,35201,35202,35203,35204,35205,35206,35207,35208,35209,35210,35211,35212,35213,35214,35215,35216,35217,35218,35219,35220,35221,35222,35223,35224,35225,35226,35227,35228,35229,35230,35231,35232,35233,35234,35235,35236,35237,35238,35239,35240,35241,35242,35243,35244,35245,35246,35247,35248,35249,35250,35251,35252,35253,35254,35255,35256,35257,35258,35259,35260,35261,35262,35263,35264,35265,35266,35267,35268,35269,35270,35271,35272,35273,35274,35275,35276,35277,35278,35279,35280,35281,35282,35283,35284,35285,35286,35287,35288,35289,35290,35291,35292,35293,35294,35295,35296,35297,35298,35299,35300,35301,35302,35303,35304,35305,35306,35307,35308,35309,35310,35311,35312,35313,35314,35315,35316,35317,35318,35319,35320,35321,35322,35323,35324,35325,35326,35327,35328,35329,35330,35331,35332,35333,35334,35335,35336,35337,35338,35339,35340,35341,35342,35343,35344,35345,35346,35347,35348,35349,35350,35351,35352,35353,35354,35355,35356,35357,35358,35359,35360,35361,35362,35363,35364,35365,35366,35367,35368,35369,35370,35371,35372,35373,35374,35375,35376,35377,35378,35379,35380,35381,35382,35383,35384,35385,35386,35387,35388,35389,35390,35391,35392,35393,35394,35395,35396,35397,35398,35399,35400,35401,35402,35403,35404,35405,35406,35407,35408,35409,35410,35411,35412,35413,35414,35415,35416,35417,35418,35419,35420,35421,35422,35423,35424,35425,35426,35427,35428,35429,35430,35431,35432,35433,35434,35435,35436,35437,35438,35439,35440,35441,35442,35443,35444,35445,35446,35447,35448,35449,35450,35451,35452,35453,35454,35455,35456,35457,35458,35459,35460,35461,35462,35463,35464,35465,35466,35467,35468,35469,35470,35471,35472,35473,35474,35475,35476,35477,35478,35479,35480,35481,35482,35483,35484,35485,35486,35487,35488,35489,35490,35491,35492,35493,35494,35495,35496,35497,35498,35499,35500,35501,35502,35503,35504,35505,35506,35507,35508,35509,35510,35511,35512,35513,35514,35515,35516,35517,35518,35519,35520,35521,35522,35523,35524,35525,35526,35527,35528,35529,35530,35531,35532,35533,35534,35535,35536,35537,35538,35539,35540,35541,35542,35543,35544,35545,35546,35547,35548,35549,35550,35551,35552,35553,35554,35555,35556,35557,35558,35559,35560,35561,35562,35563,35564,35565,35566,35567,35568,35569,35570,35571,35572,35573,35574,35575,35576,35577,35578,35579,35580,35581,35582,35583,35584,35585,35586,35587,35588,35589,35590,35591,35592,35593,35594,35595,35596,35597,35598,35599,35600,35601,35602,35603,35604,35605,35606,35607,35608,35609,35610,35611,35612,35613,35614,35615,35616,35617,35618,35619,35620,35621,35622,35623,35624,35625,35626,35627,35628,35629,35630,35631,35632,35633,35634,35635,35636,35637,35638,35639,35640,35641,35642,35643,35644,35645,35646,35647,35648,35649,35650,35651,35652,35653,35654,35655,35656,35657,35658,35659,35660,35661,35662,35663,35664,35665,35666,35667,35668,35669,35670,35671,35672,35673,35674,35675,35676,35677,35678,35679,35680,35681,35682,35683,35684,35685,35686,35687,35688,35689,35690,35691,35692,35693,35694,35695,35696,35697,35698,35699,35700,35701,35702,35703,35704,35705,35706,35707,35708,35709,35710,35711,35712,35713,35714,35715,35716,35717,35718,35719,35720,35721,35722,35723,35724,35725,35726,35727,35728,35729,35730,35731,35732,35733,35734,35735,35736,35737,35738,35739,35740,35741,35742,35743,35744,35745,35746,35747,35748,35749,35750,35751,35752,35753,35754,35755,35756,35757,35758,35759,35760,35761,35762,35763,35764,35765,35766,35767,35768,35769,35770,35771,35772,35773,35774,35775,35776,35777,35778,35779,35780,35781,35782,35783,35784,35785,35786,35787,35788,35789,35790,35791,35792,35793,35794,35795,35796,35797,35798,35799,35800,35801,35802,35803,35804,35805,35806,35807,35808,35809,35810,35811,35812,35813,35814,35815,35816,35817,35818,35819,35820,35821,35822,35823,35824,35825,35826,35827,35828,35829,35830,35831,35832,35833,35834,35835,35836,35837,35838,35839,35840,35841,35842,35843,35844,35845,35846,35847,35848,35849,35850,35851,35852,35853,35854,35855,35856,35857,35858,35859,35860,35861,35862,35863,35864,35865,35866,35867,35868,35869,35870,35871,35872,35873,35874,35875,35876,35877,35878,35879,35880,35881,35882,35883,35884,35885,35886,35887,35888,35889,35890,35891,35892,35893,35894,35895,35896,35897,35898,35899,35900,35901,35902,35903,35904,35905,35906,35907,35908,35909,35910,35911,35912,35913,35914,35915,35916,35917,35918,35919,35920,35921,35922,35923,35924,35925,35926,35927,35928,35929,35930,35931,35932,35933,35934,35935,35936,35937,35938,35939,35940,35941,35942,35943,35944,35945,35946,35947,35948,35949,35950,35951,35952,35953,35954,35955,35956,35957,35958,35959,35960,35961,35962,35963,35964,35965,35966,35967,35968,35969,35970,35971,35972,35973,35974,35975,35976,35977,35978,35979,35980,35981,35982,35983,35984,35985,35986,35987,35988,35989,35990,35991,35992,35993,35994,35995,35996,35997,35998,35999,36000,36001,36002,36003,36004,36005,36006,36007,36008,36009,36010,36011,36012,36013,36014,36015,36016,36017,36018,36019,36020,36021,36022,36023,36024,36025,36026,36027,36028,36029,36030,36031,36032,36033,36034,36035,36036,36037,36038,36039,36040,36041,36042,36043,36044,36045,36046,36047,36048,36049,36050,36051,36052,36053,36054,36055,36056,36057,36058,36059,36060,36061,36062,36063,36064,36065,36066,36067,36068,36069,36070,36071,36072,36073,36074,36075,36076,36077,36078,36079,36080,36081,36082,36083,36084,36085,36086,36087,36088,36089,36090,36091,36092,36093,36094,36095,36096,36097,36098,36099,36100,36101,36102,36103,36104,36105,36106,36107,36108,36109,36110,36111,36112,36113,36114,36115,36116,36117,36118,36119,36120,36121,36122,36123,36124,36125,36126,36127,36128,36129,36130,36131,36132,36133,36134,36135,36136,36137,36138,36139,36140,36141,36142,36143,36144,36145,36146,36147,36148,36149,36150,36151,36152,36153,36154,36155,36156,36157,36158,36159,36160,36161,36162,36163,36164,36165,36166,36167,36168,36169,36170,36171,36172,36173,36174,36175,36176,36177,36178,36179,36180,36181,36182,36183,36184,36185,36186,36187,36188,36189,36190,36191,36192,36193,36194,36195,36196,36197,36198,36199,36200,36201,36202,36203,36204,36205,36206,36207,36208,36209,36210,36211,36212,36213,36214,36215,36216,36217,36218,36219,36220,36221,36222,36223,36224,36225,36226,36227,36228,36229,36230,36231,36232,36233,36234,36235,36236,36237,36238,36239,36240,36241,36242,36243,36244,36245,36246,36247,36248,36249,36250,36251,36252,36253,36254,36255,36256,36257,36258,36259,36260,36261,36262,36263,36264,36265,36266,36267,36268,36269,36270,36271,36272,36273,36274,36275,36276,36277,36278,36279,36280,36281,36282,36283,36284,36285,36286,36287,36288,36289,36290,36291,36292,36293,36294,36295,36296,36297,36298,36299,36300,36301,36302,36303,36304,36305,36306,36307,36308,36309,36310,36311,36312,36313,36314,36315,36316,36317,36318,36319,36320,36321,36322,36323,36324,36325,36326,36327,36328,36329,36330,36331,36332,36333,36334,36335,36336,36337,36338,36339,36340,36341,36342,36343,36344,36345,36346,36347,36348,36349,36350,36351,36352,36353,36354,36355,36356,36357,36358,36359,36360,36361,36362,36363,36364,36365,36366,36367,36368,36369,36370,36371,36372,36373,36374,36375,36376,36377,36378,36379,36380,36381,36382,36383,36384,36385,36386,36387,36388,36389,36390,36391,36392,36393,36394,36395,36396,36397,36398,36399,36400,36401,36402,36403,36404,36405,36406,36407,36408,36409,36410,36411,36412,36413,36414,36415,36416,36417,36418,36419,36420,36421,36422,36423,36424,36425,36426,36427,36428,36429,36430,36431,36432,36433,36434,36435,36436,36437,36438,36439,36440,36441,36442,36443,36444,36445,36446,36447,36448,36449,36450,36451,36452,36453,36454,36455,36456,36457,36458,36459,36460,36461,36462,36463,36464,36465,36466,36467,36468,36469,36470,36471,36472,36473,36474,36475,36476,36477,36478,36479,36480,36481,36482,36483,36484,36485,36486,36487,36488,36489,36490,36491,36492,36493,36494,36495,36496,36497,36498,36499,36500,36501,36502,36503,36504,36505,36506,36507,36508,36509,36510,36511,36512,36513,36514,36515,36516,36517,36518,36519,36520,36521,36522,36523,36524,36525,36526,36527,36528,36529,36530,36531,36532,36533,36534,36535,36536,36537,36538,36539,36540,36541,36542,36543,36544,36545,36546,36547,36548,36549,36550,36551,36552,36553,36554,36555,36556,36557,36558,36559,36560,36561,36562,36563,36564,36565,36566,36567,36568,36569,36570,36571,36572,36573,36574,36575,36576,36577,36578,36579,36580,36581,36582,36583,36584,36585,36586,36587,36588,36589,36590,36591,36592,36593,36594,36595,36596,36597,36598,36599,36600,36601,36602,36603,36604,36605,36606,36607,36608,36609,36610,36611,36612,36613,36614,36615,36616,36617,36618,36619,36620,36621,36622,36623,36624,36625,36626,36627,36628,36629,36630,36631,36632,36633,36634,36635,36636,36637,36638,36639,36640,36641,36642,36643,36644,36645,36646,36647,36648,36649,36650,36651,36652,36653,36654,36655,36656,36657,36658,36659,36660,36661,36662,36663,36664,36665,36666,36667,36668,36669,36670,36671,36672,36673,36674,36675,36676,36677,36678,36679,36680,36681,36682,36683,36684,36685,36686,36687,36688,36689,36690,36691,36692,36693,36694,36695,36696,36697,36698,36699,36700,36701,36702,36703,36704,36705,36706,36707,36708,36709,36710,36711,36712,36713,36714,36715,36716,36717,36718,36719,36720,36721,36722,36723,36724,36725,36726,36727,36728,36729,36730,36731,36732,36733,36734,36735,36736,36737,36738,36739,36740,36741,36742,36743,36744,36745,36746,36747,36748,36749,36750,36751,36752,36753,36754,36755,36756,36757,36758,36759,36760,36761,36762,36763,36764,36765,36766,36767,36768,36769,36770,36771,36772,36773,36774,36775,36776,36777,36778,36779,36780,36781,36782,36783,36784,36785,36786,36787,36788,36789,36790,36791,36792,36793,36794,36795,36796,36797,36798,36799,36800,36801,36802,36803,36804,36805,36806,36807,36808,36809,36810,36811,36812,36813,36814,36815,36816,36817,36818,36819,36820,36821,36822,36823,36824,36825,36826,36827,36828,36829,36830,36831,36832,36833,36834,36835,36836,36837,36838,36839,36840,36841,36842,36843,36844,36845,36846,36847,36848,36849,36850,36851,36852,36853,36854,36855,36856,36857,36858,36859,36860,36861,36862,36863,36864,36865,36866,36867,36868,36869,36870,36871,36872,36873,36874,36875,36876,36877,36878,36879,36880,36881,36882,36883,36884,36885,36886,36887,36888,36889,36890,36891,36892,36893,36894,36895,36896,36897,36898,36899,36900,36901,36902,36903,36904,36905,36906,36907,36908,36909,36910,36911,36912,36913,36914,36915,36916,36917,36918,36919,36920,36921,36922,36923,36924,36925,36926,36927,36928,36929,36930,36931,36932,36933,36934,36935,36936,36937,36938,36939,36940,36941,36942,36943,36944,36945,36946,36947,36948,36949,36950,36951,36952,36953,36954,36955,36956,36957,36958,36959,36960,36961,36962,36963,36964,36965,36966,36967,36968,36969,36970,36971,36972,36973,36974,36975,36976,36977,36978,36979,36980,36981,36982,36983,36984,36985,36986,36987,36988,36989,36990,36991,36992,36993,36994,36995,36996,36997,36998,36999,37000,37001,37002,37003,37004,37005,37006,37007,37008,37009,37010,37011,37012,37013,37014,37015,37016,37017,37018,37019,37020,37021,37022,37023,37024,37025,37026,37027,37028,37029,37030,37031,37032,37033,37034,37035,37036,37037,37038,37039,37040,37041,37042,37043,37044,37045,37046,37047,37048,37049,37050,37051,37052,37053,37054,37055,37056,37057,37058,37059,37060,37061,37062,37063,37064,37065,37066,37067,37068,37069,37070,37071,37072,37073,37074,37075,37076,37077,37078,37079,37080,37081,37082,37083,37084,37085,37086,37087,37088,37089,37090,37091,37092,37093,37094,37095,37096,37097,37098,37099,37100,37101,37102,37103,37104,37105,37106,37107,37108,37109,37110,37111,37112,37113,37114,37115,37116,37117,37118,37119,37120,37121,37122,37123,37124,37125,37126,37127,37128,37129,37130,37131,37132,37133,37134,37135,37136,37137,37138,37139,37140,37141,37142,37143,37144,37145,37146,37147,37148,37149,37150,37151,37152,37153,37154,37155,37156,37157,37158,37159,37160,37161,37162,37163,37164,37165,37166,37167,37168,37169,37170,37171,37172,37173,37174,37175,37176,37177,37178,37179,37180,37181,37182,37183,37184,37185,37186,37187,37188,37189,37190,37191,37192,37193,37194,37195,37196,37197,37198,37199,37200,37201,37202,37203,37204,37205,37206,37207,37208,37209,37210,37211,37212,37213,37214,37215,37216,37217,37218,37219,37220,37221,37222,37223,37224,37225,37226,37227,37228,37229,37230,37231,37232,37233,37234,37235,37236,37237,37238,37239,37240,37241,37242,37243,37244,37245,37246,37247,37248,37249,37250,37251,37252,37253,37254,37255,37256,37257,37258,37259,37260,37261,37262,37263,37264,37265,37266,37267,37268,37269,37270,37271,37272,37273,37274,37275,37276,37277,37278,37279,37280,37281,37282,37283,37284,37285,37286,37287,37288,37289,37290,37291,37292,37293,37294,37295,37296,37297,37298,37299,37300,37301,37302,37303,37304,37305,37306,37307,37308,37309,37310,37311,37312,37313,37314,37315,37316,37317,37318,37319,37320,37321,37322,37323,37324,37325,37326,37327,37328,37329,37330,37331,37332,37333,37334,37335,37336,37337,37338,37339,37340,37341,37342,37343,37344,37345,37346,37347,37348,37349,37350,37351,37352,37353,37354,37355,37356,37357,37358,37359,37360,37361,37362,37363,37364,37365,37366,37367,37368,37369,37370,37371,37372,37373,37374,37375,37376,37377,37378,37379,37380,37381,37382,37383,37384,37385,37386,37387,37388,37389,37390,37391,37392,37393,37394,37395,37396,37397,37398,37399,37400,37401,37402,37403,37404,37405,37406,37407,37408,37409,37410,37411,37412,37413,37414,37415,37416,37417,37418,37419,37420,37421,37422,37423,37424,37425,37426,37427,37428,37429,37430,37431,37432,37433,37434,37435,37436,37437,37438,37439,37440,37441,37442,37443,37444,37445,37446,37447,37448,37449,37450,37451,37452,37453,37454,37455,37456,37457,37458,37459,37460,37461,37462,37463,37464,37465,37466,37467,37468,37469,37470,37471,37472,37473,37474,37475,37476,37477,37478,37479,37480,37481,37482,37483,37484,37485,37486,37487,37488,37489,37490,37491,37492,37493,37494,37495,37496,37497,37498,37499,37500,37501,37502,37503,37504,37505,37506,37507,37508,37509,37510,37511,37512,37513,37514,37515,37516,37517,37518,37519,37520,37521,37522,37523,37524,37525,37526,37527,37528,37529,37530,37531,37532,37533,37534,37535,37536,37537,37538,37539,37540,37541,37542,37543,37544,37545,37546,37547,37548,37549,37550,37551,37552,37553,37554,37555,37556,37557,37558,37559,37560,37561,37562,37563,37564,37565,37566,37567,37568,37569,37570,37571,37572,37573,37574,37575,37576,37577,37578,37579,37580,37581,37582,37583,37584,37585,37586,37587,37588,37589,37590,37591,37592,37593,37594,37595,37596,37597,37598,37599,37600,37601,37602,37603,37604,37605,37606,37607,37608,37609,37610,37611,37612,37613,37614,37615,37616,37617,37618,37619,37620,37621,37622,37623,37624,37625,37626,37627,37628,37629,37630,37631,37632,37633,37634,37635,37636,37637,37638,37639,37640,37641,37642,37643,37644,37645,37646,37647,37648,37649,37650,37651,37652,37653,37654,37655,37656,37657,37658,37659,37660,37661,37662,37663,37664,37665,37666,37667,37668,37669,37670,37671,37672,37673,37674,37675,37676,37677,37678,37679,37680,37681,37682,37683,37684,37685,37686,37687,37688,37689,37690,37691,37692,37693,37694,37695,37696,37697,37698,37699,37700,37701,37702,37703,37704,37705,37706,37707,37708,37709,37710,37711,37712,37713,37714,37715,37716,37717,37718,37719,37720,37721,37722,37723,37724,37725,37726,37727,37728,37729,37730,37731,37732,37733,37734,37735,37736,37737,37738,37739,37740,37741,37742,37743,37744,37745,37746,37747,37748,37749,37750,37751,37752,37753,37754,37755,37756,37757,37758,37759,37760,37761,37762,37763,37764,37765,37766,37767,37768,37769,37770,37771,37772,37773,37774,37775,37776,37777,37778,37779,37780,37781,37782,37783,37784,37785,37786,37787,37788,37789,37790,37791,37792,37793,37794,37795,37796,37797,37798,37799,37800,37801,37802,37803,37804,37805,37806,37807,37808,37809,37810,37811,37812,37813,37814,37815,37816,37817,37818,37819,37820,37821,37822,37823,37824,37825,37826,37827,37828,37829,37830,37831,37832,37833,37834,37835,37836,37837,37838,37839,37840,37841,37842,37843,37844,37845,37846,37847,37848,37849,37850,37851,37852,37853,37854,37855,37856,37857,37858,37859,37860,37861,37862,37863,37864,37865,37866,37867,37868,37869,37870,37871,37872,37873,37874,37875,37876,37877,37878,37879,37880,37881,37882,37883,37884,37885,37886,37887,37888,37889,37890,37891,37892,37893,37894,37895,37896,37897,37898,37899,37900,37901,37902,37903,37904,37905,37906,37907,37908,37909,37910,37911,37912,37913,37914,37915,37916,37917,37918,37919,37920,37921,37922,37923,37924,37925,37926,37927,37928,37929,37930,37931,37932,37933,37934,37935,37936,37937,37938,37939,37940,37941,37942,37943,37944,37945,37946,37947,37948,37949,37950,37951,37952,37953,37954,37955,37956,37957,37958,37959,37960,37961,37962,37963,37964,37965,37966,37967,37968,37969,37970,37971,37972,37973,37974,37975,37976,37977,37978,37979,37980,37981,37982,37983,37984,37985,37986,37987,37988,37989,37990,37991,37992,37993,37994,37995,37996,37997,37998,37999,38000,38001,38002,38003,38004,38005,38006,38007,38008,38009,38010,38011,38012,38013,38014,38015,38016,38017,38018,38019,38020,38021,38022,38023,38024,38025,38026,38027,38028,38029,38030,38031,38032,38033,38034,38035,38036,38037,38038,38039,38040,38041,38042,38043,38044,38045,38046,38047,38048,38049,38050,38051,38052,38053,38054,38055,38056,38057,38058,38059,38060,38061,38062,38063,38064,38065,38066,38067,38068,38069,38070,38071,38072,38073,38074,38075,38076,38077,38078,38079,38080,38081,38082,38083,38084,38085,38086,38087,38088,38089,38090,38091,38092,38093,38094,38095,38096,38097,38098,38099,38100,38101,38102,38103,38104,38105,38106,38107,38108,38109,38110,38111,38112,38113,38114,38115,38116,38117,38118,38119,38120,38121,38122,38123,38124,38125,38126,38127,38128,38129,38130,38131,38132,38133,38134,38135,38136,38137,38138,38139,38140,38141,38142,38143,38144,38145,38146,38147,38148,38149,38150,38151,38152,38153,38154,38155,38156,38157,38158,38159,38160,38161,38162,38163,38164,38165,38166,38167,38168,38169,38170,38171,38172,38173,38174,38175,38176,38177,38178,38179,38180,38181,38182,38183,38184,38185,38186,38187,38188,38189,38190,38191,38192,38193,38194,38195,38196,38197,38198,38199,38200,38201,38202,38203,38204,38205,38206,38207,38208,38209,38210,38211,38212,38213,38214,38215,38216,38217,38218,38219,38220,38221,38222,38223,38224,38225,38226,38227,38228,38229,38230,38231,38232,38233,38234,38235,38236,38237,38238,38239,38240,38241,38242,38243,38244,38245,38246,38247,38248,38249,38250,38251,38252,38253,38254,38255,38256,38257,38258,38259,38260,38261,38262,38263,38264,38265,38266,38267,38268,38269,38270,38271,38272,38273,38274,38275,38276,38277,38278,38279,38280,38281,38282,38283,38284,38285,38286,38287,38288,38289,38290,38291,38292,38293,38294,38295,38296,38297,38298,38299,38300,38301,38302,38303,38304,38305,38306,38307,38308,38309,38310,38311,38312,38313,38314,38315,38316,38317,38318,38319,38320,38321,38322,38323,38324,38325,38326,38327,38328,38329,38330,38331,38332,38333,38334,38335,38336,38337,38338,38339,38340,38341,38342,38343,38344,38345,38346,38347,38348,38349,38350,38351,38352,38353,38354,38355,38356,38357,38358,38359,38360,38361,38362,38363,38364,38365,38366,38367,38368,38369,38370,38371,38372,38373,38374,38375,38376,38377,38378,38379,38380,38381,38382,38383,38384,38385,38386,38387,38388,38389,38390,38391,38392,38393,38394,38395,38396,38397,38398,38399,38400,38401,38402,38403,38404,38405,38406,38407,38408,38409,38410,38411,38412,38413,38414,38415,38416,38417,38418,38419,38420,38421,38422,38423,38424,38425,38426,38427,38428,38429,38430,38431,38432,38433,38434,38435,38436,38437,38438,38439,38440,38441,38442,38443,38444,38445,38446,38447,38448,38449,38450,38451,38452,38453,38454,38455,38456,38457,38458,38459,38460,38461,38462,38463,38464,38465,38466,38467,38468,38469,38470,38471,38472,38473,38474,38475,38476,38477,38478,38479,38480,38481,38482,38483,38484,38485,38486,38487,38488,38489,38490,38491,38492,38493,38494,38495,38496,38497,38498,38499,38500,38501,38502,38503,38504,38505,38506,38507,38508,38509,38510,38511,38512,38513,38514,38515,38516,38517,38518,38519,38520,38521,38522,38523,38524,38525,38526,38527,38528,38529,38530,38531,38532,38533,38534,38535,38536,38537,38538,38539,38540,38541,38542,38543,38544,38545,38546,38547,38548,38549,38550,38551,38552,38553,38554,38555,38556,38557,38558,38559,38560,38561,38562,38563,38564,38565,38566,38567,38568,38569,38570,38571,38572,38573,38574,38575,38576,38577,38578,38579,38580,38581,38582,38583,38584,38585,38586,38587,38588,38589,38590,38591,38592,38593,38594,38595,38596,38597,38598,38599,38600,38601,38602,38603,38604,38605,38606,38607,38608,38609,38610,38611,38612,38613,38614,38615,38616,38617,38618,38619,38620,38621,38622,38623,38624,38625,38626,38627,38628,38629,38630,38631,38632,38633,38634,38635,38636,38637,38638,38639,38640,38641,38642,38643,38644,38645,38646,38647,38648,38649,38650,38651,38652,38653,38654,38655,38656,38657,38658,38659,38660,38661,38662,38663,38664,38665,38666,38667,38668,38669,38670,38671,38672,38673,38674,38675,38676,38677,38678,38679,38680,38681,38682,38683,38684,38685,38686,38687,38688,38689,38690,38691,38692,38693,38694,38695,38696,38697,38698,38699,38700,38701,38702,38703,38704,38705,38706,38707,38708,38709,38710,38711,38712,38713,38714,38715,38716,38717,38718,38719,38720,38721,38722,38723,38724,38725,38726,38727,38728,38729,38730,38731,38732,38733,38734,38735,38736,38737,38738,38739,38740,38741,38742,38743,38744,38745,38746,38747,38748,38749,38750,38751,38752,38753,38754,38755,38756,38757,38758,38759,38760,38761,38762,38763,38764,38765,38766,38767,38768,38769,38770,38771,38772,38773,38774,38775,38776,38777,38778,38779,38780,38781,38782,38783,38784,38785,38786,38787,38788,38789,38790,38791,38792,38793,38794,38795,38796,38797,38798,38799,38800,38801,38802,38803,38804,38805,38806,38807,38808,38809,38810,38811,38812,38813,38814,38815,38816,38817,38818,38819,38820,38821,38822,38823,38824,38825,38826,38827,38828,38829,38830,38831,38832,38833,38834,38835,38836,38837,38838,38839,38840,38841,38842,38843,38844,38845,38846,38847,38848,38849,38850,38851,38852,38853,38854,38855,38856,38857,38858,38859,38860,38861,38862,38863,38864,38865,38866,38867,38868,38869,38870,38871,38872,38873,38874,38875,38876,38877,38878,38879,38880,38881,38882,38883,38884,38885,38886,38887,38888,38889,38890,38891,38892,38893,38894,38895,38896,38897,38898,38899,38900,38901,38902,38903,38904,38905,38906,38907,38908,38909,38910,38911,38912,38913,38914,38915,38916,38917,38918,38919,38920,38921,38922,38923,38924,38925,38926,38927,38928,38929,38930,38931,38932,38933,38934,38935,38936,38937,38938,38939,38940,38941,38942,38943,38944,38945,38946,38947,38948,38949,38950,38951,38952,38953,38954,38955,38956,38957,38958,38959,38960,38961,38962,38963,38964,38965,38966,38967,38968,38969,38970,38971,38972,38973,38974,38975,38976,38977,38978,38979,38980,38981,38982,38983,38984,38985,38986,38987,38988,38989,38990,38991,38992,38993,38994,38995,38996,38997,38998,38999,39000,39001,39002,39003,39004,39005,39006,39007,39008,39009,39010,39011,39012,39013,39014,39015,39016,39017,39018,39019,39020,39021,39022,39023,39024,39025,39026,39027,39028,39029,39030,39031,39032,39033,39034,39035,39036,39037,39038,39039,39040,39041,39042,39043,39044,39045,39046,39047,39048,39049,39050,39051,39052,39053,39054,39055,39056,39057,39058,39059,39060,39061,39062,39063,39064,39065,39066,39067,39068,39069,39070,39071,39072,39073,39074,39075,39076,39077,39078,39079,39080,39081,39082,39083,39084,39085,39086,39087,39088,39089,39090,39091,39092,39093,39094,39095,39096,39097,39098,39099,39100,39101,39102,39103,39104,39105,39106,39107,39108,39109,39110,39111,39112,39113,39114,39115,39116,39117,39118,39119,39120,39121,39122,39123,39124,39125,39126,39127,39128,39129,39130,39131,39132,39133,39134,39135,39136,39137,39138,39139,39140,39141,39142,39143,39144,39145,39146,39147,39148,39149,39150,39151,39152,39153,39154,39155,39156,39157,39158,39159,39160,39161,39162,39163,39164,39165,39166,39167,39168,39169,39170,39171,39172,39173,39174,39175,39176,39177,39178,39179,39180,39181,39182,39183,39184,39185,39186,39187,39188,39189,39190,39191,39192,39193,39194,39195,39196,39197,39198,39199,39200,39201,39202,39203,39204,39205,39206,39207,39208,39209,39210,39211,39212,39213,39214,39215,39216,39217,39218,39219,39220,39221,39222,39223,39224,39225,39226,39227,39228,39229,39230,39231,39232,39233,39234,39235,39236,39237,39238,39239,39240,39241,39242,39243,39244,39245,39246,39247,39248,39249,39250,39251,39252,39253,39254,39255,39256,39257,39258,39259,39260,39261,39262,39263,39264,39265,39266,39267,39268,39269,39270,39271,39272,39273,39274,39275,39276,39277,39278,39279,39280,39281,39282,39283,39284,39285,39286,39287,39288,39289,39290,39291,39292,39293,39294,39295,39296,39297,39298,39299,39300,39301,39302,39303,39304,39305,39306,39307,39308,39309,39310,39311,39312,39313,39314,39315,39316,39317,39318,39319,39320,39321,39322,39323,39324,39325,39326,39327,39328,39329,39330,39331,39332,39333,39334,39335,39336,39337,39338,39339,39340,39341,39342,39343,39344,39345,39346,39347,39348,39349,39350,39351,39352,39353,39354,39355,39356,39357,39358,39359,39360,39361,39362,39363,39364,39365,39366,39367,39368,39369,39370,39371,39372,39373,39374,39375,39376,39377,39378,39379,39380,39381,39382,39383,39384,39385,39386,39387,39388,39389,39390,39391,39392,39393,39394,39395,39396,39397,39398,39399,39400,39401,39402,39403,39404,39405,39406,39407,39408,39409,39410,39411,39412,39413,39414,39415,39416,39417,39418,39419,39420,39421,39422,39423,39424,39425,39426,39427,39428,39429,39430,39431,39432,39433,39434,39435,39436,39437,39438,39439,39440,39441,39442,39443,39444,39445,39446,39447,39448,39449,39450,39451,39452,39453,39454,39455,39456,39457,39458,39459,39460,39461,39462,39463,39464,39465,39466,39467,39468,39469,39470,39471,39472,39473,39474,39475,39476,39477,39478,39479,39480,39481,39482,39483,39484,39485,39486,39487,39488,39489,39490,39491,39492,39493,39494,39495,39496,39497,39498,39499,39500,39501,39502,39503,39504,39505,39506,39507,39508,39509,39510,39511,39512,39513,39514,39515,39516,39517,39518,39519,39520,39521,39522,39523,39524,39525,39526,39527,39528,39529,39530,39531,39532,39533,39534,39535,39536,39537,39538,39539,39540,39541,39542,39543,39544,39545,39546,39547,39548,39549,39550,39551,39552,39553,39554,39555,39556,39557,39558,39559,39560,39561,39562,39563,39564,39565,39566,39567,39568,39569,39570,39571,39572,39573,39574,39575,39576,39577,39578,39579,39580,39581,39582,39583,39584,39585,39586,39587,39588,39589,39590,39591,39592,39593,39594,39595,39596,39597,39598,39599,39600,39601,39602,39603,39604,39605,39606,39607,39608,39609,39610,39611,39612,39613,39614,39615,39616,39617,39618,39619,39620,39621,39622,39623,39624,39625,39626,39627,39628,39629,39630,39631,39632,39633,39634,39635,39636,39637,39638,39639,39640,39641,39642,39643,39644,39645,39646,39647,39648,39649,39650,39651,39652,39653,39654,39655,39656,39657,39658,39659,39660,39661,39662,39663,39664,39665,39666,39667,39668,39669,39670,39671,39672,39673,39674,39675,39676,39677,39678,39679,39680,39681,39682,39683,39684,39685,39686,39687,39688,39689,39690,39691,39692,39693,39694,39695,39696,39697,39698,39699,39700,39701,39702,39703,39704,39705,39706,39707,39708,39709,39710,39711,39712,39713,39714,39715,39716,39717,39718,39719,39720,39721,39722,39723,39724,39725,39726,39727,39728,39729,39730,39731,39732,39733,39734,39735,39736,39737,39738,39739,39740,39741,39742,39743,39744,39745,39746,39747,39748,39749,39750,39751,39752,39753,39754,39755,39756,39757,39758,39759,39760,39761,39762,39763,39764,39765,39766,39767,39768,39769,39770,39771,39772,39773,39774,39775,39776,39777,39778,39779,39780,39781,39782,39783,39784,39785,39786,39787,39788,39789,39790,39791,39792,39793,39794,39795,39796,39797,39798,39799,39800,39801,39802,39803,39804,39805,39806,39807,39808,39809,39810,39811,39812,39813,39814,39815,39816,39817,39818,39819,39820,39821,39822,39823,39824,39825,39826,39827,39828,39829,39830,39831,39832,39833,39834,39835,39836,39837,39838,39839,39840,39841,39842,39843,39844,39845,39846,39847,39848,39849,39850,39851,39852,39853,39854,39855,39856,39857,39858,39859,39860,39861,39862,39863,39864,39865,39866,39867,39868,39869,39870,39871,39872,39873,39874,39875,39876,39877,39878,39879,39880,39881,39882,39883,39884,39885,39886,39887,39888,39889,39890,39891,39892,39893,39894,39895,39896,39897,39898,39899,39900,39901,39902,39903,39904,39905,39906,39907,39908,39909,39910,39911,39912,39913,39914,39915,39916,39917,39918,39919,39920,39921,39922,39923,39924,39925,39926,39927,39928,39929,39930,39931,39932,39933,39934,39935,39936,39937,39938,39939,39940,39941,39942,39943,39944,39945,39946,39947,39948,39949,39950,39951,39952,39953,39954,39955,39956,39957,39958,39959,39960,39961,39962,39963,39964,39965,39966,39967,39968,39969,39970,39971,39972,39973,39974,39975,39976,39977,39978,39979,39980,39981,39982,39983,39984,39985,39986,39987,39988,39989,39990,39991,39992,39993,39994,39995,39996,39997,39998,39999,40000,40001,40002,40003,40004,40005,40006,40007,40008,40009,40010,40011,40012,40013,40014,40015,40016,40017,40018,40019,40020,40021,40022,40023,40024,40025,40026,40027,40028,40029,40030,40031,40032,40033,40034,40035,40036,40037,40038,40039,40040,40041,40042,40043,40044,40045,40046,40047,40048,40049,40050,40051,40052,40053,40054,40055,40056,40057,40058,40059,40060,40061,40062,40063,40064,40065,40066,40067,40068,40069,40070,40071,40072,40073,40074,40075,40076,40077,40078,40079,40080,40081,40082,40083,40084,40085,40086,40087,40088,40089,40090,40091,40092,40093,40094,40095,40096,40097,40098,40099,40100,40101,40102,40103,40104,40105,40106,40107,40108,40109,40110,40111,40112,40113,40114,40115,40116,40117,40118,40119,40120,40121,40122,40123,40124,40125,40126,40127,40128,40129,40130,40131,40132,40133,40134,40135,40136,40137,40138,40139,40140,40141,40142,40143,40144,40145,40146,40147,40148,40149,40150,40151,40152,40153,40154,40155,40156,40157,40158,40159,40160,40161,40162,40163,40164,40165,40166,40167,40168,40169,40170,40171,40172,40173,40174,40175,40176,40177,40178,40179,40180,40181,40182,40183,40184,40185,40186,40187,40188,40189,40190,40191,40192,40193,40194,40195,40196,40197,40198,40199,40200,40201,40202,40203,40204,40205,40206,40207,40208,40209,40210,40211,40212,40213,40214,40215,40216,40217,40218,40219,40220,40221,40222,40223,40224,40225,40226,40227,40228,40229,40230,40231,40232,40233,40234,40235,40236,40237,40238,40239,40240,40241,40242,40243,40244,40245,40246,40247,40248,40249,40250,40251,40252,40253,40254,40255,40256,40257,40258,40259,40260,40261,40262,40263,40264,40265,40266,40267,40268,40269,40270,40271,40272,40273,40274,40275,40276,40277,40278,40279,40280,40281,40282,40283,40284,40285,40286,40287,40288,40289,40290,40291,40292,40293,40294,40295,40296,40297,40298,40299,40300,40301,40302,40303,40304,40305,40306,40307,40308,40309,40310,40311,40312,40313,40314,40315,40316,40317,40318,40319,40320,40321,40322,40323,40324,40325,40326,40327,40328,40329,40330,40331,40332,40333,40334,40335,40336,40337,40338,40339,40340,40341,40342,40343,40344,40345,40346,40347,40348,40349,40350,40351,40352,40353,40354,40355,40356,40357,40358,40359,40360,40361,40362,40363,40364,40365,40366,40367,40368,40369,40370,40371,40372,40373,40374,40375,40376,40377,40378,40379,40380,40381,40382,40383,40384,40385,40386,40387,40388,40389,40390,40391,40392,40393,40394,40395,40396,40397,40398,40399,40400,40401,40402,40403,40404,40405,40406,40407,40408,40409,40410,40411,40412,40413,40414,40415,40416,40417,40418,40419,40420,40421,40422,40423,40424,40425,40426,40427,40428,40429,40430,40431,40432,40433,40434,40435,40436,40437,40438,40439,40440,40441,40442,40443,40444,40445,40446,40447,40448,40449,40450,40451,40452,40453,40454,40455,40456,40457,40458,40459,40460,40461,40462,40463,40464,40465,40466,40467,40468,40469,40470,40471,40472,40473,40474,40475,40476,40477,40478,40479,40480,40481,40482,40483,40484,40485,40486,40487,40488,40489,40490,40491,40492,40493,40494,40495,40496,40497,40498,40499,40500,40501,40502,40503,40504,40505,40506,40507,40508,40509,40510,40511,40512,40513,40514,40515,40516,40517,40518,40519,40520,40521,40522,40523,40524,40525,40526,40527,40528,40529,40530,40531,40532,40533,40534,40535,40536,40537,40538,40539,40540,40541,40542,40543,40544,40545,40546,40547,40548,40549,40550,40551,40552,40553,40554,40555,40556,40557,40558,40559,40560,40561,40562,40563,40564,40565,40566,40567,40568,40569,40570,40571,40572,40573,40574,40575,40576,40577,40578,40579,40580,40581,40582,40583,40584,40585,40586,40587,40588,40589,40590,40591,40592,40593,40594,40595,40596,40597,40598,40599,40600,40601,40602,40603,40604,40605,40606,40607,40608,40609,40610,40611,40612,40613,40614,40615,40616,40617,40618,40619,40620,40621,40622,40623,40624,40625,40626,40627,40628,40629,40630,40631,40632,40633,40634,40635,40636,40637,40638,40639,40640,40641,40642,40643,40644,40645,40646,40647,40648,40649,40650,40651,40652,40653,40654,40655,40656,40657,40658,40659,40660,40661,40662,40663,40664,40665,40666,40667,40668,40669,40670,40671,40672,40673,40674,40675,40676,40677,40678,40679,40680,40681,40682,40683,40684,40685,40686,40687,40688,40689,40690,40691,40692,40693,40694,40695,40696,40697,40698,40699,40700,40701,40702,40703,40704,40705,40706,40707,40708,40709,40710,40711,40712,40713,40714,40715,40716,40717,40718,40719,40720,40721,40722,40723,40724,40725,40726,40727,40728,40729,40730,40731,40732,40733,40734,40735,40736,40737,40738,40739,40740,40741,40742,40743,40744,40745,40746,40747,40748,40749,40750,40751,40752,40753,40754,40755,40756,40757,40758,40759,40760,40761,40762,40763,40764,40765,40766,40767,40768,40769,40770,40771,40772,40773,40774,40775,40776,40777,40778,40779,40780,40781,40782,40783,40784,40785,40786,40787,40788,40789,40790,40791,40792,40793,40794,40795,40796,40797,40798,40799,40800,40801,40802,40803,40804,40805,40806,40807,40808,40809,40810,40811,40812,40813,40814,40815,40816,40817,40818,40819,40820,40821,40822,40823,40824,40825,40826,40827,40828,40829,40830,40831,40832,40833,40834,40835,40836,40837,40838,40839,40840,40841,40842,40843,40844,40845,40846,40847,40848,40849,40850,40851,40852,40853,40854,40855,40856,40857,40858,40859,40860,40861,40862,40863,40864,40865,40866,40867,40868,40869,40870,40871,40872,40873,40874,40875,40876,40877,40878,40879,40880,40881,40882,40883,40884,40885,40886,40887,40888,40889,40890,40891,40892,40893,40894,40895,40896,40897,40898,40899,40900,40901,40902,40903,40904,40905,40906,40907,40908,40909,40910,40911,40912,40913,40914,40915,40916,40917,40918,40919,40920,40921,40922,40923,40924,40925,40926,40927,40928,40929,40930,40931,40932,40933,40934,40935,40936,40937,40938,40939,40940,40941,40942,40943,40944,40945,40946,40947,40948,40949,40950,40951,40952,40953,40954,40955,40956,40957,40958,40959,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,74,75,85,110,105,102,105,101,100,73,100,101,111,103,114,97,112,104,115,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,74,75,85,110,105,102,105,101,100,73,100,101,111,103,114,97,112,104,115,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00285'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,40960,42127,44,40960,40961,40962,40963,40964,40965,40966,40967,40968,40969,40970,40971,40972,40973,40974,40975,40976,40977,40978,40979,40980,40981,40982,40983,40984,40985,40986,40987,40988,40989,40990,40991,40992,40993,40994,40995,40996,40997,40998,40999,41000,41001,41002,41003,41004,41005,41006,41007,41008,41009,41010,41011,41012,41013,41014,41015,41016,41017,41018,41019,41020,41021,41022,41023,41024,41025,41026,41027,41028,41029,41030,41031,41032,41033,41034,41035,41036,41037,41038,41039,41040,41041,41042,41043,41044,41045,41046,41047,41048,41049,41050,41051,41052,41053,41054,41055,41056,41057,41058,41059,41060,41061,41062,41063,41064,41065,41066,41067,41068,41069,41070,41071,41072,41073,41074,41075,41076,41077,41078,41079,41080,41081,41082,41083,41084,41085,41086,41087,41088,41089,41090,41091,41092,41093,41094,41095,41096,41097,41098,41099,41100,41101,41102,41103,41104,41105,41106,41107,41108,41109,41110,41111,41112,41113,41114,41115,41116,41117,41118,41119,41120,41121,41122,41123,41124,41125,41126,41127,41128,41129,41130,41131,41132,41133,41134,41135,41136,41137,41138,41139,41140,41141,41142,41143,41144,41145,41146,41147,41148,41149,41150,41151,41152,41153,41154,41155,41156,41157,41158,41159,41160,41161,41162,41163,41164,41165,41166,41167,41168,41169,41170,41171,41172,41173,41174,41175,41176,41177,41178,41179,41180,41181,41182,41183,41184,41185,41186,41187,41188,41189,41190,41191,41192,41193,41194,41195,41196,41197,41198,41199,41200,41201,41202,41203,41204,41205,41206,41207,41208,41209,41210,41211,41212,41213,41214,41215,41216,41217,41218,41219,41220,41221,41222,41223,41224,41225,41226,41227,41228,41229,41230,41231,41232,41233,41234,41235,41236,41237,41238,41239,41240,41241,41242,41243,41244,41245,41246,41247,41248,41249,41250,41251,41252,41253,41254,41255,41256,41257,41258,41259,41260,41261,41262,41263,41264,41265,41266,41267,41268,41269,41270,41271,41272,41273,41274,41275,41276,41277,41278,41279,41280,41281,41282,41283,41284,41285,41286,41287,41288,41289,41290,41291,41292,41293,41294,41295,41296,41297,41298,41299,41300,41301,41302,41303,41304,41305,41306,41307,41308,41309,41310,41311,41312,41313,41314,41315,41316,41317,41318,41319,41320,41321,41322,41323,41324,41325,41326,41327,41328,41329,41330,41331,41332,41333,41334,41335,41336,41337,41338,41339,41340,41341,41342,41343,41344,41345,41346,41347,41348,41349,41350,41351,41352,41353,41354,41355,41356,41357,41358,41359,41360,41361,41362,41363,41364,41365,41366,41367,41368,41369,41370,41371,41372,41373,41374,41375,41376,41377,41378,41379,41380,41381,41382,41383,41384,41385,41386,41387,41388,41389,41390,41391,41392,41393,41394,41395,41396,41397,41398,41399,41400,41401,41402,41403,41404,41405,41406,41407,41408,41409,41410,41411,41412,41413,41414,41415,41416,41417,41418,41419,41420,41421,41422,41423,41424,41425,41426,41427,41428,41429,41430,41431,41432,41433,41434,41435,41436,41437,41438,41439,41440,41441,41442,41443,41444,41445,41446,41447,41448,41449,41450,41451,41452,41453,41454,41455,41456,41457,41458,41459,41460,41461,41462,41463,41464,41465,41466,41467,41468,41469,41470,41471,41472,41473,41474,41475,41476,41477,41478,41479,41480,41481,41482,41483,41484,41485,41486,41487,41488,41489,41490,41491,41492,41493,41494,41495,41496,41497,41498,41499,41500,41501,41502,41503,41504,41505,41506,41507,41508,41509,41510,41511,41512,41513,41514,41515,41516,41517,41518,41519,41520,41521,41522,41523,41524,41525,41526,41527,41528,41529,41530,41531,41532,41533,41534,41535,41536,41537,41538,41539,41540,41541,41542,41543,41544,41545,41546,41547,41548,41549,41550,41551,41552,41553,41554,41555,41556,41557,41558,41559,41560,41561,41562,41563,41564,41565,41566,41567,41568,41569,41570,41571,41572,41573,41574,41575,41576,41577,41578,41579,41580,41581,41582,41583,41584,41585,41586,41587,41588,41589,41590,41591,41592,41593,41594,41595,41596,41597,41598,41599,41600,41601,41602,41603,41604,41605,41606,41607,41608,41609,41610,41611,41612,41613,41614,41615,41616,41617,41618,41619,41620,41621,41622,41623,41624,41625,41626,41627,41628,41629,41630,41631,41632,41633,41634,41635,41636,41637,41638,41639,41640,41641,41642,41643,41644,41645,41646,41647,41648,41649,41650,41651,41652,41653,41654,41655,41656,41657,41658,41659,41660,41661,41662,41663,41664,41665,41666,41667,41668,41669,41670,41671,41672,41673,41674,41675,41676,41677,41678,41679,41680,41681,41682,41683,41684,41685,41686,41687,41688,41689,41690,41691,41692,41693,41694,41695,41696,41697,41698,41699,41700,41701,41702,41703,41704,41705,41706,41707,41708,41709,41710,41711,41712,41713,41714,41715,41716,41717,41718,41719,41720,41721,41722,41723,41724,41725,41726,41727,41728,41729,41730,41731,41732,41733,41734,41735,41736,41737,41738,41739,41740,41741,41742,41743,41744,41745,41746,41747,41748,41749,41750,41751,41752,41753,41754,41755,41756,41757,41758,41759,41760,41761,41762,41763,41764,41765,41766,41767,41768,41769,41770,41771,41772,41773,41774,41775,41776,41777,41778,41779,41780,41781,41782,41783,41784,41785,41786,41787,41788,41789,41790,41791,41792,41793,41794,41795,41796,41797,41798,41799,41800,41801,41802,41803,41804,41805,41806,41807,41808,41809,41810,41811,41812,41813,41814,41815,41816,41817,41818,41819,41820,41821,41822,41823,41824,41825,41826,41827,41828,41829,41830,41831,41832,41833,41834,41835,41836,41837,41838,41839,41840,41841,41842,41843,41844,41845,41846,41847,41848,41849,41850,41851,41852,41853,41854,41855,41856,41857,41858,41859,41860,41861,41862,41863,41864,41865,41866,41867,41868,41869,41870,41871,41872,41873,41874,41875,41876,41877,41878,41879,41880,41881,41882,41883,41884,41885,41886,41887,41888,41889,41890,41891,41892,41893,41894,41895,41896,41897,41898,41899,41900,41901,41902,41903,41904,41905,41906,41907,41908,41909,41910,41911,41912,41913,41914,41915,41916,41917,41918,41919,41920,41921,41922,41923,41924,41925,41926,41927,41928,41929,41930,41931,41932,41933,41934,41935,41936,41937,41938,41939,41940,41941,41942,41943,41944,41945,41946,41947,41948,41949,41950,41951,41952,41953,41954,41955,41956,41957,41958,41959,41960,41961,41962,41963,41964,41965,41966,41967,41968,41969,41970,41971,41972,41973,41974,41975,41976,41977,41978,41979,41980,41981,41982,41983,41984,41985,41986,41987,41988,41989,41990,41991,41992,41993,41994,41995,41996,41997,41998,41999,42000,42001,42002,42003,42004,42005,42006,42007,42008,42009,42010,42011,42012,42013,42014,42015,42016,42017,42018,42019,42020,42021,42022,42023,42024,42025,42026,42027,42028,42029,42030,42031,42032,42033,42034,42035,42036,42037,42038,42039,42040,42041,42042,42043,42044,42045,42046,42047,42048,42049,42050,42051,42052,42053,42054,42055,42056,42057,42058,42059,42060,42061,42062,42063,42064,42065,42066,42067,42068,42069,42070,42071,42072,42073,42074,42075,42076,42077,42078,42079,42080,42081,42082,42083,42084,42085,42086,42087,42088,42089,42090,42091,42092,42093,42094,42095,42096,42097,42098,42099,42100,42101,42102,42103,42104,42105,42106,42107,42108,42109,42110,42111,42112,42113,42114,42115,42116,42117,42118,42119,42120,42121,42122,42123,42124,42125,42126,42127,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,89,105,83,121,108,108,97,98,108,101,115,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,89,105,83,121,108,108,97,98,108,101,115,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00286'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,42128,42191,44,42128,42129,42130,42131,42132,42133,42134,42135,42136,42137,42138,42139,42140,42141,42142,42143,42144,42145,42146,42147,42148,42149,42150,42151,42152,42153,42154,42155,42156,42157,42158,42159,42160,42161,42162,42163,42164,42165,42166,42167,42168,42169,42170,42171,42172,42173,42174,42175,42176,42177,42178,42179,42180,42181,42182,42183,42184,42185,42186,42187,42188,42189,42190,42191,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,89,105,82,97,100,105,99,97,108,115,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,89,105,82,97,100,105,99,97,108,115,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00287'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,44032,55203,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,72,97,110,103,117,108,83,121,108,108,97,98,108,101,115,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,72,97,110,103,117,108,83,121,108,108,97,98,108,101,115,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00288'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,57344,63743,44,983040,1048573,44,1048576,1114109,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,80,114,105,118,97,116,101,85,115,101,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,80,114,105,118,97,116,101,85,115,101,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00289'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,63744,64255,44,63744,63745,63746,63747,63748,63749,63750,63751,63752,63753,63754,63755,63756,63757,63758,63759,63760,63761,63762,63763,63764,63765,63766,63767,63768,63769,63770,63771,63772,63773,63774,63775,63776,63777,63778,63779,63780,63781,63782,63783,63784,63785,63786,63787,63788,63789,63790,63791,63792,63793,63794,63795,63796,63797,63798,63799,63800,63801,63802,63803,63804,63805,63806,63807,63808,63809,63810,63811,63812,63813,63814,63815,63816,63817,63818,63819,63820,63821,63822,63823,63824,63825,63826,63827,63828,63829,63830,63831,63832,63833,63834,63835,63836,63837,63838,63839,63840,63841,63842,63843,63844,63845,63846,63847,63848,63849,63850,63851,63852,63853,63854,63855,63856,63857,63858,63859,63860,63861,63862,63863,63864,63865,63866,63867,63868,63869,63870,63871,63872,63873,63874,63875,63876,63877,63878,63879,63880,63881,63882,63883,63884,63885,63886,63887,63888,63889,63890,63891,63892,63893,63894,63895,63896,63897,63898,63899,63900,63901,63902,63903,63904,63905,63906,63907,63908,63909,63910,63911,63912,63913,63914,63915,63916,63917,63918,63919,63920,63921,63922,63923,63924,63925,63926,63927,63928,63929,63930,63931,63932,63933,63934,63935,63936,63937,63938,63939,63940,63941,63942,63943,63944,63945,63946,63947,63948,63949,63950,63951,63952,63953,63954,63955,63956,63957,63958,63959,63960,63961,63962,63963,63964,63965,63966,63967,63968,63969,63970,63971,63972,63973,63974,63975,63976,63977,63978,63979,63980,63981,63982,63983,63984,63985,63986,63987,63988,63989,63990,63991,63992,63993,63994,63995,63996,63997,63998,63999,64000,64001,64002,64003,64004,64005,64006,64007,64008,64009,64010,64011,64012,64013,64014,64015,64016,64017,64018,64019,64020,64021,64022,64023,64024,64025,64026,64027,64028,64029,64030,64031,64032,64033,64034,64035,64036,64037,64038,64039,64040,64041,64042,64043,64044,64045,64046,64047,64048,64049,64050,64051,64052,64053,64054,64055,64056,64057,64058,64059,64060,64061,64062,64063,64064,64065,64066,64067,64068,64069,64070,64071,64072,64073,64074,64075,64076,64077,64078,64079,64080,64081,64082,64083,64084,64085,64086,64087,64088,64089,64090,64091,64092,64093,64094,64095,64096,64097,64098,64099,64100,64101,64102,64103,64104,64105,64106,64107,64108,64109,64110,64111,64112,64113,64114,64115,64116,64117,64118,64119,64120,64121,64122,64123,64124,64125,64126,64127,64128,64129,64130,64131,64132,64133,64134,64135,64136,64137,64138,64139,64140,64141,64142,64143,64144,64145,64146,64147,64148,64149,64150,64151,64152,64153,64154,64155,64156,64157,64158,64159,64160,64161,64162,64163,64164,64165,64166,64167,64168,64169,64170,64171,64172,64173,64174,64175,64176,64177,64178,64179,64180,64181,64182,64183,64184,64185,64186,64187,64188,64189,64190,64191,64192,64193,64194,64195,64196,64197,64198,64199,64200,64201,64202,64203,64204,64205,64206,64207,64208,64209,64210,64211,64212,64213,64214,64215,64216,64217,64218,64219,64220,64221,64222,64223,64224,64225,64226,64227,64228,64229,64230,64231,64232,64233,64234,64235,64236,64237,64238,64239,64240,64241,64242,64243,64244,64245,64246,64247,64248,64249,64250,64251,64252,64253,64254,64255,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,74,75,67,111,109,112,97,116,105,98,105,108,105,116,121,73,100,101,111,103,114,97,112,104,115,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,74,75,67,111,109,112,97,116,105,98,105,108,105,116,121,73,100,101,111,103,114,97,112,104,115,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00290'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,64256,64335,44,64256,64257,64258,64259,64260,64261,64262,64263,64264,64265,64266,64267,64268,64269,64270,64271,64272,64273,64274,64275,64276,64277,64278,64279,64280,64281,64282,64283,64284,64285,64286,64287,64288,64289,64290,64291,64292,64293,64294,64295,64296,64297,64298,64299,64300,64301,64302,64303,64304,64305,64306,64307,64308,64309,64310,64311,64312,64313,64314,64315,64316,64317,64318,64319,64320,64321,64322,64323,64324,64325,64326,64327,64328,64329,64330,64331,64332,64333,64334,64335,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,65,108,112,104,97,98,101,116,105,99,80,114,101,115,101,110,116,97,116,105,111,110,70,111,114,109,115,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,65,108,112,104,97,98,101,116,105,99,80,114,101,115,101,110,116,97,116,105,111,110,70,111,114,109,115,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00291'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,64336,65023,44,64336,64337,64338,64339,64340,64341,64342,64343,64344,64345,64346,64347,64348,64349,64350,64351,64352,64353,64354,64355,64356,64357,64358,64359,64360,64361,64362,64363,64364,64365,64366,64367,64368,64369,64370,64371,64372,64373,64374,64375,64376,64377,64378,64379,64380,64381,64382,64383,64384,64385,64386,64387,64388,64389,64390,64391,64392,64393,64394,64395,64396,64397,64398,64399,64400,64401,64402,64403,64404,64405,64406,64407,64408,64409,64410,64411,64412,64413,64414,64415,64416,64417,64418,64419,64420,64421,64422,64423,64424,64425,64426,64427,64428,64429,64430,64431,64432,64433,64434,64435,64436,64437,64438,64439,64440,64441,64442,64443,64444,64445,64446,64447,64448,64449,64450,64451,64452,64453,64454,64455,64456,64457,64458,64459,64460,64461,64462,64463,64464,64465,64466,64467,64468,64469,64470,64471,64472,64473,64474,64475,64476,64477,64478,64479,64480,64481,64482,64483,64484,64485,64486,64487,64488,64489,64490,64491,64492,64493,64494,64495,64496,64497,64498,64499,64500,64501,64502,64503,64504,64505,64506,64507,64508,64509,64510,64511,64512,64513,64514,64515,64516,64517,64518,64519,64520,64521,64522,64523,64524,64525,64526,64527,64528,64529,64530,64531,64532,64533,64534,64535,64536,64537,64538,64539,64540,64541,64542,64543,64544,64545,64546,64547,64548,64549,64550,64551,64552,64553,64554,64555,64556,64557,64558,64559,64560,64561,64562,64563,64564,64565,64566,64567,64568,64569,64570,64571,64572,64573,64574,64575,64576,64577,64578,64579,64580,64581,64582,64583,64584,64585,64586,64587,64588,64589,64590,64591,64592,64593,64594,64595,64596,64597,64598,64599,64600,64601,64602,64603,64604,64605,64606,64607,64608,64609,64610,64611,64612,64613,64614,64615,64616,64617,64618,64619,64620,64621,64622,64623,64624,64625,64626,64627,64628,64629,64630,64631,64632,64633,64634,64635,64636,64637,64638,64639,64640,64641,64642,64643,64644,64645,64646,64647,64648,64649,64650,64651,64652,64653,64654,64655,64656,64657,64658,64659,64660,64661,64662,64663,64664,64665,64666,64667,64668,64669,64670,64671,64672,64673,64674,64675,64676,64677,64678,64679,64680,64681,64682,64683,64684,64685,64686,64687,64688,64689,64690,64691,64692,64693,64694,64695,64696,64697,64698,64699,64700,64701,64702,64703,64704,64705,64706,64707,64708,64709,64710,64711,64712,64713,64714,64715,64716,64717,64718,64719,64720,64721,64722,64723,64724,64725,64726,64727,64728,64729,64730,64731,64732,64733,64734,64735,64736,64737,64738,64739,64740,64741,64742,64743,64744,64745,64746,64747,64748,64749,64750,64751,64752,64753,64754,64755,64756,64757,64758,64759,64760,64761,64762,64763,64764,64765,64766,64767,64768,64769,64770,64771,64772,64773,64774,64775,64776,64777,64778,64779,64780,64781,64782,64783,64784,64785,64786,64787,64788,64789,64790,64791,64792,64793,64794,64795,64796,64797,64798,64799,64800,64801,64802,64803,64804,64805,64806,64807,64808,64809,64810,64811,64812,64813,64814,64815,64816,64817,64818,64819,64820,64821,64822,64823,64824,64825,64826,64827,64828,64829,64830,64831,64832,64833,64834,64835,64836,64837,64838,64839,64840,64841,64842,64843,64844,64845,64846,64847,64848,64849,64850,64851,64852,64853,64854,64855,64856,64857,64858,64859,64860,64861,64862,64863,64864,64865,64866,64867,64868,64869,64870,64871,64872,64873,64874,64875,64876,64877,64878,64879,64880,64881,64882,64883,64884,64885,64886,64887,64888,64889,64890,64891,64892,64893,64894,64895,64896,64897,64898,64899,64900,64901,64902,64903,64904,64905,64906,64907,64908,64909,64910,64911,64912,64913,64914,64915,64916,64917,64918,64919,64920,64921,64922,64923,64924,64925,64926,64927,64928,64929,64930,64931,64932,64933,64934,64935,64936,64937,64938,64939,64940,64941,64942,64943,64944,64945,64946,64947,64948,64949,64950,64951,64952,64953,64954,64955,64956,64957,64958,64959,64960,64961,64962,64963,64964,64965,64966,64967,64968,64969,64970,64971,64972,64973,64974,64975,64976,64977,64978,64979,64980,64981,64982,64983,64984,64985,64986,64987,64988,64989,64990,64991,64992,64993,64994,64995,64996,64997,64998,64999,65000,65001,65002,65003,65004,65005,65006,65007,65008,65009,65010,65011,65012,65013,65014,65015,65016,65017,65018,65019,65020,65021,65022,65023,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,65,114,97,98,105,99,80,114,101,115,101,110,116,97,116,105,111,110,70,111,114,109,115,45,65,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,65,114,97,98,105,99,80,114,101,115,101,110,116,97,116,105,111,110,70,111,114,109,115,45,65,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00292'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,65056,65071,44,65056,65057,65058,65059,65060,65061,65062,65063,65064,65065,65066,65067,65068,65069,65070,65071,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,111,109,98,105,110,105,110,103,72,97,108,102,77,97,114,107,115,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,111,109,98,105,110,105,110,103,72,97,108,102,77,97,114,107,115,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00293'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,65072,65103,44,65072,65073,65074,65075,65076,65077,65078,65079,65080,65081,65082,65083,65084,65085,65086,65087,65088,65089,65090,65091,65092,65093,65094,65095,65096,65097,65098,65099,65100,65101,65102,65103,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,74,75,67,111,109,112,97,116,105,98,105,108,105,116,121,70,111,114,109,115,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,74,75,67,111,109,112,97,116,105,98,105,108,105,116,121,70,111,114,109,115,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00294'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,65104,65135,44,65104,65105,65106,65107,65108,65109,65110,65111,65112,65113,65114,65115,65116,65117,65118,65119,65120,65121,65122,65123,65124,65125,65126,65127,65128,65129,65130,65131,65132,65133,65134,65135,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,83,109,97,108,108,70,111,114,109,86,97,114,105,97,110,116,115,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,83,109,97,108,108,70,111,114,109,86,97,114,105,97,110,116,115,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00295'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,65136,65278,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,65,114,97,98,105,99,80,114,101,115,101,110,116,97,116,105,111,110,70,111,114,109,115,45,66,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,65,114,97,98,105,99,80,114,101,115,101,110,116,97,116,105,111,110,70,111,114,109,115,45,66,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00296'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,65280,65519,44,65280,65281,65282,65283,65284,65285,65286,65287,65288,65289,65290,65291,65292,65293,65294,65295,65296,65297,65298,65299,65300,65301,65302,65303,65304,65305,65306,65307,65308,65309,65310,65311,65312,65313,65314,65315,65316,65317,65318,65319,65320,65321,65322,65323,65324,65325,65326,65327,65328,65329,65330,65331,65332,65333,65334,65335,65336,65337,65338,65339,65340,65341,65342,65343,65344,65345,65346,65347,65348,65349,65350,65351,65352,65353,65354,65355,65356,65357,65358,65359,65360,65361,65362,65363,65364,65365,65366,65367,65368,65369,65370,65371,65372,65373,65374,65375,65376,65377,65378,65379,65380,65381,65382,65383,65384,65385,65386,65387,65388,65389,65390,65391,65392,65393,65394,65395,65396,65397,65398,65399,65400,65401,65402,65403,65404,65405,65406,65407,65408,65409,65410,65411,65412,65413,65414,65415,65416,65417,65418,65419,65420,65421,65422,65423,65424,65425,65426,65427,65428,65429,65430,65431,65432,65433,65434,65435,65436,65437,65438,65439,65440,65441,65442,65443,65444,65445,65446,65447,65448,65449,65450,65451,65452,65453,65454,65455,65456,65457,65458,65459,65460,65461,65462,65463,65464,65465,65466,65467,65468,65469,65470,65471,65472,65473,65474,65475,65476,65477,65478,65479,65480,65481,65482,65483,65484,65485,65486,65487,65488,65489,65490,65491,65492,65493,65494,65495,65496,65497,65498,65499,65500,65501,65502,65503,65504,65505,65506,65507,65508,65509,65510,65511,65512,65513,65514,65515,65516,65517,65518,65519,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,72,97,108,102,119,105,100,116,104,97,110,100,70,117,108,108,119,105,100,116,104,70,111,114,109,115,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,72,97,108,102,119,105,100,116,104,97,110,100,70,117,108,108,119,105,100,116,104,70,111,114,109,115,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00297'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,65520,65533,44,65520,65521,65522,65523,65524,65525,65526,65527,65528,65529,65530,65531,65532,65533,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,83,112,101,99,105,97,108,115,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,83,112,101,99,105,97,108,115,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00298'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsBasicLatin}?)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsBasicLatin}?)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00299'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,76,97,116,105,110,45,49,83,117,112,112,108,101,109,101,110,116,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,256,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,76,97,116,105,110,45,49,83,117,112,112,108,101,109,101,110,116,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00300'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,76,97,116,105,110,69,120,116,101,110,100,101,100,45,65,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,384,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,76,97,116,105,110,69,120,116,101,110,100,101,100,45,65,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00301'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,76,97,116,105,110,69,120,116,101,110,100,101,100,45,66,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,592,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,76,97,116,105,110,69,120,116,101,110,100,101,100,45,66,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00302'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,73,80,65,69,120,116,101,110,115,105,111,110,115,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,688,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,73,80,65,69,120,116,101,110,115,105,111,110,115,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00303'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,83,112,97,99,105,110,103,77,111,100,105,102,105,101,114,76,101,116,116,101,114,115,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,768,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,83,112,97,99,105,110,103,77,111,100,105,102,105,101,114,76,101,116,116,101,114,115,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00304'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,121,114,105,108,108,105,99,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,1328,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,121,114,105,108,108,105,99,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00305'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,65,114,109,101,110,105,97,110,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,1424,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,65,114,109,101,110,105,97,110,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00306'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,72,101,98,114,101,119,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,1536,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,72,101,98,114,101,119,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00307'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,65,114,97,98,105,99,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,1792,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,65,114,97,98,105,99,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00308'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,83,121,114,105,97,99,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,1920,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,83,121,114,105,97,99,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00309'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,84,104,97,97,110,97,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,2304,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,84,104,97,97,110,97,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00310'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,68,101,118,97,110,97,103,97,114,105,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,2432,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,68,101,118,97,110,97,103,97,114,105,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00311'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,66,101,110,103,97,108,105,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,2560,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,66,101,110,103,97,108,105,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00312'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,71,117,114,109,117,107,104,105,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,2688,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,71,117,114,109,117,107,104,105,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00313'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,71,117,106,97,114,97,116,105,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,2816,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,71,117,106,97,114,97,116,105,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00314'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,79,114,105,121,97,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,2944,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,79,114,105,121,97,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00315'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,84,97,109,105,108,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,3072,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,84,97,109,105,108,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00316'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,84,101,108,117,103,117,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,3200,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,84,101,108,117,103,117,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00317'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,75,97,110,110,97,100,97,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,3328,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,75,97,110,110,97,100,97,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00318'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,77,97,108,97,121,97,108,97,109,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,3456,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,77,97,108,97,121,97,108,97,109,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00319'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,83,105,110,104,97,108,97,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,3584,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,83,105,110,104,97,108,97,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00320'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,84,104,97,105,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,3712,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,84,104,97,105,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00321'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,76,97,111,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,3840,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,76,97,111,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00322'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,84,105,98,101,116,97,110,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,4096,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,84,105,98,101,116,97,110,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00323'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,77,121,97,110,109,97,114,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,4256,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,77,121,97,110,109,97,114,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00324'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,71,101,111,114,103,105,97,110,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,4352,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,71,101,111,114,103,105,97,110,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00325'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,72,97,110,103,117,108,74,97,109,111,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,4608,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,72,97,110,103,117,108,74,97,109,111,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00326'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,69,116,104,105,111,112,105,99,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,5024,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,69,116,104,105,111,112,105,99,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00327'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,104,101,114,111,107,101,101,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,5120,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,104,101,114,111,107,101,101,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00328'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,85,110,105,102,105,101,100,67,97,110,97,100,105,97,110,65,98,111,114,105,103,105,110,97,108,83,121,108,108,97,98,105,99,115,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,5760,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,85,110,105,102,105,101,100,67,97,110,97,100,105,97,110,65,98,111,114,105,103,105,110,97,108,83,121,108,108,97,98,105,99,115,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00329'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,79,103,104,97,109,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,5792,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,79,103,104,97,109,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00330'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,82,117,110,105,99,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,6016,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,82,117,110,105,99,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00331'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,75,104,109,101,114,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,6144,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,75,104,109,101,114,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00332'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,77,111,110,103,111,108,105,97,110,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,7680,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,77,111,110,103,111,108,105,97,110,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00333'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,76,97,116,105,110,69,120,116,101,110,100,101,100,65,100,100,105,116,105,111,110,97,108,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,7936,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,76,97,116,105,110,69,120,116,101,110,100,101,100,65,100,100,105,116,105,111,110,97,108,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00334'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,71,114,101,101,107,69,120,116,101,110,100,101,100,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,8192,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,71,114,101,101,107,69,120,116,101,110,100,101,100,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00335'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,71,101,110,101,114,97,108,80,117,110,99,116,117,97,116,105,111,110,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,8304,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,71,101,110,101,114,97,108,80,117,110,99,116,117,97,116,105,111,110,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00336'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,83,117,112,101,114,115,99,114,105,112,116,115,97,110,100,83,117,98,115,99,114,105,112,116,115,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,8352,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,83,117,112,101,114,115,99,114,105,112,116,115,97,110,100,83,117,98,115,99,114,105,112,116,115,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00337'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,117,114,114,101,110,99,121,83,121,109,98,111,108,115,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,8400,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,117,114,114,101,110,99,121,83,121,109,98,111,108,115,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00338'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,111,109,98,105,110,105,110,103,77,97,114,107,115,102,111,114,83,121,109,98,111,108,115,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,8448,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,111,109,98,105,110,105,110,103,77,97,114,107,115,102,111,114,83,121,109,98,111,108,115,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00339'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,76,101,116,116,101,114,108,105,107,101,83,121,109,98,111,108,115,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,8528,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,76,101,116,116,101,114,108,105,107,101,83,121,109,98,111,108,115,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00340'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,78,117,109,98,101,114,70,111,114,109,115,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,8592,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,78,117,109,98,101,114,70,111,114,109,115,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00341'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,65,114,114,111,119,115,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,8704,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,65,114,114,111,119,115,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00342'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,77,97,116,104,101,109,97,116,105,99,97,108,79,112,101,114,97,116,111,114,115,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,8960,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,77,97,116,104,101,109,97,116,105,99,97,108,79,112,101,114,97,116,111,114,115,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00343'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,77,105,115,99,101,108,108,97,110,101,111,117,115,84,101,99,104,110,105,99,97,108,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,9216,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,77,105,115,99,101,108,108,97,110,101,111,117,115,84,101,99,104,110,105,99,97,108,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00344'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,111,110,116,114,111,108,80,105,99,116,117,114,101,115,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,9280,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,111,110,116,114,111,108,80,105,99,116,117,114,101,115,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00345'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,79,112,116,105,99,97,108,67,104,97,114,97,99,116,101,114,82,101,99,111,103,110,105,116,105,111,110,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,9312,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,79,112,116,105,99,97,108,67,104,97,114,97,99,116,101,114,82,101,99,111,103,110,105,116,105,111,110,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00346'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,69,110,99,108,111,115,101,100,65,108,112,104,97,110,117,109,101,114,105,99,115,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,9472,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,69,110,99,108,111,115,101,100,65,108,112,104,97,110,117,109,101,114,105,99,115,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00347'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,66,111,120,68,114,97,119,105,110,103,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,9600,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,66,111,120,68,114,97,119,105,110,103,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00348'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,66,108,111,99,107,69,108,101,109,101,110,116,115,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,9632,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,66,108,111,99,107,69,108,101,109,101,110,116,115,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00349'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,71,101,111,109,101,116,114,105,99,83,104,97,112,101,115,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,9728,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,71,101,111,109,101,116,114,105,99,83,104,97,112,101,115,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00350'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,77,105,115,99,101,108,108,97,110,101,111,117,115,83,121,109,98,111,108,115,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,9984,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,77,105,115,99,101,108,108,97,110,101,111,117,115,83,121,109,98,111,108,115,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00351'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,68,105,110,103,98,97,116,115,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,10240,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,68,105,110,103,98,97,116,115,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00352'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,66,114,97,105,108,108,101,80,97,116,116,101,114,110,115,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,11904,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,66,114,97,105,108,108,101,80,97,116,116,101,114,110,115,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00353'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,74,75,82,97,100,105,99,97,108,115,83,117,112,112,108,101,109,101,110,116,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,12032,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,74,75,82,97,100,105,99,97,108,115,83,117,112,112,108,101,109,101,110,116,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00354'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,75,97,110,103,120,105,82,97,100,105,99,97,108,115,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,12272,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,75,97,110,103,120,105,82,97,100,105,99,97,108,115,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00355'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,73,100,101,111,103,114,97,112,104,105,99,68,101,115,99,114,105,112,116,105,111,110,67,104,97,114,97,99,116,101,114,115,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,12288,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,73,100,101,111,103,114,97,112,104,105,99,68,101,115,99,114,105,112,116,105,111,110,67,104,97,114,97,99,116,101,114,115,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00356'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,74,75,83,121,109,98,111,108,115,97,110,100,80,117,110,99,116,117,97,116,105,111,110,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,12352,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,74,75,83,121,109,98,111,108,115,97,110,100,80,117,110,99,116,117,97,116,105,111,110,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00357'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,72,105,114,97,103,97,110,97,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,12448,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,72,105,114,97,103,97,110,97,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00358'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,75,97,116,97,107,97,110,97,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,12544,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,75,97,116,97,107,97,110,97,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00359'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,66,111,112,111,109,111,102,111,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,12592,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,66,111,112,111,109,111,102,111,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00360'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,72,97,110,103,117,108,67,111,109,112,97,116,105,98,105,108,105,116,121,74,97,109,111,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,12688,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,72,97,110,103,117,108,67,111,109,112,97,116,105,98,105,108,105,116,121,74,97,109,111,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00361'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,75,97,110,98,117,110,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,12704,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,75,97,110,98,117,110,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00362'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,66,111,112,111,109,111,102,111,69,120,116,101,110,100,101,100,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,12800,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,66,111,112,111,109,111,102,111,69,120,116,101,110,100,101,100,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00363'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,69,110,99,108,111,115,101,100,67,74,75,76,101,116,116,101,114,115,97,110,100,77,111,110,116,104,115,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,13056,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,69,110,99,108,111,115,101,100,67,74,75,76,101,116,116,101,114,115,97,110,100,77,111,110,116,104,115,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00364'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,74,75,67,111,109,112,97,116,105,98,105,108,105,116,121,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,13312,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,74,75,67,111,109,112,97,116,105,98,105,108,105,116,121,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00365'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,74,75,85,110,105,102,105,101,100,73,100,101,111,103,114,97,112,104,115,69,120,116,101,110,115,105,111,110,65,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,19968,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,74,75,85,110,105,102,105,101,100,73,100,101,111,103,114,97,112,104,115,69,120,116,101,110,115,105,111,110,65,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00366'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,74,75,85,110,105,102,105,101,100,73,100,101,111,103,114,97,112,104,115,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,40960,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,74,75,85,110,105,102,105,101,100,73,100,101,111,103,114,97,112,104,115,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00367'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,89,105,83,121,108,108,97,98,108,101,115,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,42128,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,89,105,83,121,108,108,97,98,108,101,115,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00368'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,89,105,82,97,100,105,99,97,108,115,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,44032,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,89,105,82,97,100,105,99,97,108,115,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00369'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,76,111,119,83,117,114,114,111,103,97,116,101,115,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,57344,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,76,111,119,83,117,114,114,111,103,97,116,101,115,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00370'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,1048576,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,80,114,105,118,97,116,101,85,115,101,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,63744,44,127,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,80,114,105,118,97,116,101,85,115,101,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00371'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,74,75,67,111,109,112,97,116,105,98,105,108,105,116,121,73,100,101,111,103,114,97,112,104,115,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,64256,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,74,75,67,111,109,112,97,116,105,98,105,108,105,116,121,73,100,101,111,103,114,97,112,104,115,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00372'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,65,108,112,104,97,98,101,116,105,99,80,114,101,115,101,110,116,97,116,105,111,110,70,111,114,109,115,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,64336,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,65,108,112,104,97,98,101,116,105,99,80,114,101,115,101,110,116,97,116,105,111,110,70,111,114,109,115,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00373'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,65,114,97,98,105,99,80,114,101,115,101,110,116,97,116,105,111,110,70,111,114,109,115,45,65,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,65056,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,65,114,97,98,105,99,80,114,101,115,101,110,116,97,116,105,111,110,70,111,114,109,115,45,65,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00374'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,111,109,98,105,110,105,110,103,72,97,108,102,77,97,114,107,115,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,65072,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,111,109,98,105,110,105,110,103,72,97,108,102,77,97,114,107,115,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00375'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,74,75,67,111,109,112,97,116,105,98,105,108,105,116,121,70,111,114,109,115,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,65104,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,74,75,67,111,109,112,97,116,105,98,105,108,105,116,121,70,111,114,109,115,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00376'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,83,109,97,108,108,70,111,114,109,86,97,114,105,97,110,116,115,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,65136,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,83,109,97,108,108,70,111,114,109,86,97,114,105,97,110,116,115,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00377'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,83,112,101,99,105,97,108,115,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,65280,44,66304,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,83,112,101,99,105,97,108,115,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00378'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,72,97,108,102,119,105,100,116,104,97,110,100,70,117,108,108,119,105,100,116,104,70,111,114,109,115,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,65520,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,72,97,108,102,119,105,100,116,104,97,110,100,70,117,108,108,119,105,100,116,104,70,111,114,109,115,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00379'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,79,108,100,73,116,97,108,105,99,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,66352,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,79,108,100,73,116,97,108,105,99,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00380'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,71,111,116,104,105,99,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,66560,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,71,111,116,104,105,99,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00381'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,68,101,115,101,114,101,116,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,118784,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,68,101,115,101,114,101,116,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00382'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,66,121,122,97,110,116,105,110,101,77,117,115,105,99,97,108,83,121,109,98,111,108,115,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,119040,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,66,121,122,97,110,116,105,110,101,77,117,115,105,99,97,108,83,121,109,98,111,108,115,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00383'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,77,117,115,105,99,97,108,83,121,109,98,111,108,115,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,119808,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,77,117,115,105,99,97,108,83,121,109,98,111,108,115,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00384'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,77,97,116,104,101,109,97,116,105,99,97,108,65,108,112,104,97,110,117,109,101,114,105,99,83,121,109,98,111,108,115,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,131072,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,77,97,116,104,101,109,97,116,105,99,97,108,65,108,112,104,97,110,117,109,101,114,105,99,83,121,109,98,111,108,115,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00385'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,74,75,85,110,105,102,105,101,100,73,100,101,111,103,114,97,112,104,115,69,120,116,101,110,115,105,111,110,66,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,194560,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,74,75,85,110,105,102,105,101,100,73,100,101,111,103,114,97,112,104,115,69,120,116,101,110,115,105,111,110,66,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00386'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,74,75,67,111,109,112,97,116,105,98,105,108,105,116,121,73,100,101,111,103,114,97,112,104,115,83,117,112,112,108,101,109,101,110,116,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,917504,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,74,75,67,111,109,112,97,116,105,98,105,108,105,116,121,73,100,101,111,103,114,97,112,104,115,83,117,112,112,108,101,109,101,110,116,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00387'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,84,97,103,115,125,63,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,983040,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,84,97,103,115,125,63,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00388'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,66,97,115,105,99,76,97,116,105,110,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,1791,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,66,97,115,105,99,76,97,116,105,110,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00389'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsLatin-1Supplement})$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsLatin-1Supplement})$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00390'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsLatinExtended-A})$')) and (every $s in tokenize('ÿ', ',') satisfies not(matches($s, '^(?:\\p{IsLatinExtended-A})$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00391'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,76,97,116,105,110,69,120,116,101,110,100,101,100,45,66,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,383,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,76,97,116,105,110,69,120,116,101,110,100,101,100,45,66,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00392'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,73,80,65,69,120,116,101,110,115,105,111,110,115,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,591,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,73,80,65,69,120,116,101,110,115,105,111,110,115,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00393'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,83,112,97,99,105,110,103,77,111,100,105,102,105,101,114,76,101,116,116,101,114,115,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,687,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,83,112,97,99,105,110,103,77,111,100,105,102,105,101,114,76,101,116,116,101,114,115,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00394'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,71,114,101,101,107,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,879,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,71,114,101,101,107,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00395'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,121,114,105,108,108,105,99,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,1023,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,121,114,105,108,108,105,99,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00396'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,65,114,109,101,110,105,97,110,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,1279,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,65,114,109,101,110,105,97,110,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00397'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,72,101,98,114,101,119,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,1423,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,72,101,98,114,101,119,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00398'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,65,114,97,98,105,99,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,1535,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,65,114,97,98,105,99,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00399'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,83,121,114,105,97,99,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,1791,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,83,121,114,105,97,99,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00400'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,84,104,97,97,110,97,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,1871,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,84,104,97,97,110,97,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00401'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,68,101,118,97,110,97,103,97,114,105,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,1983,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,68,101,118,97,110,97,103,97,114,105,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00402'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,66,101,110,103,97,108,105,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,2431,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,66,101,110,103,97,108,105,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00403'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,71,117,114,109,117,107,104,105,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,2559,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,71,117,114,109,117,107,104,105,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00404'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,71,117,106,97,114,97,116,105,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,2687,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,71,117,106,97,114,97,116,105,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00405'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,79,114,105,121,97,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,2815,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,79,114,105,121,97,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00406'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,84,97,109,105,108,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,2943,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,84,97,109,105,108,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00407'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,84,101,108,117,103,117,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,3071,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,84,101,108,117,103,117,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00408'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,75,97,110,110,97,100,97,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,3199,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,75,97,110,110,97,100,97,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00409'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,77,97,108,97,121,97,108,97,109,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,3327,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,77,97,108,97,121,97,108,97,109,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00410'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,83,105,110,104,97,108,97,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,3455,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,83,105,110,104,97,108,97,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00411'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,84,104,97,105,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,3583,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,84,104,97,105,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00412'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,76,97,111,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,3711,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,76,97,111,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00413'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,84,105,98,101,116,97,110,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,3839,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,84,105,98,101,116,97,110,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00414'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,77,121,97,110,109,97,114,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,4095,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,77,121,97,110,109,97,114,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00415'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,71,101,111,114,103,105,97,110,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,4255,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,71,101,111,114,103,105,97,110,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00416'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,72,97,110,103,117,108,74,97,109,111,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,4351,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,72,97,110,103,117,108,74,97,109,111,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00417'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,69,116,104,105,111,112,105,99,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,4607,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,69,116,104,105,111,112,105,99,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00418'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,104,101,114,111,107,101,101,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,4991,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,104,101,114,111,107,101,101,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00419'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,85,110,105,102,105,101,100,67,97,110,97,100,105,97,110,65,98,111,114,105,103,105,110,97,108,83,121,108,108,97,98,105,99,115,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,5119,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,85,110,105,102,105,101,100,67,97,110,97,100,105,97,110,65,98,111,114,105,103,105,110,97,108,83,121,108,108,97,98,105,99,115,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00420'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,79,103,104,97,109,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,5759,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,79,103,104,97,109,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00421'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,82,117,110,105,99,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,5791,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,82,117,110,105,99,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00422'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,75,104,109,101,114,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,5887,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,75,104,109,101,114,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00423'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,77,111,110,103,111,108,105,97,110,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,6143,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,77,111,110,103,111,108,105,97,110,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00424'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,76,97,116,105,110,69,120,116,101,110,100,101,100,65,100,100,105,116,105,111,110,97,108,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,6319,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,76,97,116,105,110,69,120,116,101,110,100,101,100,65,100,100,105,116,105,111,110,97,108,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00425'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,71,114,101,101,107,69,120,116,101,110,100,101,100,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,7935,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,71,114,101,101,107,69,120,116,101,110,100,101,100,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00426'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,71,101,110,101,114,97,108,80,117,110,99,116,117,97,116,105,111,110,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,8191,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,71,101,110,101,114,97,108,80,117,110,99,116,117,97,116,105,111,110,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00427'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,83,117,112,101,114,115,99,114,105,112,116,115,97,110,100,83,117,98,115,99,114,105,112,116,115,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,8303,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,83,117,112,101,114,115,99,114,105,112,116,115,97,110,100,83,117,98,115,99,114,105,112,116,115,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00428'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,117,114,114,101,110,99,121,83,121,109,98,111,108,115,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,8351,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,117,114,114,101,110,99,121,83,121,109,98,111,108,115,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00429'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,111,109,98,105,110,105,110,103,77,97,114,107,115,102,111,114,83,121,109,98,111,108,115,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,8399,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,111,109,98,105,110,105,110,103,77,97,114,107,115,102,111,114,83,121,109,98,111,108,115,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00430'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,76,101,116,116,101,114,108,105,107,101,83,121,109,98,111,108,115,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,8447,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,76,101,116,116,101,114,108,105,107,101,83,121,109,98,111,108,115,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00431'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,78,117,109,98,101,114,70,111,114,109,115,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,8527,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,78,117,109,98,101,114,70,111,114,109,115,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00432'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,65,114,114,111,119,115,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,8591,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,65,114,114,111,119,115,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00433'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,77,97,116,104,101,109,97,116,105,99,97,108,79,112,101,114,97,116,111,114,115,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,8703,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,77,97,116,104,101,109,97,116,105,99,97,108,79,112,101,114,97,116,111,114,115,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00434'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,77,105,115,99,101,108,108,97,110,101,111,117,115,84,101,99,104,110,105,99,97,108,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,8959,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,77,105,115,99,101,108,108,97,110,101,111,117,115,84,101,99,104,110,105,99,97,108,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00435'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,111,110,116,114,111,108,80,105,99,116,117,114,101,115,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,9215,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,111,110,116,114,111,108,80,105,99,116,117,114,101,115,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00436'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,79,112,116,105,99,97,108,67,104,97,114,97,99,116,101,114,82,101,99,111,103,110,105,116,105,111,110,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,9279,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,79,112,116,105,99,97,108,67,104,97,114,97,99,116,101,114,82,101,99,111,103,110,105,116,105,111,110,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00437'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,69,110,99,108,111,115,101,100,65,108,112,104,97,110,117,109,101,114,105,99,115,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,9311,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,69,110,99,108,111,115,101,100,65,108,112,104,97,110,117,109,101,114,105,99,115,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00438'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,66,111,120,68,114,97,119,105,110,103,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,9471,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,66,111,120,68,114,97,119,105,110,103,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00439'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,66,108,111,99,107,69,108,101,109,101,110,116,115,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,9599,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,66,108,111,99,107,69,108,101,109,101,110,116,115,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00440'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,71,101,111,109,101,116,114,105,99,83,104,97,112,101,115,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,9631,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,71,101,111,109,101,116,114,105,99,83,104,97,112,101,115,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00441'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,77,105,115,99,101,108,108,97,110,101,111,117,115,83,121,109,98,111,108,115,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,9727,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,77,105,115,99,101,108,108,97,110,101,111,117,115,83,121,109,98,111,108,115,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00442'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,68,105,110,103,98,97,116,115,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,9983,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,68,105,110,103,98,97,116,115,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00443'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,66,114,97,105,108,108,101,80,97,116,116,101,114,110,115,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,10175,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,66,114,97,105,108,108,101,80,97,116,116,101,114,110,115,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00444'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,74,75,82,97,100,105,99,97,108,115,83,117,112,112,108,101,109,101,110,116,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,10495,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,74,75,82,97,100,105,99,97,108,115,83,117,112,112,108,101,109,101,110,116,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00445'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,75,97,110,103,120,105,82,97,100,105,99,97,108,115,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,12031,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,75,97,110,103,120,105,82,97,100,105,99,97,108,115,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00446'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,73,100,101,111,103,114,97,112,104,105,99,68,101,115,99,114,105,112,116,105,111,110,67,104,97,114,97,99,116,101,114,115,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,12255,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,73,100,101,111,103,114,97,112,104,105,99,68,101,115,99,114,105,112,116,105,111,110,67,104,97,114,97,99,116,101,114,115,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00447'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,74,75,83,121,109,98,111,108,115,97,110,100,80,117,110,99,116,117,97,116,105,111,110,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,12287,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,74,75,83,121,109,98,111,108,115,97,110,100,80,117,110,99,116,117,97,116,105,111,110,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00448'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,72,105,114,97,103,97,110,97,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,12351,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,72,105,114,97,103,97,110,97,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00449'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,75,97,116,97,107,97,110,97,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,12447,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,75,97,116,97,107,97,110,97,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00450'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,66,111,112,111,109,111,102,111,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,12543,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,66,111,112,111,109,111,102,111,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00451'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,72,97,110,103,117,108,67,111,109,112,97,116,105,98,105,108,105,116,121,74,97,109,111,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,12591,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,72,97,110,103,117,108,67,111,109,112,97,116,105,98,105,108,105,116,121,74,97,109,111,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00452'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,75,97,110,98,117,110,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,12687,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,75,97,110,98,117,110,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00453'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,66,111,112,111,109,111,102,111,69,120,116,101,110,100,101,100,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,12703,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,66,111,112,111,109,111,102,111,69,120,116,101,110,100,101,100,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00454'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,69,110,99,108,111,115,101,100,67,74,75,76,101,116,116,101,114,115,97,110,100,77,111,110,116,104,115,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,12735,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,69,110,99,108,111,115,101,100,67,74,75,76,101,116,116,101,114,115,97,110,100,77,111,110,116,104,115,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00455'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,74,75,67,111,109,112,97,116,105,98,105,108,105,116,121,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,13055,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,74,75,67,111,109,112,97,116,105,98,105,108,105,116,121,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00456'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,74,75,85,110,105,102,105,101,100,73,100,101,111,103,114,97,112,104,115,69,120,116,101,110,115,105,111,110,65,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,13311,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,74,75,85,110,105,102,105,101,100,73,100,101,111,103,114,97,112,104,115,69,120,116,101,110,115,105,111,110,65,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00457'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,74,75,85,110,105,102,105,101,100,73,100,101,111,103,114,97,112,104,115,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,19893,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,74,75,85,110,105,102,105,101,100,73,100,101,111,103,114,97,112,104,115,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00458'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,89,105,83,121,108,108,97,98,108,101,115,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,40959,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,89,105,83,121,108,108,97,98,108,101,115,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00459'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,89,105,82,97,100,105,99,97,108,115,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,42127,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,89,105,82,97,100,105,99,97,108,115,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00460'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,72,97,110,103,117,108,83,121,108,108,97,98,108,101,115,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,42191,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,72,97,110,103,117,108,83,121,108,108,97,98,108,101,115,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00461'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,72,105,103,104,83,117,114,114,111,103,97,116,101,115,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,39,55203,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,72,105,103,104,83,117,114,114,111,103,97,116,101,115,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00462'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,74,75,67,111,109,112,97,116,105,98,105,108,105,116,121,73,100,101,111,103,114,97,112,104,115,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,63743,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,74,75,67,111,109,112,97,116,105,98,105,108,105,116,121,73,100,101,111,103,114,97,112,104,115,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00463'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,65,108,112,104,97,98,101,116,105,99,80,114,101,115,101,110,116,97,116,105,111,110,70,111,114,109,115,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,64255,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,65,108,112,104,97,98,101,116,105,99,80,114,101,115,101,110,116,97,116,105,111,110,70,111,114,109,115,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00464'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,65,114,97,98,105,99,80,114,101,115,101,110,116,97,116,105,111,110,70,111,114,109,115,45,65,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,64335,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,65,114,97,98,105,99,80,114,101,115,101,110,116,97,116,105,111,110,70,111,114,109,115,45,65,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00465'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,111,109,98,105,110,105,110,103,72,97,108,102,77,97,114,107,115,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,65023,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,111,109,98,105,110,105,110,103,72,97,108,102,77,97,114,107,115,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00466'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,74,75,67,111,109,112,97,116,105,98,105,108,105,116,121,70,111,114,109,115,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,65071,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,74,75,67,111,109,112,97,116,105,98,105,108,105,116,121,70,111,114,109,115,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00467'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,83,109,97,108,108,70,111,114,109,86,97,114,105,97,110,116,115,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,65103,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,83,109,97,108,108,70,111,114,109,86,97,114,105,97,110,116,115,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00468'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,65,114,97,98,105,99,80,114,101,115,101,110,116,97,116,105,111,110,70,111,114,109,115,45,66,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,65135,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,65,114,97,98,105,99,80,114,101,115,101,110,116,97,116,105,111,110,70,111,114,109,115,45,66,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00469'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,83,112,101,99,105,97,108,115,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,65278,44,65519,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,83,112,101,99,105,97,108,115,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00470'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,72,97,108,102,119,105,100,116,104,97,110,100,70,117,108,108,119,105,100,116,104,70,111,114,109,115,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,65279,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,72,97,108,102,119,105,100,116,104,97,110,100,70,117,108,108,119,105,100,116,104,70,111,114,109,115,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00471'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,79,108,100,73,116,97,108,105,99,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,65533,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,79,108,100,73,116,97,108,105,99,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00472'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,71,111,116,104,105,99,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,66351,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,71,111,116,104,105,99,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00473'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,68,101,115,101,114,101,116,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,66383,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,68,101,115,101,114,101,116,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00474'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,66,121,122,97,110,116,105,110,101,77,117,115,105,99,97,108,83,121,109,98,111,108,115,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,66639,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,66,121,122,97,110,116,105,110,101,77,117,115,105,99,97,108,83,121,109,98,111,108,115,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00475'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,77,117,115,105,99,97,108,83,121,109,98,111,108,115,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,119039,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,77,117,115,105,99,97,108,83,121,109,98,111,108,115,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00476'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,77,97,116,104,101,109,97,116,105,99,97,108,65,108,112,104,97,110,117,109,101,114,105,99,83,121,109,98,111,108,115,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,119295,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,77,97,116,104,101,109,97,116,105,99,97,108,65,108,112,104,97,110,117,109,101,114,105,99,83,121,109,98,111,108,115,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00477'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,74,75,85,110,105,102,105,101,100,73,100,101,111,103,114,97,112,104,115,69,120,116,101,110,115,105,111,110,66,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,120831,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,74,75,85,110,105,102,105,101,100,73,100,101,111,103,114,97,112,104,115,69,120,116,101,110,115,105,111,110,66,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00478'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,74,75,67,111,109,112,97,116,105,98,105,108,105,116,121,73,100,101,111,103,114,97,112,104,115,83,117,112,112,108,101,109,101,110,116,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,173782,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,74,75,67,111,109,112,97,116,105,98,105,108,105,116,121,73,100,101,111,103,114,97,112,104,115,83,117,112,112,108,101,109,101,110,116,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00479'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,84,97,103,115,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,195103,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,84,97,103,115,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00480'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,1048573,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,80,114,105,118,97,116,101,85,115,101,125,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,917631,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,80,114,105,118,97,116,101,85,115,101,125,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00481'(_Config) ->
   Qry = "(every $s in tokenize('a, ', ',') satisfies matches($s, '^(?:.)$')) and (every $s in tokenize('aa,', ',') satisfies not(matches($s, '^(?:.)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00482'(_Config) ->
   Qry = "(every $s in tokenize(' ,
,,	', ',') satisfies matches($s, '^(?:\\s)$')) and (every $s in tokenize('a,', ',') satisfies not(matches($s, '^(?:\\s)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00483'(_Config) ->
   Qry = "(every $s in tokenize('  	
a c
	 a 
	   
,aa a', ',') satisfies matches($s, '^(?:\\s*\\c\\s?\\c\\s+\\c\\s*)$')) and (every $s in tokenize(' a  a a,aaa, a aa ', ',') satisfies not(matches($s, '^(?:\\s*\\c\\s?\\c\\s+\\c\\s*)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00484'(_Config) ->
   Qry = "(every $s in tokenize('aa,a a,a   a', ',') satisfies matches($s, '^(?:a\\s{0,3}a)$')) and (every $s in tokenize('a    a,aa a', ',') satisfies not(matches($s, '^(?:a\\s{0,3}a)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00485'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:a\\sb)$')) and (every $s in tokenize('a 
b', ',') satisfies not(matches($s, '^(?:a\\sb)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00486'(_Config) ->
   Qry = "(every $s in tokenize('a', ',') satisfies matches($s, '^(?:\\S)$')) and (every $s in tokenize(' ,
,,	,aa', ',') satisfies not(matches($s, '^(?:\\S)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00487'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\S+)$')) and (every $s in tokenize('a b', ',') satisfies not(matches($s, '^(?:\\S+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00488'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\S*)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\S*)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00489'(_Config) ->
   Qry = "(every $s in tokenize('a b	, a  ', ',') satisfies matches($s, '^(?:\\S?\\s?\\S?\\s+)$')) and (every $s in tokenize('a  b, a b,ab', ',') satisfies not(matches($s, '^(?:\\S?\\s?\\S?\\s+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00490'(_Config) ->
   Qry = "(every $s in tokenize('_,:,a', ',') satisfies matches($s, '^(?:\\i)$')) and (every $s in tokenize(' ,
,,	', ',') satisfies not(matches($s, '^(?:\\i)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00491'(_Config) ->
   Qry = "(every $s in tokenize('_:abcdefghijklmnopqrstuvwxyzAZ:_', ',') satisfies matches($s, '^(?:\\i*)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\i*)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00492'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\i+)$')) and (every $s in tokenize('a b', ',') satisfies not(matches($s, '^(?:\\i+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00493'(_Config) ->
   Qry = "(every $s in tokenize('zabcsdea', ',') satisfies matches($s, '^(?:\\c\\i*a)$')) and (every $s in tokenize('ab', ',') satisfies not(matches($s, '^(?:\\c\\i*a)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00494'(_Config) ->
   Qry = "(every $s in tokenize('a b  c  Z  :_   dy 	b 
   ', ',') satisfies matches($s, '^(?:[\\s\\i]*)$')) and (every $s in tokenize('1', ',') satisfies not(matches($s, '^(?:[\\s\\i]*)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00495'(_Config) ->
   Qry = "(every $s in tokenize(' ,
,,	', ',') satisfies matches($s, '^(?:\\I)$')) and (every $s in tokenize('_,:,a', ',') satisfies not(matches($s, '^(?:\\I)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00496'(_Config) ->
   Qry = "(every $s in tokenize('1234', ',') satisfies matches($s, '^(?:\\I*)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\I*)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00497'(_Config) ->
   Qry = "(every $s in tokenize('a  123c', ',') satisfies matches($s, '^(?:a\\I+\\c)$')) and (every $s in tokenize('b123c,a123 123cc', ',') satisfies not(matches($s, '^(?:a\\I+\\c)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00498'(_Config) ->
   Qry = "(every $s in tokenize('_,:,a', ',') satisfies matches($s, '^(?:\\c)$')) and (every $s in tokenize(' ,
,,	', ',') satisfies not(matches($s, '^(?:\\c)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00499'(_Config) ->
   Qry = "(every $s in tokenize('c?1 abc,?0zzz', ',') satisfies matches($s, '^(?:\\c?\\?\\d\\s\\c+)$')) and (every $s in tokenize('aa?3 c,a?2
', ',') satisfies not(matches($s, '^(?:\\c?\\?\\d\\s\\c+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00500'(_Config) ->
   Qry = "(every $s in tokenize('a,aa,aaaaaaaaaaaaaaaaaaaaaaaaaa', ',') satisfies matches($s, '^(?:\\c?\\c+\\c*)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\c?\\c+\\c*)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00501'(_Config) ->
   Qry = "(every $s in tokenize(' ,
,,	', ',') satisfies matches($s, '^(?:\\C)$')) and (every $s in tokenize('_,:,a', ',') satisfies not(matches($s, '^(?:\\C)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00502'(_Config) ->
   Qry = "(every $s in tokenize('a*a**a***,aa*a', ',') satisfies matches($s, '^(?:\\c\\C?\\c\\C+\\c\\C*)$')) 
        and (every $s in tokenize(',a12b1c1,ab12345,1a2a2,a1b1c1a', ',') satisfies not(matches($s, '^(?:\\c\\C?\\c\\C+\\c\\C*)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00503'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,48,44,1776,44,2534,44,2662,44,2790,44,2918,44,3047,44,3174,44,3302,44,3430,44,3664,44,3792,44,3872,44,4160,44,6112,44,6160,44,65296,44,120782,44,57,44,1641,44,1785,44,2415,44,2543,44,2671,44,2799,44,2927,44,3055,44,3183,44,3311,44,3439,44,3673,44,3801,44,3881,44,4169,44,6121,44,6169,44,65305,44,120831,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,100,41,36,39,41,41,32,10,32,32,32,32,32,32,32,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,41,44,1625,44,1774,44,2405,44,2533,44,2661,44,2789,44,2917,44,3173,44,3301,44,3429,44,3657,44,3791,44,3865,44,4153,44,4968,44,6111,44,6153,44,65289,44,120781,44,58,44,1642,44,1786,44,2416,44,2544,44,2681,44,2800,44,2928,44,3056,44,3184,44,3312,44,3440,44,3674,44,3802,44,3882,44,4170,44,4978,44,6122,44,6170,44,65306,44,120832,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,100,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00504'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,41,44,1625,44,1774,44,2405,44,2533,44,2661,44,2789,44,2917,44,3173,44,3301,44,3429,44,3657,44,3791,44,3865,44,4153,44,4968,44,6111,44,6153,44,65289,44,120781,44,58,44,1642,44,1786,44,2416,44,2544,44,2681,44,2800,44,2928,44,3056,44,3184,44,3312,44,3440,44,3674,44,3802,44,3882,44,4170,44,4978,44,6122,44,6170,44,65306,44,120832,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,68,41,36,39,41,41,32,10,32,32,32,32,32,32,32,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,48,44,1632,44,1776,44,2406,44,2534,44,2790,44,3047,44,3174,44,3302,44,3430,44,3664,44,3792,44,3872,44,4160,44,6112,44,6160,44,65296,44,120782,44,57,44,1641,44,1785,44,2415,44,2543,44,2671,44,2799,44,2927,44,3055,44,3183,44,3311,44,3439,44,3673,44,3801,44,3881,44,4169,44,6121,44,6169,44,65305,44,120831,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,68,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00505'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,119,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,63743,44,1807,44,127,44,8208,44,65079,44,125,44,8220,44,187,44,3844,44,32,44,8232,44,8233,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,119,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00506'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,87,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,65,44,120744,44,97,44,97,44,120777,44,453,44,453,44,8188,44,688,44,688,44,65439,44,1488,44,1488,44,195101,44,1611,44,119213,44,2307,44,119154,44,2307,44,119154,44,8413,44,8413,44,8418,44,65296,44,120831,44,66378,44,66378,44,12325,44,178,44,178,44,66339,44,8260,44,65506,44,8352,44,8352,44,65510,44,12443,44,12443,44,65507,44,12688,44,12688,44,119261,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,87,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00507'(_Config) ->
   Qry = "(every $s in tokenize('true', ',') satisfies matches($s, '^(?:true)$')) and (every $s in tokenize('false', ',') satisfies not(matches($s, '^(?:true)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00508'(_Config) ->
   Qry = "(every $s in tokenize('false', ',') satisfies matches($s, '^(?:false)$')) and (every $s in tokenize('true', ',') satisfies not(matches($s, '^(?:false)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00509'(_Config) ->
   Qry = "(every $s in tokenize('true,false', ',') satisfies matches($s, '^(?:(true|false))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:(true|false))$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00510'(_Config) ->
   Qry = "(every $s in tokenize('1', ',') satisfies matches($s, '^(?:(1|true))$')) and (every $s in tokenize('0', ',') satisfies not(matches($s, '^(?:(1|true))$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00511'(_Config) ->
   Qry = "(every $s in tokenize('0', ',') satisfies matches($s, '^(?:(1|true|false|0|0))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:(1|true|false|0|0))$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00512'(_Config) ->
   Qry = "(every $s in tokenize('1111,11001010', ',') satisfies matches($s, '^(?:([0-1]{4}|(0|1){8}))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:([0-1]{4}|(0|1){8}))$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00513'(_Config) ->
   Qry = "(every $s in tokenize('AF01D1', ',') satisfies matches($s, '^(?:AF01D1)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:AF01D1)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00514'(_Config) ->
   Qry = "(every $s in tokenize('1.001,1.001', ',') satisfies matches($s, '^(?:\\d*\\.\\d+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\d*\\.\\d+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00515'(_Config) ->
   Qry = "(every $s in tokenize('http://www.foo.com', ',') satisfies matches($s, '^(?:http://\\c*)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:http://\\c*)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00516'(_Config) ->
   Qry = "(every $s in tokenize('a:b', ',') satisfies matches($s, '^(?:[\\i\\c]+:[\\i\\c]+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:[\\i\\c]+:[\\i\\c]+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00517'(_Config) ->
   Qry = "(every $s in tokenize('P1111Y12M', ',') satisfies matches($s, '^(?:P\\p{Nd}{4}Y\\p{Nd}{2}M)$')) and (every $s in tokenize('P111Y12M,P1111Y1M,P11111Y12M,P1111Y,P12M,P11111Y00M,P11111Y13M', ',') satisfies not(matches($s, '^(?:P\\p{Nd}{4}Y\\p{Nd}{2}M)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00518'(_Config) ->
   Qry = "(every $s in tokenize('2001-06-06T12:12:00', ',') satisfies matches($s, '^(?:\\p{Nd}{4}-\\d\\d-\\d\\dT\\d\\d:\\d\\d:\\d\\d)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{Nd}{4}-\\d\\d-\\d\\dT\\d\\d:\\d\\d:\\d\\d)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00519'(_Config) ->
   Qry = "(every $s in tokenize('11:00:00,13:20:00-05:00', ',') satisfies matches($s, '^(?:\\p{Nd}{2}:\\d\\d:\\d\\d(\\-\\d\\d:\\d\\d)?)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{Nd}{2}:\\d\\d:\\d\\d(\\-\\d\\d:\\d\\d)?)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00520'(_Config) ->
   Qry = "(every $s in tokenize('1999-12-12', ',') satisfies matches($s, '^(?:\\p{Nd}{4}-\\p{Nd}{2}-\\p{Nd}{2})$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{Nd}{4}-\\p{Nd}{2}-\\p{Nd}{2})$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00521'(_Config) ->
   Qry = "matches('qwerty','\\p{Nd}{4}-\\[{Nd}{2}')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00522'(_Config) ->
   Qry = "(every $s in tokenize('1999', ',') satisfies matches($s, '^(?:\\p{Nd}{4})$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{Nd}{4})$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00523'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{Nd}{2})$')) and (every $s in tokenize('1999', ',') satisfies not(matches($s, '^(?:\\p{Nd}{2})$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00524'(_Config) ->
   Qry = "(every $s in tokenize('--03-14', ',') satisfies matches($s, '^(?:--0[123]\\-(12|14))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:--0[123]\\-(12|14))$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00525'(_Config) ->
   Qry = "(every $s in tokenize('---30', ',') satisfies matches($s, '^(?:---([123]0)|([12]?[1-9])|(31))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:---([123]0)|([12]?[1-9])|(31))$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00526'(_Config) ->
   Qry = "(every $s in tokenize('--12--', ',') satisfies matches($s, '^(?:--((0[1-9])|(1(1|2)))--)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:--((0[1-9])|(1(1|2)))--)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00527'(_Config) ->
   Qry = "(every $s in tokenize('a,abcdef', ',') satisfies matches($s, '^(?:\\c+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\c+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00528'(_Config) ->
   Qry = "(every $s in tokenize('ch-a', ',') satisfies matches($s, '^(?:\\c{2,4})$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\c{2,4})$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00529'(_Config) ->
   Qry = "(every $s in tokenize('ab', ',') satisfies matches($s, '^(?:[\\i\\c]*)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:[\\i\\c]*)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00530'(_Config) ->
   Qry = "(every $s in tokenize('a1b,ab,ab,name1', ',') satisfies matches($s, '^(?:\\c[\\c\\d]*)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\c[\\c\\d]*)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00531'(_Config) ->
   Qry = "(every $s in tokenize('10000101,10000201', ',') satisfies matches($s, '^(?:\\p{Nd}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{Nd}+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00532'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\-\\d\\d)$')) and (every $s in tokenize('11', ',') satisfies not(matches($s, '^(?:\\-\\d\\d)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00533'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\-?\\d)$')) and (every $s in tokenize('+1', ',') satisfies not(matches($s, '^(?:\\-?\\d)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00534'(_Config) ->
   Qry = "(every $s in tokenize('123,12', ',') satisfies matches($s, '^(?:\\d+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\d+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00535'(_Config) ->
   Qry = "(every $s in tokenize('-300', ',') satisfies matches($s, '^(?:\\-?[0-3]{3})$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\-?[0-3]{3})$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00536'(_Config) ->
   Qry = "(every $s in tokenize('-128', ',') satisfies matches($s, '^(?:((\\-|\\+)?[1-127])|(\\-?128))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:((\\-|\\+)?[1-127])|(\\-?128))$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00537'(_Config) ->
   Qry = "(every $s in tokenize('1111', ',') satisfies matches($s, '^(?:\\p{Nd}\\d+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{Nd}\\d+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00538'(_Config) ->
   Qry = "(every $s in tokenize('123', ',') satisfies matches($s, '^(?:\\d+\\d+\\d+)$')) and (every $s in tokenize('12', ',') satisfies not(matches($s, '^(?:\\d+\\d+\\d+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00539'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\d+\\d+\\p{Nd}\\d+)$')) and (every $s in tokenize('123', ',') satisfies not(matches($s, '^(?:\\d+\\d+\\p{Nd}\\d+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00540'(_Config) ->
   Qry = "(every $s in tokenize('+1,1,+9', ',') satisfies matches($s, '^(?:\\+?\\d)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\+?\\d)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00541'(_Config) ->
   Qry = "matches('qwerty','++')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00542'(_Config) ->
   Qry = "(every $s in tokenize('9,0', ',') satisfies matches($s, '^(?:[0-9]*)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:[0-9]*)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00543'(_Config) ->
   Qry = "(every $s in tokenize('-11111,-9', ',') satisfies matches($s, '^(?:\\-[0-9]*)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\-[0-9]*)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00544'(_Config) ->
   Qry = "(every $s in tokenize('1,3', ',') satisfies matches($s, '^(?:[13])$')) and (every $s in tokenize('2', ',') satisfies not(matches($s, '^(?:[13])$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00545'(_Config) ->
   Qry = "(every $s in tokenize('112233123,abcaabbccabc', ',') satisfies matches($s, '^(?:[123]+|[abc]+)$')) and (every $s in tokenize('1a,a1', ',') satisfies not(matches($s, '^(?:[123]+|[abc]+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00546'(_Config) ->
   Qry = "(every $s in tokenize('112233123,abcaabbccabc,abab', ',') satisfies matches($s, '^(?:([abc]+)|([123]+))$')) and (every $s in tokenize('1a,1a,x', ',') satisfies not(matches($s, '^(?:([abc]+)|([123]+))$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00547'(_Config) ->
   Qry = "(every $s in tokenize('abab', ',') satisfies matches($s, '^(?:[abxyz]+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:[abxyz]+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00548'(_Config) ->
   Qry = "(every $s in tokenize('Hello World', ',') satisfies matches($s, '^(?:(\\p{Lu}\\w*)\\s(\\p{Lu}\\w*))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:(\\p{Lu}\\w*)\\s(\\p{Lu}\\w*))$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00549'(_Config) ->
   Qry = "(every $s in tokenize('Hello World', ',') satisfies matches($s, '^(?:(\\p{Lu}\\p{Ll}*)\\s(\\p{Lu}\\p{Ll}*))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:(\\p{Lu}\\p{Ll}*)\\s(\\p{Lu}\\p{Ll}*))$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00550'(_Config) ->
   Qry = "(every $s in tokenize('Hello World', ',') satisfies matches($s, '^(?:(\\P{Ll}\\p{Ll}*)\\s(\\P{Ll}\\p{Ll}*))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:(\\P{Ll}\\p{Ll}*)\\s(\\P{Ll}\\p{Ll}*))$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00551'(_Config) ->
   Qry = "(every $s in tokenize('hellO worlD', ',') satisfies matches($s, '^(?:(\\P{Lu}+\\p{Lu})\\s(\\P{Lu}+\\p{Lu}))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:(\\P{Lu}+\\p{Lu})\\s(\\P{Lu}+\\p{Lu}))$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00552'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,453,101,108,108,111,32,453,111,114,108,100,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,40,92,112,123,76,116,125,92,119,42,41,92,115,40,92,112,123,76,116,125,42,92,119,42,41,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,40,92,112,123,76,116,125,92,119,42,41,92,115,40,92,112,123,76,116,125,42,92,119,42,41,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00553'(_Config) ->
   Qry = "(every $s in tokenize('Hello World', ',') satisfies matches($s, '^(?:(\\P{Lt}\\w*)\\s(\\P{Lt}*\\w*))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:(\\P{Lt}\\w*)\\s(\\P{Lt}*\\w*))$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00554'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[@-D]+)$')) and (every $s in tokenize('eE?@ABCDabcdeE', ',') satisfies not(matches($s, '^(?:[@-D]+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00555'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[>-D]+)$')) and (every $s in tokenize('eE=>?@ABCDabcdeE', ',') satisfies not(matches($s, '^(?:[>-D]+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00556'(_Config) ->
   Qry = "matches('qwerty','[\\u0554-\\u0557]+')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00557'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[X-\\]]+)$')) and (every $s in tokenize('wWXYZxyz[\\]^', ',') satisfies not(matches($s, '^(?:[X-\\]]+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00558'(_Config) ->
   Qry = "matches('qwerty','[X-\\u0533]+')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00559'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[X-a]+)$')) and (every $s in tokenize('wWAXYZaxyz', ',') satisfies not(matches($s, '^(?:[X-a]+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00560'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[X-c]+)$')) and (every $s in tokenize('wWABCXYZabcxyz', ',') satisfies not(matches($s, '^(?:[X-c]+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00561'(_Config) ->
   Qry = "matches('qwerty','[X-\\u00C0]+')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00562'(_Config) ->
   Qry = "matches('qwerty','[\\u0100\\u0102\\u0104]+')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00563'(_Config) ->
   Qry = "matches('qwerty','[B-D\\u0130]+')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00564'(_Config) ->
   Qry = "matches('qwerty','[\\u013B\\u013D\\u013F]+')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00565'(_Config) ->
   Qry = "(every $s in tokenize('Foo Bar,Foo Bar', ',') satisfies matches($s, '^(?:(Foo) (Bar))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:(Foo) (Bar))$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00566'(_Config) ->
   Qry = "matches('qwerty','\\p{klsak')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00567'(_Config) ->
   Qry = "matches('qwerty','{5')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00568'(_Config) ->
   Qry = "matches('qwerty','{5,')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00569'(_Config) ->
   Qry = "matches('qwerty','{5,6')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00570'(_Config) ->
   Qry = "matches('qwerty','(?r:foo)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00571'(_Config) ->
   Qry = "matches('qwerty','(?c:foo)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00572'(_Config) ->
   Qry = "matches('qwerty','(?n:(foo)(\\s+)(bar))')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00573'(_Config) ->
   Qry = "matches('qwerty','(?e:foo)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00574'(_Config) ->
   Qry = "matches('qwerty','(?+i:foo)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00575'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:foo([\\d]*)bar)$')) and (every $s in tokenize('hello123foo230927bar1412d,hello123foo230927bar1412d', ',') satisfies not(matches($s, '^(?:foo([\\d]*)bar)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00576'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:([\\D]*)bar)$')) and (every $s in tokenize('65498foobar58719,65498foobar58719', ',') satisfies not(matches($s, '^(?:([\\D]*)bar)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00577'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:foo([\\s]*)bar)$')) and (every $s in tokenize('wiofoo   bar3270,wiofoo   bar3270', ',') satisfies not(matches($s, '^(?:foo([\\s]*)bar)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00578'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:foo([\\S]*))$')) and (every $s in tokenize('sfdfoobar    3270,sfdfoobar    3270', ',') satisfies not(matches($s, '^(?:foo([\\S]*))$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00579'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:foo([\\w]*))$')) and (every $s in tokenize('sfdfoobar    3270,sfdfoobar    3270', ',') satisfies not(matches($s, '^(?:foo([\\w]*))$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00580'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:foo([\\W]*)bar)$')) and (every $s in tokenize('wiofoo   bar3270,wiofoo   bar3270', ',') satisfies not(matches($s, '^(?:foo([\\W]*)bar)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00581'(_Config) ->
   Qry = "(every $s in tokenize('Hello World,Hello World', ',') satisfies matches($s, '^(?:([\\p{Lu}]\\w*)\\s([\\p{Lu}]\\w*))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:([\\p{Lu}]\\w*)\\s([\\p{Lu}]\\w*))$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00582'(_Config) ->
   Qry = "(every $s in tokenize('Hello World,Hello World', ',') satisfies matches($s, '^(?:([\\P{Ll}][\\p{Ll}]*)\\s([\\P{Ll}][\\p{Ll}]*))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:([\\P{Ll}][\\p{Ll}]*)\\s([\\P{Ll}][\\p{Ll}]*))$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00583'(_Config) ->
   Qry = "matches('qwerty','foo([a-\\d]*)bar')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00584'(_Config) ->
   Qry = "matches('qwerty','([5-\\D]*)bar')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00585'(_Config) ->
   Qry = "matches('qwerty','foo([6-\\s]*)bar')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00586'(_Config) ->
   Qry = "matches('qwerty','foo([c-\\S]*)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00587'(_Config) ->
   Qry = "matches('qwerty','foo([7-\\w]*)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00588'(_Config) ->
   Qry = "matches('qwerty','foo([a-\\W]*)bar')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00589'(_Config) ->
   Qry = "matches('qwerty','([f-\\p{Lu}]\\w*)\\s([\\p{Lu}]\\w*)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00590'(_Config) ->
   Qry = "matches('qwerty','([1-\\P{Ll}][\\p{Ll}]*)\\s([\\P{Ll}][\\p{Ll}]*)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00591'(_Config) ->
   Qry = "matches('qwerty','[\\p]')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00592'(_Config) ->
   Qry = "matches('qwerty','[\\P]')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00593'(_Config) ->
   Qry = "matches('qwerty','([\\pfoo])')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00594'(_Config) ->
   Qry = "matches('qwerty','([\\Pfoo])')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00595'(_Config) ->
   Qry = "matches('qwerty','(\\p{')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00596'(_Config) ->
   Qry = "matches('qwerty','(\\p{Ll')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00597'(_Config) ->
   Qry = "matches('qwerty','(foo)([\\x41]*)(bar)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00598'(_Config) ->
   Qry = "matches('qwerty','(foo)([\\u0041]*)(bar)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00599'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:(foo)([\\r]*)(bar))$')) and (every $s in tokenize('foo   bar', ',') satisfies not(matches($s, '^(?:(foo)([\\r]*)(bar))$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00600'(_Config) ->
   Qry = "matches('qwerty','(foo)([\\o]*)(bar)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00601'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:(foo)\\d*bar)$')) and (every $s in tokenize('hello123foo230927bar1412d', ',') satisfies not(matches($s, '^(?:(foo)\\d*bar)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00602'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\D*(bar))$')) and (every $s in tokenize('65498foobar58719', ',') satisfies not(matches($s, '^(?:\\D*(bar))$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00603'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:(foo)\\s*(bar))$')) and (every $s in tokenize('wiofoo   bar3270', ',') satisfies not(matches($s, '^(?:(foo)\\s*(bar))$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00604'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:(foo)\\S*)$')) and (every $s in tokenize('sfdfoobar    3270', ',') satisfies not(matches($s, '^(?:(foo)\\S*)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00605'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:(foo)\\w*)$')) and (every $s in tokenize('sfdfoobar    3270', ',') satisfies not(matches($s, '^(?:(foo)\\w*)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00606'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:(foo)\\W*(bar))$')) and (every $s in tokenize('wiofoo   bar3270', ',') satisfies not(matches($s, '^(?:(foo)\\W*(bar))$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00607'(_Config) ->
   Qry = "(every $s in tokenize('Hello World', ',') satisfies matches($s, '^(?:\\p{Lu}(\\w*)\\s\\p{Lu}(\\w*))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{Lu}(\\w*)\\s\\p{Lu}(\\w*))$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00608'(_Config) ->
   Qry = "(every $s in tokenize('Hello World', ',') satisfies matches($s, '^(?:\\P{Ll}\\p{Ll}*\\s\\P{Ll}\\p{Ll}*)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\P{Ll}\\p{Ll}*\\s\\P{Ll}\\p{Ll}*)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00609'(_Config) ->
   Qry = "matches('qwerty','foo(?(?#COMMENT)foo)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00610'(_Config) ->
   Qry = "matches('qwerty','foo(?(?afdfoo)bar)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00611'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:(foo) #foo        \\s+ #followed by 1 or more whitespace        (bar)  #followed by bar        )$')) and (every $s in tokenize('foo    bar', ',') satisfies not(matches($s, '^(?:(foo) #foo        \\s+ #followed by 1 or more whitespace        (bar)  #followed by bar        )$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00612'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:(foo) #foo        \\s+ #followed by 1 or more whitespace        (bar)  #followed by bar)$')) and (every $s in tokenize('foo    bar', ',') satisfies not(matches($s, '^(?:(foo) #foo        \\s+ #followed by 1 or more whitespace        (bar)  #followed by bar)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00613'(_Config) ->
   Qry = "matches('qwerty','(foo) (?#foo) \\s+ (?#followed by 1 or more whitespace) (bar)  (?#followed by bar)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00614'(_Config) ->
   Qry = "matches('qwerty','(foo) (?#foo) \\s+ (?#followed by 1 or more whitespace')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00615'(_Config) ->
   Qry = "matches('qwerty','(foo)(\\077)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00616'(_Config) ->
   Qry = "matches('qwerty','(foo)(\\77)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00617'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:(foo)(\\176))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:(foo)(\\176))$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00618'(_Config) ->
   Qry = "matches('qwerty','(foo)(\\300)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00619'(_Config) ->
   Qry = "matches('qwerty','(foo)(\\477)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00620'(_Config) ->
   Qry = "matches('qwerty','(foo)(\\777)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00621'(_Config) ->
   Qry = "matches('qwerty','(foo)(\\7770)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00622'(_Config) ->
   Qry = "matches('qwerty','(foo)(\\7)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00623'(_Config) ->
   Qry = "matches('qwerty','(foo)(\\40)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00624'(_Config) ->
   Qry = "matches('qwerty','(foo)(\\040)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00625'(_Config) ->
   Qry = "matches('qwerty','(foo)(\\377)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00626'(_Config) ->
   Qry = "matches('qwerty','(foo)(\\400)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00627'(_Config) ->
   Qry = "matches('qwerty','(foo)(\\x2a*)(bar)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00628'(_Config) ->
   Qry = "matches('qwerty','(foo)(\\x2b*)(bar)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00629'(_Config) ->
   Qry = "matches('qwerty','(foo)(\\x2c*)(bar)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00630'(_Config) ->
   Qry = "matches('qwerty','(foo)(\\x2d*)(bar)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00631'(_Config) ->
   Qry = "matches('qwerty','(foo)(\\x2e*)(bar)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00632'(_Config) ->
   Qry = "matches('qwerty','(foo)(\\x2f*)(bar)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00633'(_Config) ->
   Qry = "matches('qwerty','(foo)(\\x2A*)(bar)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00634'(_Config) ->
   Qry = "matches('qwerty','(foo)(\\x2B*)(bar)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00635'(_Config) ->
   Qry = "matches('qwerty','(foo)(\\x2C*)(bar)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00636'(_Config) ->
   Qry = "matches('qwerty','(foo)(\\x2D*)(bar)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00637'(_Config) ->
   Qry = "matches('qwerty','(foo)(\\x2E*)(bar)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00638'(_Config) ->
   Qry = "matches('qwerty','(foo)(\\x2F*)(bar)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00639'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:(foo)(\\c*)(bar))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:(foo)(\\c*)(bar))$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00640'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:(foo)\\c)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:(foo)\\c)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00641'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:(foo)(\\c *)(bar))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:(foo)(\\c *)(bar))$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00642'(_Config) ->
   Qry = "matches('qwerty','(foo)(\\c?*)(bar)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00643'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:(foo)(\\c`*)(bar))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:(foo)(\\c`*)(bar))$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00644'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:(foo)(\\c\\|*)(bar))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:(foo)(\\c\\|*)(bar))$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00645'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:(foo)(\\c\\[*)(bar))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:(foo)(\\c\\[*)(bar))$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00646'(_Config) ->
   Qry = "matches('qwerty','\\A(foo)\\s+(bar)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00647'(_Config) ->
   Qry = "matches('qwerty','(foo)\\s+(bar)\\Z')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00648'(_Config) ->
   Qry = "matches('qwerty','(foo)\\s+(bar)\\z')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00649'(_Config) ->
   Qry = "matches('qwerty','\\b@foo')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00650'(_Config) ->
   Qry = "matches('qwerty','\\b,foo')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00651'(_Config) ->
   Qry = "matches('qwerty','\\b\\[foo')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00652'(_Config) ->
   Qry = "matches('qwerty','\\B@foo')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00653'(_Config) ->
   Qry = "matches('qwerty','\\B,foo')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00654'(_Config) ->
   Qry = "matches('qwerty','\\B\\[foo')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00655'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,102,111,111,688,32,98,97,114,689,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,40,92,119,43,41,92,115,43,40,92,119,43,41,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,40,92,119,43,41,92,115,43,40,92,119,43,41,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00656'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,40,102,111,111,92,119,43,41,92,115,43,40,98,97,114,92,119,43,41,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,83,84,65,82,84,102,111,111,12540,32,98,97,114,12293,69,78,68,44,83,84,65,82,84,102,111,111,65438,32,98,97,114,65439,69,78,68,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,40,102,111,111,92,119,43,41,92,115,43,40,98,97,114,92,119,43,41,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00657'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:([^{}]|\\n)+)$')) and (every $s in tokenize('{{{{Hello  World  }END', ',') satisfies not(matches($s, '^(?:([^{}]|\\n)+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00658'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:(([0-9])|([a-z])|([A-Z]))*)$')) and (every $s in tokenize('{hello 1234567890 world},{HELLO 1234567890 world},{1234567890 hello  world}', ',') satisfies not(matches($s, '^(?:(([0-9])|([a-z])|([A-Z]))*)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00659'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:(([0-9])|([a-z])|([A-Z]))+)$')) and (every $s in tokenize('{hello 1234567890 world},{HELLO 1234567890 world},{1234567890 hello world}', ',') satisfies not(matches($s, '^(?:(([0-9])|([a-z])|([A-Z]))+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00660'(_Config) ->
   Qry = "(every $s in tokenize('aaabbbcccdddeeefff', ',') satisfies matches($s, '^(?:(([a-d]*)|([a-z]*)))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:(([a-d]*)|([a-z]*)))$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00661'(_Config) ->
   Qry = "(every $s in tokenize('dddeeeccceee', ',') satisfies matches($s, '^(?:(([d-f]*)|([c-e]*)))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:(([d-f]*)|([c-e]*)))$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00662'(_Config) ->
   Qry = "(every $s in tokenize('dddeeeccceee', ',') satisfies matches($s, '^(?:(([c-e]*)|([d-f]*)))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:(([c-e]*)|([d-f]*)))$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00663'(_Config) ->
   Qry = "(every $s in tokenize('aaabbbcccdddeeefff', ',') satisfies matches($s, '^(?:(([a-d]*)|(.*)))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:(([a-d]*)|(.*)))$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00664'(_Config) ->
   Qry = "(every $s in tokenize('dddeeeccceee', ',') satisfies matches($s, '^(?:(([d-f]*)|(.*)))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:(([d-f]*)|(.*)))$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00665'(_Config) ->
   Qry = "(every $s in tokenize('dddeeeccceee', ',') satisfies matches($s, '^(?:(([c-e]*)|(.*)))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:(([c-e]*)|(.*)))$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00666'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:CH)$')) and (every $s in tokenize('Ch,Ch', ',') satisfies not(matches($s, '^(?:CH)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00667'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:cH)$')) and (every $s in tokenize('Ch,Ch', ',') satisfies not(matches($s, '^(?:cH)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00668'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:AA)$')) and (every $s in tokenize('Aa,Aa', ',') satisfies not(matches($s, '^(?:AA)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00669'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:aA)$')) and (every $s in tokenize('Aa,Aa', ',') satisfies not(matches($s, '^(?:aA)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00670'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,305,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,73,44,73,44,73,44,105,44,73,44,105,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,305,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00671'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,304,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,105,44,105,44,73,44,105,44,73,44,105,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,304,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00672'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:([0-9]+?)([\\w]+?))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:([0-9]+?)([\\w]+?))$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00673'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:([0-9]+?)([a-z]+?))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:([0-9]+?)([a-z]+?))$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00674'(_Config) ->
   Qry = "matches('qwerty','^[abcd]{0,16}*$')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00675'(_Config) ->
   Qry = "matches('qwerty','^[abcd]{1,}*$')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00676'(_Config) ->
   Qry = "matches('qwerty','^[abcd]{1}*$')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00677'(_Config) ->
   Qry = "matches('qwerty','^[abcd]{0,16}?*$')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00678'(_Config) ->
   Qry = "matches('qwerty','^[abcd]{1,}?*$')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00679'(_Config) ->
   Qry = "matches('qwerty','^[abcd]{1}?*$')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00680'(_Config) ->
   Qry = "matches('qwerty','^[abcd]*+$')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00681'(_Config) ->
   Qry = "matches('qwerty','^[abcd]+*$')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00682'(_Config) ->
   Qry = "matches('qwerty','^[abcd]?*$')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00683'(_Config) ->
   Qry = "matches('qwerty','^[abcd]*?+$')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00684'(_Config) ->
   Qry = "matches('qwerty','^[abcd]+?*$')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00685'(_Config) ->
   Qry = "matches('qwerty','^[abcd]??*$')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00686'(_Config) ->
   Qry = "matches('qwerty','^[abcd]*{0,5}$')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00687'(_Config) ->
   Qry = "matches('qwerty','^[abcd]+{0,5}$')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00688'(_Config) ->
   Qry = "matches('qwerty','^[abcd]?{0,5}$')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00689'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:http://([a-zA-z0-9\\-]*\\.?)*?(:[0-9]*)??/)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:http://([a-zA-z0-9\\-]*\\.?)*?(:[0-9]*)??/)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00690'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:http://([a-zA-Z0-9\\-]*\\.?)*?/)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:http://([a-zA-Z0-9\\-]*\\.?)*?/)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00691'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:([a-z]*?)([\\w]))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:([a-z]*?)([\\w]))$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00692'(_Config) ->
   Qry = "(every $s in tokenize('foo', ',') satisfies matches($s, '^(?:([a-z]*)([\\w]))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:([a-z]*)([\\w]))$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00693'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[abcd-[d]]+)$')) and (every $s in tokenize('dddaabbccddd', ',') satisfies not(matches($s, '^(?:[abcd-[d]]+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00694'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\d-[357]]+)$')) and (every $s in tokenize('33312468955,51246897,3312468977', ',') satisfies not(matches($s, '^(?:[\\d-[357]]+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00695'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\w-[b-y]]+)$')) and (every $s in tokenize('bbbaaaABCD09zzzyyy,bbbaaaABCD09zzzyyy,bbbaaaABCD09zzzyyy,bbbaaaABCD09zzzyyy', ',') satisfies not(matches($s, '^(?:[\\w-[b-y]]+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00696'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\w-[\\d]]+)$')) and (every $s in tokenize('0AZaz9', ',') satisfies not(matches($s, '^(?:[\\w-[\\d]]+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00697'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\w-[\\p{Ll}]]+)$')) and (every $s in tokenize('a09AZz', ',') satisfies not(matches($s, '^(?:[\\w-[\\p{Ll}]]+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00698'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\d-[13579]]+)$')) and (every $s in tokenize('1024689', ',') satisfies not(matches($s, '^(?:[\\d-[13579]]+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00699'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\p{Ll}-[ae-z]]+)$')) and (every $s in tokenize('aaabbbcccdddeee', ',') satisfies not(matches($s, '^(?:[\\p{Ll}-[ae-z]]+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00700'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\p{Nd}-[2468]]+)$')) and (every $s in tokenize('20135798', ',') satisfies not(matches($s, '^(?:[\\p{Nd}-[2468]]+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00701'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\P{Lu}-[ae-z]]+)$')) and (every $s in tokenize('aaabbbcccdddeee', ',') satisfies not(matches($s, '^(?:[\\P{Lu}-[ae-z]]+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00702'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[abcd-[def]]+)$')) and (every $s in tokenize('fedddaabbccddd', ',') satisfies not(matches($s, '^(?:[abcd-[def]]+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00703'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\d-[357a-z]]+)$')) and (every $s in tokenize('az33312468955', ',') satisfies not(matches($s, '^(?:[\\d-[357a-z]]+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00704'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\d-[de357fgA-Z]]+)$')) and (every $s in tokenize('AZ51246897', ',') satisfies not(matches($s, '^(?:[\\d-[de357fgA-Z]]+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00705'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\d-[357\\p{Ll}]]+)$')) and (every $s in tokenize('az3312468977', ',') satisfies not(matches($s, '^(?:[\\d-[357\\p{Ll}]]+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00706'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\w-[b-y\\s]]+)$')) and (every $s in tokenize('  bbbaaaABCD09zzzyyy', ',') satisfies not(matches($s, '^(?:[\\w-[b-y\\s]]+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00707'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\w-[\\d\\p{Po}]]+)$')) and (every $s in tokenize('!#0AZaz9', ',') satisfies not(matches($s, '^(?:[\\w-[\\d\\p{Po}]]+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00708'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\w-[\\p{Ll}\\s]]+)$')) and (every $s in tokenize('a09AZz', ',') satisfies not(matches($s, '^(?:[\\w-[\\p{Ll}\\s]]+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00709'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\d-[13579a-zA-Z]]+)$')) and (every $s in tokenize('AZ1024689', ',') satisfies not(matches($s, '^(?:[\\d-[13579a-zA-Z]]+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00710'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,91,92,100,45,91,49,51,53,55,57,97,98,99,100,93,93,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,97,98,99,100,1633,48,50,52,54,56,1632,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,91,92,100,45,91,49,51,53,55,57,97,98,99,100,93,93,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00711'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,91,92,100,45,91,49,51,53,55,57,92,115,93,93,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,32,32,1633,48,50,52,54,56,1632,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,91,92,100,45,91,49,51,53,55,57,92,115,93,93,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00712'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\w-[b-y\\p{Po}]]+)$')) and (every $s in tokenize('!#bbbaaaABCD09zzzyyy', ',') satisfies not(matches($s, '^(?:[\\w-[b-y\\p{Po}]]+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00713'(_Config) ->
   Qry = "(every $s in tokenize('', ';') satisfies matches($s, '^(?:[\\w-[b-y!.,]]+)$')) and (every $s in tokenize('!.,bbbaaaABCD09zzzyyy', ';') satisfies not(matches($s, '^(?:[\\w-[b-y!.,]]+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00714'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\p{Ll}-[ae-z0-9]]+)$')) and (every $s in tokenize('09aaabbbcccdddeee', ',') satisfies not(matches($s, '^(?:[\\p{Ll}-[ae-z0-9]]+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00715'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\p{Nd}-[2468az]]+)$')) and (every $s in tokenize('az20135798', ',') satisfies not(matches($s, '^(?:[\\p{Nd}-[2468az]]+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00716'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\P{Lu}-[ae-zA-Z]]+)$')) and (every $s in tokenize('AZaaabbbcccdddeee', ',') satisfies not(matches($s, '^(?:[\\P{Lu}-[ae-zA-Z]]+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00717'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[abc-[defg]]+)$')) and (every $s in tokenize('dddaabbccddd', ',') satisfies not(matches($s, '^(?:[abc-[defg]]+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00718'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\d-[abc]]+)$')) and (every $s in tokenize('abc09abc', ',') satisfies not(matches($s, '^(?:[\\d-[abc]]+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00719'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,91,92,100,45,91,97,45,122,65,45,90,93,93,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,97,122,48,57,65,90,44,97,122,65,90,1633,48,50,52,54,56,1632,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,91,92,100,45,91,97,45,122,65,45,90,93,93,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00720'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\d-[\\p{Ll}]]+)$')) and (every $s in tokenize('az09az', ',') satisfies not(matches($s, '^(?:[\\d-[\\p{Ll}]]+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00721'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\w-[\\p{Po}]]+)$')) and (every $s in tokenize('#a09AZz!', ',') satisfies not(matches($s, '^(?:[\\w-[\\p{Po}]]+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00722'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\d-[\\D]]+)$')) and (every $s in tokenize('azAZ1024689', ',') satisfies not(matches($s, '^(?:[\\d-[\\D]]+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00723'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[a-zA-Z0-9-[\\s]]+)$')) and (every $s in tokenize('  azAZ09', ',') satisfies not(matches($s, '^(?:[a-zA-Z0-9-[\\s]]+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00724'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\p{Ll}-[A-Z]]+)$')) and (every $s in tokenize('AZaz09', ',') satisfies not(matches($s, '^(?:[\\p{Ll}-[A-Z]]+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00725'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\p{Nd}-[a-z]]+)$')) and (every $s in tokenize('az09', ',') satisfies not(matches($s, '^(?:[\\p{Nd}-[a-z]]+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00726'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\P{Lu}-[\\p{Lu}]]+)$')) and (every $s in tokenize('AZazAZ', ',') satisfies not(matches($s, '^(?:[\\P{Lu}-[\\p{Lu}]]+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00727'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\P{Lu}-[A-Z]]+)$')) and (every $s in tokenize('AZazAZ', ',') satisfies not(matches($s, '^(?:[\\P{Lu}-[A-Z]]+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00728'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\P{Nd}-[\\p{Nd}]]+)$')) and (every $s in tokenize('azAZ09', ',') satisfies not(matches($s, '^(?:[\\P{Nd}-[\\p{Nd}]]+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00729'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\P{Nd}-[2-8]]+)$')) and (every $s in tokenize('1234567890azAZ1234567890', ',') satisfies not(matches($s, '^(?:[\\P{Nd}-[2-8]]+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00730'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:([ ]|[\\w-[0-9]])+)$')) and (every $s in tokenize('09az AZ90', ',') satisfies not(matches($s, '^(?:([ ]|[\\w-[0-9]])+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00731'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:([0-9-[02468]]|[0-9-[13579]])+)$')) and (every $s in tokenize('az1234567890za', ',') satisfies not(matches($s, '^(?:([0-9-[02468]]|[0-9-[13579]])+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00732'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:([^0-9-[a-zAE-Z]]|[\\w-[a-zAF-Z]])+)$')) and (every $s in tokenize('azBCDE1234567890BCDEFza', ',') satisfies not(matches($s, '^(?:([^0-9-[a-zAE-Z]]|[\\w-[a-zAF-Z]])+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00733'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:([\\p{Ll}-[aeiou]]|[^\\w-[\\s]])+)$')) and (every $s in tokenize('aeiobcdxyz!@#aeio', ',') satisfies not(matches($s, '^(?:([\\p{Ll}-[aeiou]]|[^\\w-[\\s]])+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00734'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:98[\\d-[9]][\\d-[8]][\\d-[0]])$')) and (every $s in tokenize('98911 98881 98870 98871', ',') satisfies not(matches($s, '^(?:98[\\d-[9]][\\d-[8]][\\d-[0]])$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00735'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:m[\\w-[^aeiou]][\\w-[^aeiou]]t)$')) and (every $s in tokenize('mbbt mect meet', ',') satisfies not(matches($s, '^(?:m[\\w-[^aeiou]][\\w-[^aeiou]]t)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00736'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[abcdef-[^bce]]+)$')) and (every $s in tokenize('adfbcefda', ',') satisfies not(matches($s, '^(?:[abcdef-[^bce]]+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00737'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[^cde-[ag]]+)$')) and (every $s in tokenize('agbfxyzga', ',') satisfies not(matches($s, '^(?:[^cde-[ag]]+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00738'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,91,92,112,123,73,115,71,114,101,101,107,125,45,91,92,80,123,76,117,125,93,93,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,912,1022,902,904,1004,1006,1024,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,91,92,112,123,73,115,71,114,101,101,107,125,45,91,92,80,123,76,117,125,93,93,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00739'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[a-zA-Z-[aeiouAEIOU]]+)$')) and (every $s in tokenize('aeiouAEIOUbcdfghjklmnpqrstvwxyz', ',') satisfies not(matches($s, '^(?:[a-zA-Z-[aeiouAEIOU]]+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00740'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[abcd\\-d-[bc]]+)$')) and (every $s in tokenize('bbbaaa---dddccc,bbbaaa---dddccc', ',') satisfies not(matches($s, '^(?:[abcd\\-d-[bc]]+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00741'(_Config) ->
   Qry = "matches('qwerty','[^a-f-[\\x00-\\x60\\u007B-\\uFFFF]]+')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00742'(_Config) ->
   Qry = "matches('qwerty','[a-f-[]]+')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00743'(_Config) ->
   Qry = "matches('qwerty','[\\[\\]a-f-[[]]+')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00744'(_Config) ->
   Qry = "matches('qwerty','[\\[\\]a-f-[]]]+')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00745'(_Config) ->
   Qry = "matches('qwerty','[ab\\-\\[cd-[-[]]]]')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00746'(_Config) ->
   Qry = "matches('qwerty','[ab\\-\\[cd-[[]]]]')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00747'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[a-[a-f]])$')) and (every $s in tokenize('abcdefghijklmnopqrstuvwxyz', ',') satisfies not(matches($s, '^(?:[a-[a-f]])$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00748'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[a-[c-e]]+)$')) and (every $s in tokenize('bbbaaaccc,```aaaccc', ',') satisfies not(matches($s, '^(?:[a-[c-e]]+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00749'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[a-d\\--[bc]]+)$')) and (every $s in tokenize('cccaaa--dddbbb', ',') satisfies not(matches($s, '^(?:[a-d\\--[bc]]+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00750'(_Config) ->
   Qry = "matches('qwerty','[[abcd]-[bc]]+')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00751'(_Config) ->
   Qry = "matches('qwerty','[-[e-g]+')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00752'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[-e-g]+)$')) and (every $s in tokenize('ddd---eeefffggghhh,ddd---eeefffggghhh', ',') satisfies not(matches($s, '^(?:[-e-g]+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00753'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[a-e - m-p]+)$')) and (every $s in tokenize('---a b c d e m n o p---', ',') satisfies not(matches($s, '^(?:[a-e - m-p]+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00754'(_Config) ->
   Qry = "matches('qwerty','[^-[bc]]')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00755'(_Config) ->
   Qry = "matches('qwerty','[A-[]+')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00756'(_Config) ->
   Qry = "matches('qwerty','[a\\-[bc]+')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00757'(_Config) ->
   Qry = "matches('qwerty','[a\\-[\\-\\-bc]+')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00758'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[a\\-\\[\\-\\[\\-bc]+)$')) and (every $s in tokenize('```bbbaaa---[[[cccddd', ',') satisfies not(matches($s, '^(?:[a\\-\\[\\-\\[\\-bc]+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00759'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[abc\\--[b]]+)$')) and (every $s in tokenize('[[[```bbbaaa---cccddd', ',') satisfies not(matches($s, '^(?:[abc\\--[b]]+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00760'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[abc\\-z-[b]]+)$')) and (every $s in tokenize('```aaaccc---zzzbbb', ',') satisfies not(matches($s, '^(?:[abc\\-z-[b]]+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00761'(_Config) ->
   Qry = "matches('qwerty','[a-d\\-[b]+')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00762'(_Config) ->
   Qry = "matches('qwerty','[abcd\\-d\\-[bc]+')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00763'(_Config) ->
   Qry = "matches('qwerty','[a - c - [ b ] ]+')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00764'(_Config) ->
   Qry = "matches('qwerty','[a - c - [ b ] +')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00765'(_Config) ->
   Qry = "matches('qwerty','(?<first_name>\\\\S+)\\\\s(?<last_name>\\\\S+)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00766'(_Config) ->
   Qry = "matches('qwerty','(a+)(?:b*)(ccc)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
're00767'(_Config) ->
   Qry = "matches('qwerty','abc(?=XXX)\\w+')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00768'(_Config) ->
   Qry = "matches('qwerty','abc(?!XXX)\\w+')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00769'(_Config) ->
   Qry = "matches('qwerty','[^0-9]+(?>[0-9]+)3')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00770'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:^aa$)$')) and (every $s in tokenize('aA', ',') satisfies not(matches($s, '^(?:^aa$)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00771'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:^Aa$)$')) and (every $s in tokenize('aA', ',') satisfies not(matches($s, '^(?:^Aa$)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00772'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\s+\\d+)$')) and (every $s in tokenize('sdf 12sad', ',') satisfies not(matches($s, '^(?:\\s+\\d+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00773'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:foo\\d+)$')) and (every $s in tokenize('0123456789foo4567890foo         ,0123456789foo4567890foo1foo  0987', ',') satisfies not(matches($s, '^(?:foo\\d+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00774'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:foo\\s+)$')) and (every $s in tokenize('0123456789foo4567890foo         ', ',') satisfies not(matches($s, '^(?:foo\\s+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00775'(_Config) ->
   Qry = "(every $s in tokenize('hellofoo barworld', ',') satisfies matches($s, '^(?:(hello)foo\\s+bar(world))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:(hello)foo\\s+bar(world))$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00776'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:(hello)\\s+(world))$')) and (every $s in tokenize('What the hello world goodby,What the hello world goodby,START hello    world END,START hello    world END', ',') satisfies not(matches($s, '^(?:(hello)\\s+(world))$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00777'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:(foo)\\s+(bar))$')) and (every $s in tokenize('before textfoo barafter text,before textfoo barafter text,before textfoo barafter text', ',') satisfies not(matches($s, '^(?:(foo)\\s+(bar))$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00778'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:(d)(o)(g)(\\s)(c)(a)(t)(\\s)(h)(a)(s))$')) and (every $s in tokenize('My dog cat has fleas.,My dog cat has fleas.', ',') satisfies not(matches($s, '^(?:(d)(o)(g)(\\s)(c)(a)(t)(\\s)(h)(a)(s))$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00779'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:^([a-z0-9]+)@([a-z]+)\\.([a-z]+)$)$')) and (every $s in tokenize('bar@bar.foo.com', ',') satisfies not(matches($s, '^(?:^([a-z0-9]+)@([a-z]+)\\.([a-z]+)$)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00780'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:^http://www.([a-zA-Z0-9]+)\\.([a-z]+)$)$')) and (every $s in tokenize('http://www.foo.bar.com', ',') satisfies not(matches($s, '^(?:^http://www.([a-zA-Z0-9]+)\\.([a-z]+)$)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00781'(_Config) ->
   Qry = "(every $s in tokenize('abc\\nsfc', ',') satisfies matches($s, '^(?:(.*))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:(.*))$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00782'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:            ((.)+)      )$')) and (every $s in tokenize('abc', ',') satisfies not(matches($s, '^(?:            ((.)+)      )$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00783'(_Config) ->
   Qry = "(every $s in tokenize(' abc       ', ',') satisfies matches($s, '^(?: ([^/]+)       )$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?: ([^/]+)       )$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00784'(_Config) ->
   Qry = "matches('qwerty','.*\\B(SUCCESS)\\B.*')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00785'(_Config) ->
   Qry = "matches('qwerty','\\060(\\061)?\\061')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00786'(_Config) ->
   Qry = "matches('qwerty','(\\x30\\x31\\x32)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00787'(_Config) ->
   Qry = "matches('qwerty','(\\u0034)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00788'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:(a+)(b*)(c?))$')) and (every $s in tokenize('aaabbbccc', ',') satisfies not(matches($s, '^(?:(a+)(b*)(c?))$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00789'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:(d+?)(e*?)(f??))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:(d+?)(e*?)(f??))$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00790'(_Config) ->
   Qry = "(every $s in tokenize('aaa', ',') satisfies matches($s, '^(?:(111|aaa))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:(111|aaa))$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00791'(_Config) ->
   Qry = "matches('qwerty','(abbc)(?(1)111|222)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00792'(_Config) ->
   Qry = "matches('qwerty','.*\\b(\\w+)\\b')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00793'(_Config) ->
   Qry = "(every $s in tokenize('ab.cc', ',') satisfies matches($s, '^(?:a+\\.?b*\\.+c{2})$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:a+\\.?b*\\.+c{2})$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00794'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:(abra(cad)?)+)$')) and (every $s in tokenize('abracadabra1abracadabra2abracadabra3', ',') satisfies not(matches($s, '^(?:(abra(cad)?)+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00795'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:^(cat|chat))$')) and (every $s in tokenize('cats are bad', ',') satisfies not(matches($s, '^(?:^(cat|chat))$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00796'(_Config) ->
   Qry = "(every $s in tokenize('209.25.0.111', ',') satisfies matches($s, '^(?:([0-9]+(\\.[0-9]+){3}))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:([0-9]+(\\.[0-9]+){3}))$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00797'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:qqq(123)*)$')) and (every $s in tokenize('Startqqq123123End', ',') satisfies not(matches($s, '^(?:qqq(123)*)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00798'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:(\\s)?(-))$')) and (every $s in tokenize('once -upon-a time', ',') satisfies not(matches($s, '^(?:(\\s)?(-))$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00799'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:a(.)c(.)e)$')) and (every $s in tokenize('123abcde456aBCDe789', ',') satisfies not(matches($s, '^(?:a(.)c(.)e)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00800'(_Config) ->
   Qry = "(every $s in tokenize('Price: 5 dollars', ',') satisfies matches($s, '^(?:(\\S+):\\W(\\d+)\\s(\\D+))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:(\\S+):\\W(\\d+)\\s(\\D+))$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00801'(_Config) ->
   Qry = "matches('qwerty','a[b-a]')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00802'(_Config) ->
   Qry = "matches('qwerty','a[]b')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00803'(_Config) ->
   Qry = "matches('qwerty','a[')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00804'(_Config) ->
   Qry = "matches('qwerty','a]')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00805'(_Config) ->
   Qry = "matches('qwerty','a[]]b')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00806'(_Config) ->
   Qry = "matches('qwerty','a[^]b]c')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00807'(_Config) ->
   Qry = "matches('qwerty','\\ba\\b')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00808'(_Config) ->
   Qry = "matches('qwerty','\\by\\b')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00809'(_Config) ->
   Qry = "matches('qwerty','\\Ba\\B')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00810'(_Config) ->
   Qry = "matches('qwerty','\\By\\b')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00811'(_Config) ->
   Qry = "matches('qwerty','\\by\\B')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00812'(_Config) ->
   Qry = "matches('qwerty','\\By\\B')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00813'(_Config) ->
   Qry = "matches('qwerty','(*)b')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00814'(_Config) ->
   Qry = "matches('qwerty','a\\')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00815'(_Config) ->
   Qry = "matches('qwerty','abc)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00816'(_Config) ->
   Qry = "matches('qwerty','(abc')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00817'(_Config) ->
   Qry = "matches('qwerty','a**')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00818'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:a.+?c)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:a.+?c)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00819'(_Config) ->
   Qry = "matches('qwerty','))((')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00820'(_Config) ->
   Qry = "matches('qwerty','\\10((((((((((a))))))))))')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00821'(_Config) ->
   Qry = "matches('qwerty','\\1(abc)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00822'(_Config) ->
   Qry = "matches('qwerty','\\1([a-c]*)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00823'(_Config) ->
   Qry = "matches('qwerty','\\1')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00824'(_Config) ->
   Qry = "matches('qwerty','\\2')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00825'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:(a)|\\1)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:(a)|\\1)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00826'(_Config) ->
   Qry = "matches('qwerty','(a)|\\6')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00827'(_Config) ->
   Qry = "matches('qwerty','(\\2b*?([a-c]))*')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00828'(_Config) ->
   Qry = "matches('qwerty','(\\2b*?([a-c])){3}')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00829'(_Config) ->
   Qry = "matches('qwerty','(x(a)\\3(\\2|b))+')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00830'(_Config) ->
   Qry = "matches('qwerty','((a)\\3(\\2|b)){2,}')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00831'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:ab*?bc)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:ab*?bc)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00832'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:ab{0,}?bc)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:ab{0,}?bc)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00833'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:ab+?bc)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:ab+?bc)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00834'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:ab{1,}?bc)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:ab{1,}?bc)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00835'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:ab{1,3}?bc)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:ab{1,3}?bc)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00836'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:ab{3,4}?bc)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:ab{3,4}?bc)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00837'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:ab{4,5}?bc)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:ab{4,5}?bc)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00838'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:ab??bc)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:ab??bc)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00839'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:ab{0,1}?bc)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:ab{0,1}?bc)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00840'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:ab??c)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:ab??c)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00841'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:ab{0,1}?c)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:ab{0,1}?c)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00842'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:a.*?c)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:a.*?c)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00843'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:a.{0,5}?c)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:a.{0,5}?c)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00844'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:(a+|b){0,1}?)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:(a+|b){0,1}?)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00845'(_Config) ->
   Qry = "matches('qwerty','(?:(?:(?:(?:(?:(?:(?:(?:(?:(a))))))))))')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
're00846'(_Config) ->
   Qry = "matches('qwerty','(?:(?:(?:(?:(?:(?:(?:(?:(?:(a|b|c))))))))))')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
're00847'(_Config) ->
   Qry = "matches('qwerty','(.)(?:b|c|d)a')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
're00848'(_Config) ->
   Qry = "matches('qwerty','(.)(?:b|c|d)*a')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
're00849'(_Config) ->
   Qry = "matches('qwerty','(.)(?:b|c|d)+?a')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
're00850'(_Config) ->
   Qry = "matches('qwerty','(.)(?:b|c|d)+a')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
're00851'(_Config) ->
   Qry = "matches('qwerty','(.)(?:b|c|d){2}a')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
're00852'(_Config) ->
   Qry = "matches('qwerty','(.)(?:b|c|d){4,5}a')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
're00853'(_Config) ->
   Qry = "matches('qwerty','(.)(?:b|c|d){4,5}?a')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
're00854'(_Config) ->
   Qry = "matches('qwerty',':(?:')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00855'(_Config) ->
   Qry = "matches('qwerty','(.)(?:b|c|d){6,7}a')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
're00856'(_Config) ->
   Qry = "matches('qwerty','(.)(?:b|c|d){6,7}?a')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
're00857'(_Config) ->
   Qry = "matches('qwerty','(.)(?:b|c|d){5,6}a')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
're00858'(_Config) ->
   Qry = "matches('qwerty','(.)(?:b|c|d){5,6}?a')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
're00859'(_Config) ->
   Qry = "matches('qwerty','(.)(?:b|c|d){5,7}a')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
're00860'(_Config) ->
   Qry = "matches('qwerty','(.)(?:b|c|d){5,7}?a')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
're00861'(_Config) ->
   Qry = "matches('qwerty','(.)(?:b|(c|e){1,2}?|d)+?a')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
're00862'(_Config) ->
   Qry = "matches('qwerty','^(?:a\\1?){4}$')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00863'(_Config) ->
   Qry = "matches('qwerty','^(?:a(?(1)\\1)){4}$')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00864'(_Config) ->
   Qry = "matches('qwerty','(?:(f)(o)(o)|(b)(a)(r))*')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00865'(_Config) ->
   Qry = "matches('qwerty','(?:..)*a')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
're00866'(_Config) ->
   Qry = "matches('qwerty','(?:..)*?a')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
're00867'(_Config) ->
   Qry = "matches('qwerty','(?:(?i)a)b')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00868'(_Config) ->
   Qry = "matches('qwerty','((?i)a)b')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00869'(_Config) ->
   Qry = "matches('qwerty','(?i:a)b')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00870'(_Config) ->
   Qry = "matches('qwerty','((?i:a))b')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00871'(_Config) ->
   Qry = "matches('qwerty','(?:(?-i)a)b')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00872'(_Config) ->
   Qry = "matches('qwerty','((?-i)a)b')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00873'(_Config) ->
   Qry = "matches('qwerty','(?-i:a)b')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00874'(_Config) ->
   Qry = "matches('qwerty','((?-i:a))b')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00875'(_Config) ->
   Qry = "matches('qwerty','((?-i:a.))b')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00876'(_Config) ->
   Qry = "matches('qwerty','((?s-i:a.))b')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00877'(_Config) ->
   Qry = "matches('qwerty','(?:c|d)(?:)(?:a(?:)(?:b)(?:b(?:))(?:b(?:)(?:b)))')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
're00878'(_Config) ->
   Qry = "matches('qwerty','(?:c|d)(?:)(?:aaaaaaaa(?:)(?:bbbbbbbb)(?:bbbbbbbb(?:))(?:bbbbbbbb(?:)(?:bbbbbbbb)))')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
're00879'(_Config) ->
   Qry = "matches('qwerty','\\1\\d(ab)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00880'(_Config) ->
   Qry = "matches('qwerty','x(~~)*(?:(?:F)?)?')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
're00881'(_Config) ->
   Qry = "matches('qwerty','^a(?#xxx){3}c')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00882'(_Config) ->
   Qry = "matches('qwerty','^a (?#xxx) (?#yyy) {3}c')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00883'(_Config) ->
   Qry = "matches('qwerty','^(?:?:a?b?)*$')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00884'(_Config) ->
   Qry = "matches('qwerty','((?s)^a(.))((?m)^b$)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00885'(_Config) ->
   Qry = "matches('qwerty','((?m)^b$)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00886'(_Config) ->
   Qry = "matches('qwerty','(?m)^b')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00887'(_Config) ->
   Qry = "matches('qwerty','(?m)^(b)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00888'(_Config) ->
   Qry = "matches('qwerty','((?m)^b)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00889'(_Config) ->
   Qry = "matches('qwerty','\\n((?m)^b)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00890'(_Config) ->
   Qry = "matches('qwerty','((?s).)c(?!.)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00891'(_Config) ->
   Qry = "matches('qwerty','((?s)b.)c(?!.)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00892'(_Config) ->
   Qry = "matches('qwerty','((c*)(?(1)a|b))')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00893'(_Config) ->
   Qry = "matches('qwerty','((q*)(?(1)b|a))')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00894'(_Config) ->
   Qry = "matches('qwerty','(?(1)a|b)(x)?')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00895'(_Config) ->
   Qry = "matches('qwerty','(?(1)b|a)(x)?')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00896'(_Config) ->
   Qry = "matches('qwerty','(?(1)b|a)()?')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00897'(_Config) ->
   Qry = "matches('qwerty','(?(1)b|a)()')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00898'(_Config) ->
   Qry = "matches('qwerty','(?(1)a|b)()?')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00899'(_Config) ->
   Qry = "matches('qwerty','^(?:?(2)(\\())blah(\\))?$')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00900'(_Config) ->
   Qry = "matches('qwerty','^(?:?(2)(\\())blah(\\)+)?$')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00901'(_Config) ->
   Qry = "matches('qwerty','(?(1?)a|b)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00902'(_Config) ->
   Qry = "matches('qwerty','(?(1)a|b|c)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00903'(_Config) ->
   Qry = "matches('qwerty','(ba\\2)(?=(a+?))')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00904'(_Config) ->
   Qry = "matches('qwerty','ba\\1(?=(a+?))$')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00905'(_Config) ->
   Qry = "matches('qwerty','(?>a+)b')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00906'(_Config) ->
   Qry = "matches('qwerty','([[:]+)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00907'(_Config) ->
   Qry = "matches('qwerty','([[=]+)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00908'(_Config) ->
   Qry = "matches('qwerty','([[.]+)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00909'(_Config) ->
   Qry = "matches('qwerty','[a[:xyz:')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00910'(_Config) ->
   Qry = "matches('qwerty','[a[:xyz:]')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00911'(_Config) ->
   Qry = "matches('qwerty','([a[:xyz:]b]+)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00912'(_Config) ->
   Qry = "matches('qwerty','((?>a+)b)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00913'(_Config) ->
   Qry = "matches('qwerty','(?>(a+))b')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00914'(_Config) ->
   Qry = "matches('qwerty','((?>[^()]+)|\\([^()]*\\))+')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00915'(_Config) ->
   Qry = "matches('qwerty','a{37,17}')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00916'(_Config) ->
   Qry = "matches('qwerty','a\\Z')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00917'(_Config) ->
   Qry = "matches('qwerty','b\\Z')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00918'(_Config) ->
   Qry = "matches('qwerty','b\\z')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00919'(_Config) ->
   Qry = "matches('qwerty','round\\(((?>[^()]+))\\)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00920'(_Config) ->
   Qry = "matches('qwerty','(a\\1|(?(1)\\1)){2}')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00921'(_Config) ->
   Qry = "matches('qwerty','(a\\1|(?(1)\\1)){1,2}')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00922'(_Config) ->
   Qry = "matches('qwerty','(a\\1|(?(1)\\1)){0,2}')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00923'(_Config) ->
   Qry = "matches('qwerty','(a\\1|(?(1)\\1)){2,}')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00924'(_Config) ->
   Qry = "matches('qwerty','(a\\1|(?(1)\\1)){1,2}?')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00925'(_Config) ->
   Qry = "matches('qwerty','(a\\1|(?(1)\\1)){0,2}?')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00926'(_Config) ->
   Qry = "matches('qwerty','(a\\1|(?(1)\\1)){2,}?')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00927'(_Config) ->
   Qry = "matches('qwerty','\\1a(\\d*){0,2}')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00928'(_Config) ->
   Qry = "matches('qwerty','\\1a(\\d*){2,}')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00929'(_Config) ->
   Qry = "matches('qwerty','\\1a(\\d*){0,2}?')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00930'(_Config) ->
   Qry = "matches('qwerty','\\1a(\\d*){2,}?')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00931'(_Config) ->
   Qry = "matches('qwerty','z\\1a(\\d*){2,}?')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00932'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:((((((((((a))))))))))\\10)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:((((((((((a))))))))))\\10)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00933'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:(abc)\\1)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:(abc)\\1)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00934'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:([a-c]*)\\1)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:([a-c]*)\\1)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00935'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:(([a-c])b*?\\2)*)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:(([a-c])b*?\\2)*)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00936'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:(([a-c])b*?\\2){3})$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:(([a-c])b*?\\2){3})$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00937'(_Config) ->
   Qry = "matches('qwerty','((\\3|b)\\2(a)x)+')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00938'(_Config) ->
   Qry = "matches('qwerty','((\\3|b)\\2(a)){2,}')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00939'(_Config) ->
   Qry = "matches('qwerty','a(?!b).')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00940'(_Config) ->
   Qry = "matches('qwerty','a(?=d).')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00941'(_Config) ->
   Qry = "matches('qwerty','a(?=c|d).')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00942'(_Config) ->
   Qry = "matches('qwerty','a(?:b|c|d)(.)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
're00943'(_Config) ->
   Qry = "matches('qwerty','a(?:b|c|d)*(.)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
're00944'(_Config) ->
   Qry = "matches('qwerty','a(?:b|c|d)+?(.)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
're00945'(_Config) ->
   Qry = "matches('qwerty','a(?:b|c|d)+(.)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
're00946'(_Config) ->
   Qry = "matches('qwerty','a(?:b|c|d){2}(.)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
're00947'(_Config) ->
   Qry = "matches('qwerty','a(?:b|c|d){4,5}(.)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
're00948'(_Config) ->
   Qry = "matches('qwerty','a(?:b|c|d){4,5}?(.)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
're00949'(_Config) ->
   Qry = "matches('qwerty','a(?:b|c|d){6,7}(.)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
're00950'(_Config) ->
   Qry = "matches('qwerty','a(?:b|c|d){6,7}?(.)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
're00951'(_Config) ->
   Qry = "matches('qwerty','a(?:b|c|d){5,6}(.)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
're00952'(_Config) ->
   Qry = "matches('qwerty','a(?:b|c|d){5,6}?(.)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
're00953'(_Config) ->
   Qry = "matches('qwerty','a(?:b|c|d){5,7}(.)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
're00954'(_Config) ->
   Qry = "matches('qwerty','a(?:b|c|d){5,7}?(.)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
're00955'(_Config) ->
   Qry = "matches('qwerty','a(?:b|(c|e){1,2}?|d)+?(.)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
're00956'(_Config) ->
   Qry = "matches('qwerty','^(?:?:b|a(?=(.)))*\\1')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00957'(_Config) ->
   Qry = "(every $s in tokenize('ab9ab', ',') satisfies matches($s, '^(?:(ab)\\d\\1)$')) and (every $s in tokenize('ab9aa', ',') satisfies not(matches($s, '^(?:(ab)\\d\\1)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00958'(_Config) ->
   Qry = "matches('qwerty','((q*)(?(1)a|b))')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00959'(_Config) ->
   Qry = "matches('qwerty','(x)?(?(1)a|b)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00960'(_Config) ->
   Qry = "matches('qwerty','(x)?(?(1)b|a)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00961'(_Config) ->
   Qry = "matches('qwerty','()?(?(1)b|a)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00962'(_Config) ->
   Qry = "matches('qwerty','()(?(1)b|a)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00963'(_Config) ->
   Qry = "matches('qwerty','()?(?(1)a|b)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00964'(_Config) ->
   Qry = "matches('qwerty','^(?:\\()?blah(?(1)(\\)))$')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00965'(_Config) ->
   Qry = "matches('qwerty','^(?:\\(+)?blah(?(1)(\\)))$')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00966'(_Config) ->
   Qry = "matches('qwerty','(?(?!a)a|b)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00967'(_Config) ->
   Qry = "matches('qwerty','(?(?!a)b|a)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00968'(_Config) ->
   Qry = "matches('qwerty','(?(?=a)b|a)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00969'(_Config) ->
   Qry = "matches('qwerty','(?(?=a)a|b)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00970'(_Config) ->
   Qry = "matches('qwerty','(?=(a+?))(\\1ab)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00971'(_Config) ->
   Qry = "matches('qwerty','^(?:?=(a+?))\\1ab')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00972'(_Config) ->
   Qry = "matches('33a34', '^(\\d){0,2}a\\1$')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
're00973'(_Config) ->
   Qry = "matches('333a334', '^(\\d*){2,}a\\1$')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
're00974'(_Config) ->
   Qry = "
         matches('22a3', '^(\\d*){0,2}?a\\1$')
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
're00975'(_Config) ->
   Qry = "
        matches('22a3', '^(\\d*){2,}?a\\1$')
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
're00976'(_Config) ->
   Qry = "
        matches('22a22z', '^(\\d*){2,}?a\\1z$')
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         xs:boolean
      ",
   case xqerl_types:type(Res) of
           'xs:boolean' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
're00976a'(_Config) ->
   Qry = "
        matches('22a22', '^(\\d*){2,}?a\\1z$')
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
're00976b'(_Config) ->
   Qry = "
        matches('22a22', '^(\\d{2,})a\\1$')
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00977'(_Config) ->
   Qry = "matches('qwerty','(?>\\d+)3')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00978'(_Config) ->
   Qry = "matches('qwerty','(\\w(?=aa)aa)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00979'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,768,769,770,771,772,773,774,775,776,777,778,779,780,781,782,783,784,785,786,787,788,789,790,791,792,793,794,795,796,797,798,799,800,801,802,803,804,805,806,807,808,809,810,811,812,813,814,815,816,817,818,819,820,821,822,823,824,825,826,827,828,829,830,831,832,833,834,835,836,837,838,839,840,841,842,843,844,845,846,847,848,849,850,851,852,853,854,855,856,857,858,859,860,861,862,863,864,865,866,867,868,869,870,871,872,873,874,875,876,877,878,879,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,111,109,98,105,110,105,110,103,68,105,97,99,114,105,116,105,99,97,108,77,97,114,107,115,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,97,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,111,109,98,105,110,105,110,103,68,105,97,99,114,105,116,105,99,97,108,77,97,114,107,115,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00980'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,1024,1025,1026,1027,1028,1029,1030,1031,1032,1033,1034,1035,1036,1037,1038,1039,1040,1041,1042,1043,1044,1045,1046,1047,1048,1049,1050,1051,1052,1053,1054,1055,1056,1057,1058,1059,1060,1061,1062,1063,1064,1065,1066,1067,1068,1069,1070,1071,1072,1073,1074,1075,1076,1077,1078,1079,1080,1081,1082,1083,1084,1085,1086,1087,1088,1089,1090,1091,1092,1093,1094,1095,1096,1097,1098,1099,1100,1101,1102,1103,1104,1105,1106,1107,1108,1109,1110,1111,1112,1113,1114,1115,1116,1117,1118,1119,1120,1121,1122,1123,1124,1125,1126,1127,1128,1129,1130,1131,1132,1133,1134,1135,1136,1137,1138,1139,1140,1141,1142,1143,1144,1145,1146,1147,1148,1149,1150,1151,1152,1153,1154,1155,1156,1157,1158,1159,1160,1161,1162,1163,1164,1165,1166,1167,1168,1169,1170,1171,1172,1173,1174,1175,1176,1177,1178,1179,1180,1181,1182,1183,1184,1185,1186,1187,1188,1189,1190,1191,1192,1193,1194,1195,1196,1197,1198,1199,1200,1201,1202,1203,1204,1205,1206,1207,1208,1209,1210,1211,1212,1213,1214,1215,1216,1217,1218,1219,1220,1221,1222,1223,1224,1225,1226,1227,1228,1229,1230,1231,1232,1233,1234,1235,1236,1237,1238,1239,1240,1241,1242,1243,1244,1245,1246,1247,1248,1249,1250,1251,1252,1253,1254,1255,1256,1257,1258,1259,1260,1261,1262,1263,1264,1265,1266,1267,1268,1269,1270,1271,1272,1273,1274,1275,1276,1277,1278,1279,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,121,114,105,108,108,105,99,125,43,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,97,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,92,112,123,73,115,67,121,114,105,108,108,105,99,125,43,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00981'(_Config) ->
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsHighSurrogates}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsHighSurrogates}+)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00982'(_Config) ->
   Qry = "(every $s in tokenize('test@someverylongemailaddress.com', ',') satisfies matches($s, '^(?:^([0-9a-zA-Z]([-.\\w]*[0-9a-zA-Z])*@(([0-9a-zA-Z])+([-\\w]*[0-9a-zA-Z])*\\.)+[a-zA-Z]{2,9}))$')) and (every $s in tokenize('mhk%mhk.me.uk', ',') satisfies not(matches($s, '^(?:^([0-9a-zA-Z]([-.\\w]*[0-9a-zA-Z])*@(([0-9a-zA-Z])+([-\\w]*[0-9a-zA-Z])*\\.)+[a-zA-Z]{2,9}))$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00983'(_Config) ->
   Qry = "(every $s in tokenize('first.last@seznam.cz,first-last@seznam.cz', ',') satisfies matches($s, '^(?:[\\w\\-\\.]+@.*)$')) and (every $s in tokenize('first_last@seznam.cz', ',') satisfies not(matches($s, '^(?:[\\w\\-\\.]+@.*)$')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00984'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,50,44,51,44,52,44,53,44,54,44,55,44,56,44,57,44,65,44,66,44,67,44,68,44,69,44,70,44,71,44,72,44,73,44,80,44,81,44,82,44,83,44,84,44,85,44,86,44,87,44,88,44,89,44,96,44,97,44,98,44,99,44,100,44,101,44,102,44,103,44,104,44,105,44,112,44,113,44,114,44,115,44,116,44,117,44,118,44,119,44,120,44,121,44,256,44,257,44,258,44,259,44,260,44,261,44,262,44,263,44,264,44,265,44,272,44,273,44,274,44,275,44,276,44,277,44,278,44,279,44,280,44,281,44,288,44,289,44,290,44,291,44,292,44,293,44,294,44,295,44,296,44,297,44,304,44,305,44,306,44,307,44,308,44,309,44,310,44,311,44,312,44,313,44,320,44,321,44,322,44,323,44,324,44,325,44,326,44,327,44,328,44,329,44,336,44,337,44,338,44,339,44,340,44,341,44,342,44,343,44,344,44,345,44,352,44,353,44,354,44,355,44,356,44,357,44,358,44,359,44,360,44,361,44,368,44,369,44,370,44,371,44,372,44,373,44,374,44,375,44,376,44,377,44,384,44,385,44,386,44,387,44,388,44,389,44,390,44,391,44,392,44,393,44,400,44,401,44,402,44,403,44,404,44,405,44,406,44,407,44,408,44,409,44,512,44,513,44,514,44,515,44,516,44,517,44,518,44,519,44,520,44,521,44,528,44,529,44,530,44,531,44,532,44,533,44,534,44,535,44,536,44,537,44,544,44,546,44,547,44,548,44,549,44,550,44,551,44,552,44,553,44,560,44,561,44,562,44,563,44,592,44,593,44,594,44,595,44,596,44,597,44,598,44,599,44,600,44,601,44,608,44,609,44,610,44,611,44,612,44,613,44,614,44,615,44,616,44,617,44,624,44,625,44,626,44,627,44,628,44,629,44,630,44,631,44,632,44,633,44,640,44,641,44,642,44,643,44,644,44,645,44,646,44,647,44,648,44,649,44,656,44,657,44,658,44,659,44,660,44,661,44,662,44,663,44,664,44,665,44,768,44,769,44,770,44,771,44,772,44,773,44,774,44,775,44,776,44,777,44,784,44,785,44,786,44,787,44,788,44,789,44,790,44,791,44,792,44,793,44,800,44,801,44,802,44,803,44,804,44,805,44,806,44,807,44,808,44,809,44,816,44,817,44,818,44,819,44,820,44,821,44,822,44,823,44,824,44,825,44,832,44,833,44,834,44,835,44,836,44,837,44,838,44,839,44,840,44,841,44,864,44,865,44,866,44,867,44,868,44,869,44,870,44,871,44,872,44,873,44,884,44,885,44,900,44,901,44,902,44,904,44,905,44,912,44,913,44,914,44,915,44,916,44,917,44,918,44,919,44,920,44,921,44,1024,44,1025,44,1026,44,1027,44,1028,44,1029,44,1030,44,1031,44,1032,44,1033,44,1040,44,1041,44,1042,44,1043,44,1044,44,1045,44,1046,44,1047,44,1048,44,1049,44,1056,44,1057,44,1058,44,1059,44,1060,44,1061,44,1062,44,1063,44,1064,44,1065,44,1072,44,1073,44,1074,44,1075,44,1076,44,1077,44,1078,44,1079,44,1080,44,1081,44,1088,44,1089,44,1090,44,1091,44,1092,44,1093,44,1094,44,1095,44,1096,44,1097,44,1104,44,1105,44,1106,44,1107,44,1108,44,1109,44,1110,44,1111,44,1112,44,1113,44,1120,44,1121,44,1122,44,1123,44,1124,44,1125,44,1126,44,1127,44,1128,44,1129,44,1136,44,1137,44,1138,44,1139,44,1140,44,1141,44,1142,44,1143,44,1144,44,1145,44,1152,44,1153,44,1154,44,1155,44,1156,44,1157,44,1158,44,1160,44,1161,44,1168,44,1169,44,1170,44,1171,44,1172,44,1173,44,1174,44,1175,44,1176,44,1177,44,1280,44,1281,44,1282,44,1283,44,1284,44,1285,44,1286,44,1287,44,1288,44,1289,44,1329,44,1330,44,1331,44,1332,44,1333,44,1334,44,1335,44,1336,44,1337,44,1344,44,1345,44,1346,44,1347,44,1348,44,1349,44,1350,44,1351,44,1352,44,1353,44,1360,44,1361,44,1362,44,1363,44,1364,44,1365,44,1366,44,1369,44,1377,44,1378,44,1379,44,1380,44,1381,44,1382,44,1383,44,1384,44,1385,44,1392,44,1393,44,1394,44,1395,44,1396,44,1397,44,1398,44,1399,44,1400,44,1401,44,1408,44,1409,44,1410,44,1411,44,1412,44,1413,44,1414,44,1415,44,1425,44,1426,44,1427,44,1428,44,1429,44,1430,44,1431,44,1432,44,1433,44,1569,44,1570,44,1571,44,1572,44,1573,44,1574,44,1575,44,1576,44,1577,44,1584,44,1585,44,1586,44,1587,44,1588,44,1589,44,1590,44,1591,44,1592,44,1593,44,1600,44,1601,44,1602,44,1603,44,1604,44,1605,44,1606,44,1607,44,1608,44,1609,44,1616,44,1617,44,1618,44,1619,44,1620,44,1621,44,1632,44,1633,44,1634,44,1635,44,1636,44,1637,44,1638,44,1639,44,1640,44,1641,44,1648,44,1649,44,1650,44,1651,44,1652,44,1653,44,1654,44,1655,44,1656,44,1657,44,1664,44,1665,44,1666,44,1667,44,1668,44,1669,44,1670,44,1671,44,1672,44,1673,44,1680,44,1681,44,1682,44,1683,44,1684,44,1685,44,1686,44,1687,44,1688,44,1689,44,1808,44,1809,44,1810,44,1811,44,1812,44,1813,44,1814,44,1815,44,1816,44,1817,44,1824,44,1825,44,1826,44,1827,44,1828,44,1829,44,1830,44,1831,44,1832,44,1833,44,1840,44,1841,44,1842,44,1843,44,1844,44,1845,44,1846,39,124,124,10,32,32,32,32,32,32,39,44,1847,44,1848,44,1849,44,1856,44,1857,44,1858,44,1859,44,1860,44,1861,44,1862,44,1863,44,1864,44,1865,44,1920,44,1921,44,1922,44,1923,44,1924,44,1925,44,1926,44,1927,44,1928,44,1929,44,1936,44,1937,44,1938,44,1939,44,1940,44,1941,44,1942,44,1943,44,1944,44,1945,44,2305,44,2306,44,2307,44,2309,44,2310,44,2311,44,2312,44,2313,44,2320,44,2321,44,2322,44,2323,44,2324,44,2325,44,2326,44,2327,44,2328,44,2329,44,2336,44,2337,44,2338,44,2339,44,2340,44,2341,44,2342,44,2343,44,2344,44,2345,44,2352,44,2353,44,2354,44,2355,44,2356,44,2357,44,2358,44,2359,44,2360,44,2361,44,2368,44,2369,44,2370,44,2371,44,2372,44,2373,44,2374,44,2375,44,2376,44,2377,44,2384,44,2385,44,2386,44,2387,44,2388,44,2392,44,2393,44,2400,44,2401,44,2402,44,2403,44,2406,44,2407,44,2408,44,2409,44,2433,44,2434,44,2435,44,2437,44,2438,44,2439,44,2440,44,2441,44,2448,44,2451,44,2452,44,2453,44,2454,44,2455,44,2456,44,2457,44,4096,44,4097,44,4098,44,4099,44,4100,44,4101,44,4102,44,4103,44,4104,44,4105,44,4112,44,4113,44,4114,44,4115,44,4116,44,4117,44,4118,44,4119,44,4120,44,4121,44,4128,44,4129,44,4131,44,4132,44,4133,44,4134,44,4135,44,4137,44,4144,44,4145,44,4146,44,4150,44,4151,44,4152,44,4153,44,4160,44,4161,44,4162,44,4163,44,4164,44,4165,44,4166,44,4167,44,4168,44,4169,44,4176,44,4177,44,4178,44,4179,44,4180,44,4181,44,4182,44,4183,44,4184,44,4185,44,4352,44,4353,44,4354,44,4355,44,4356,44,4357,44,4358,44,4359,44,4360,44,4361,44,4368,44,4369,44,4370,44,4371,44,4372,44,4373,44,4374,44,4375,44,4376,44,4377,44,4384,44,4385,44,4386,44,4387,44,4388,44,4389,44,4390,44,4391,44,4392,44,4393,44,4400,44,4401,44,4402,44,4403,44,4404,44,4405,44,4406,44,4407,44,4408,44,4409,44,4416,44,4417,44,4418,44,4419,44,4420,44,4421,44,4422,44,4423,44,4424,44,4425,44,4432,44,4433,44,4434,44,4435,44,4436,44,4437,44,4438,44,4439,44,4440,44,4441,44,4448,44,4449,44,4450,44,4451,44,4452,44,4453,44,4454,44,4455,44,4456,44,4457,44,4464,44,4465,44,4466,44,4467,44,4468,44,4469,44,4470,44,4471,44,4472,44,4473,44,4480,44,4481,44,4482,44,4483,44,4484,44,4485,44,4486,44,4487,44,4488,44,4489,44,4496,44,4497,44,4498,44,4499,44,4500,44,4501,44,4502,44,4503,44,4504,44,4505,44,4608,44,4609,44,4610,44,4611,44,4612,44,4613,44,4614,44,4616,44,4617,44,4624,44,4625,44,4626,44,4627,44,4628,44,4629,44,4630,44,4631,44,4632,44,4633,44,4640,44,4641,44,4642,44,4643,44,4644,44,4645,44,4646,44,4647,44,4648,44,4649,44,4656,44,4657,44,4658,44,4659,44,4660,44,4661,44,4662,44,4663,44,4664,44,4665,44,4672,44,4673,44,4674,44,4675,44,4676,44,4677,44,4678,44,4680,44,4688,44,4689,44,4690,44,4691,44,4692,44,4693,44,4694,44,4696,44,4704,44,4705,44,4706,44,4707,44,4708,44,4709,44,4710,44,4711,44,4712,44,4713,44,4720,44,4721,44,4722,44,4723,44,4724,44,4725,44,4726,44,4727,44,4728,44,4729,44,4736,44,4737,44,4738,44,4739,44,4740,44,4741,44,4742,44,4744,44,4752,44,4753,44,4754,44,4755,44,4756,44,4757,44,4758,44,4759,44,4760,44,4761,44,4864,44,4865,44,4866,44,4867,44,4868,44,4869,44,4870,44,4871,44,4872,44,4873,44,4880,44,4882,44,4883,44,4884,44,4885,44,4888,44,4889,44,4896,44,4897,44,4898,44,4899,44,4900,44,4901,44,4902,44,4903,44,4904,44,4905,44,4912,44,4913,44,4914,44,4915,44,4916,44,4917,44,4918,44,4919,44,4920,44,4921,44,4928,44,4929,44,4930,44,4931,44,4932,44,4933,44,4934,44,4936,44,4937,44,4944,44,4945,44,4946,44,4947,44,4948,44,4949,44,4950,44,4951,44,4952,44,4953,44,4969,44,4976,44,4977,44,4978,44,4979,44,4980,44,4981,44,4982,44,4983,44,4984,44,4985,44,5121,44,5122,44,5123,44,5124,44,5125,44,5126,44,5127,44,5128,44,5129,44,5136,44,5137,44,5138,44,5139,44,5140,44,5141,44,5142,44,5143,44,5144,44,5145,44,5152,44,5153,44,5154,44,5155,44,5156,44,5157,44,5158,44,5159,44,5160,44,5161,44,5168,44,5169,44,5170,44,5171,44,5172,44,5173,44,5174,44,5175,44,5176,44,5177,44,5184,44,5185,44,5186,44,5187,44,5188,44,5189,44,5190,44,5191,44,5192,44,5193,44,5200,44,5201,44,5202,44,5203,44,5204,44,5205,44,5206,44,5207,44,5208,44,5209,44,5216,44,5217,44,5218,44,5219,44,5220,44,5221,44,5222,44,5223,44,5224,44,5225,44,5232,44,5233,44,5234,44,5235,44,5236,44,5237,44,5238,44,5239,44,5240,44,5241,44,5248,44,5249,44,5250,44,5251,44,5252,44,5253,44,5254,44,5255,44,5256,44,5257,44,5264,39,124,124,10,32,32,32,32,32,32,39,44,5265,44,5266,44,5267,44,5268,44,5269,44,5270,44,5271,44,5272,44,5273,44,5376,44,5377,44,5378,44,5379,44,5380,44,5381,44,5382,44,5383,44,5384,44,5385,44,5392,44,5393,44,5394,44,5395,44,5396,44,5397,44,5398,44,5399,44,5400,44,5401,44,5408,44,5409,44,5410,44,5411,44,5412,44,5413,44,5414,44,5415,44,5416,44,5417,44,5424,44,5425,44,5426,44,5427,44,5428,44,5429,44,5430,44,5431,44,5432,44,5433,44,5440,44,5441,44,5442,44,5443,44,5444,44,5445,44,5446,44,5447,44,5448,44,5449,44,5456,44,5457,44,5458,44,5459,44,5460,44,5461,44,5462,44,5463,44,5464,44,5465,44,5472,44,5473,44,5474,44,5475,44,5476,44,5477,44,5478,44,5479,44,5480,44,5481,44,5488,44,5489,44,5490,44,5491,44,5492,44,5493,44,5494,44,5495,44,5496,44,5497,44,5504,44,5505,44,5506,44,5507,44,5508,44,5509,44,5510,44,5511,44,5512,44,5513,44,5520,44,5521,44,5522,44,5523,44,5524,44,5525,44,5526,44,5527,44,5528,44,5529,44,5632,44,5633,44,5634,44,5635,44,5636,44,5637,44,5638,44,5639,44,5640,44,5641,44,5648,44,5649,44,5650,44,5651,44,5652,44,5653,44,5654,44,5655,44,5656,44,5657,44,5664,44,5665,44,5666,44,5667,44,5668,44,5669,44,5670,44,5671,44,5672,44,5673,44,5680,44,5681,44,5682,44,5683,44,5684,44,5685,44,5686,44,5687,44,5688,44,5689,44,5696,44,5697,44,5698,44,5699,44,5700,44,5701,44,5702,44,5703,44,5704,44,5705,44,5712,44,5713,44,5714,44,5715,44,5716,44,5717,44,5718,44,5719,44,5720,44,5721,44,5728,44,5729,44,5730,44,5731,44,5732,44,5733,44,5734,44,5735,44,5736,44,5737,44,5744,44,5745,44,5746,44,5747,44,5748,44,5749,44,5750,44,5761,44,5762,44,5763,44,5764,44,5765,44,5766,44,5767,44,5768,44,5769,44,5776,44,5777,44,5778,44,5779,44,5780,44,5781,44,5782,44,5783,44,5784,44,5785,44,5888,44,5889,44,5890,44,5891,44,5892,44,5893,44,5894,44,5895,44,5896,44,5897,44,5904,44,5905,44,5906,44,5907,44,5908,44,5920,44,5921,44,5922,44,5923,44,5924,44,5925,44,5926,44,5927,44,5928,44,5929,44,5936,44,5937,44,5938,44,5939,44,5940,44,5952,44,5953,44,5954,44,5955,44,5956,44,5957,44,5958,44,5959,44,5960,44,5961,44,5968,44,5969,44,5970,44,5971,44,5984,44,5985,44,5986,44,5987,44,5988,44,5989,44,5990,44,5991,44,5992,44,5993,44,6000,44,6002,44,6003,44,6016,44,6017,44,6018,44,6019,44,6020,44,6021,44,6022,44,6023,44,6024,44,6025,44,6032,44,6033,44,6034,44,6035,44,6036,44,6037,44,6038,44,6039,44,6040,44,6041,44,6160,44,6161,44,6162,44,6163,44,6164,44,6165,44,6166,44,6167,44,6168,44,6169,44,6176,44,6177,44,6178,44,6179,44,6180,44,6181,44,6182,44,6183,44,6184,44,6185,44,6192,44,6193,44,6194,44,6195,44,6196,44,6197,44,6198,44,6199,44,6200,44,6201,44,6208,44,6209,44,6210,44,6211,44,6212,44,6213,44,6214,44,6215,44,6216,44,6217,44,6224,44,6225,44,6226,44,6227,44,6228,44,6229,44,6230,44,6231,44,6232,44,6233,44,6240,44,6241,44,6242,44,6243,44,6244,44,6245,44,6246,44,6247,44,6248,44,6249,44,6256,44,6257,44,6258,44,6259,44,6260,44,6261,44,6262,44,6263,44,6272,44,6273,44,6274,44,6275,44,6276,44,6277,44,6278,44,6279,44,6280,44,6281,44,6288,44,6289,44,6290,44,6291,44,6292,44,6293,44,6294,44,6295,44,6296,44,6297,44,8260,44,8274,44,8304,44,8305,44,8308,44,8309,44,8310,44,8311,44,8312,44,8313,44,8320,44,8321,44,8322,44,8323,44,8324,44,8325,44,8326,44,8327,44,8328,44,8329,44,8448,44,8449,44,8450,44,8451,44,8452,44,8453,44,8454,44,8455,44,8456,44,8457,44,8464,44,8465,44,8466,44,8467,44,8468,44,8469,44,8470,44,8471,44,8472,44,8473,44,8480,44,8481,44,8482,44,8483,44,8484,44,8485,44,8486,44,8487,44,8488,44,8489,44,8496,44,8497,44,8498,44,8499,44,8500,44,8501,44,8502,44,8503,44,8504,44,8505,44,8512,44,8513,44,8514,44,8515,44,8516,44,8517,44,8518,44,8519,44,8520,44,8521,44,8531,44,8532,44,8533,44,8534,44,8535,44,8536,44,8537,44,8544,44,8545,44,8546,44,8547,44,8548,44,8549,44,8550,44,8551,44,8552,44,8553,44,8560,44,8561,44,8562,44,8563,44,8564,44,8565,44,8566,44,8567,44,8568,44,8569,44,8576,44,8577,44,8578,44,8579,44,8592,44,8593,44,8594,44,8595,44,8596,44,8597,44,8598,44,8599,44,8600,44,8601,44,8704,44,8705,44,8706,44,8707,44,8708,44,8709,44,8710,44,8711,44,8712,44,8713,44,8720,44,8721,44,8722,44,8723,44,8724,44,8725,44,8726,44,8727,44,8728,44,8729,44,8736,44,8737,44,8738,44,8739,44,8740,44,8741,44,8742,44,8743,44,8744,44,8745,44,8752,44,8753,44,8754,44,8755,44,8756,44,8757,39,124,124,10,32,32,32,32,32,32,39,44,8758,44,8759,44,8760,44,8761,44,8768,44,8769,44,8770,44,8771,44,8772,44,8773,44,8774,44,8775,44,8776,44,8777,44,8784,44,8785,44,8786,44,8787,44,8788,44,8789,44,8790,44,8791,44,8792,44,8793,44,8800,44,8801,44,8802,44,8803,44,8804,44,8805,44,8806,44,8807,44,8808,44,8809,44,8816,44,8817,44,8818,44,8819,44,8820,44,8821,44,8822,44,8823,44,8824,44,8825,44,8832,44,8833,44,8834,44,8835,44,8836,44,8837,44,8838,44,8839,44,8840,44,8841,44,8848,44,8849,44,8850,44,8851,44,8852,44,8853,44,8854,44,8855,44,8856,44,8857,44,8960,44,8961,44,8962,44,8963,44,8964,44,8965,44,8966,44,8967,44,8968,44,8969,44,8976,44,8977,44,8978,44,8979,44,8980,44,8981,44,8982,44,8983,44,8984,44,8985,44,8992,44,8993,44,8994,44,8995,44,8996,44,8997,44,8998,44,8999,44,9000,44,9008,44,9009,44,9010,44,9011,44,9012,44,9013,44,9014,44,9015,44,9016,44,9017,44,9024,44,9025,44,9026,44,9027,44,9028,44,9029,44,9030,44,9031,44,9032,44,9033,44,9040,44,9041,44,9042,44,9043,44,9044,44,9045,44,9046,44,9047,44,9048,44,9049,44,9056,44,9057,44,9058,44,9059,44,9060,44,9061,44,9062,44,9063,44,9064,44,9065,44,9072,44,9073,44,9074,44,9075,44,9076,44,9077,44,9078,44,9079,44,9080,44,9081,44,9088,44,9089,44,9090,44,9091,44,9092,44,9093,44,9094,44,9095,44,9096,44,9097,44,9104,44,9105,44,9106,44,9107,44,9108,44,9109,44,9110,44,9111,44,9112,44,9113,44,9216,44,9217,44,9218,44,9219,44,9220,44,9221,44,9222,44,9223,44,9224,44,9225,44,9232,44,9233,44,9234,44,9235,44,9236,44,9237,44,9238,44,9239,44,9240,44,9241,44,9248,44,9249,44,9250,44,9251,44,9252,44,9253,44,9254,44,9280,44,9281,44,9282,44,9283,44,9284,44,9285,44,9286,44,9287,44,9288,44,9289,44,9312,44,9313,44,9314,44,9315,44,9316,44,9317,44,9318,44,9319,44,9320,44,9321,44,9328,44,9329,44,9330,44,9331,44,9332,44,9333,44,9334,44,9335,44,9336,44,9337,44,9344,44,9345,44,9346,44,9347,44,9348,44,9349,44,9350,44,9351,44,9352,44,9353,44,9360,44,9361,44,9362,44,9363,44,9364,44,9365,44,9366,44,9367,44,9368,44,9369,44,9472,44,9473,44,9474,44,9475,44,9476,44,9477,44,9478,44,9479,44,9480,44,9481,44,9488,44,9489,44,9490,44,9491,44,9492,44,9493,44,9494,44,9495,44,9496,44,9497,44,9504,44,9505,44,9506,44,9507,44,9508,44,9509,44,9510,44,9511,44,9512,44,9513,44,9520,44,9521,44,9522,44,9523,44,9524,44,9525,44,9526,44,9527,44,9528,44,9529,44,9536,44,9537,44,9538,44,9539,44,9540,44,9541,44,9542,44,9543,44,9544,44,9545,44,9552,44,9553,44,9554,44,9555,44,9556,44,9557,44,9558,44,9559,44,9560,44,9561,44,9568,44,9569,44,9570,44,9571,44,9572,44,9573,44,9574,44,9575,44,9576,44,9577,44,9584,44,9585,44,9586,44,9587,44,9588,44,9589,44,9590,44,9591,44,9592,44,9593,44,9600,44,9601,44,9602,44,9603,44,9604,44,9605,44,9606,44,9607,44,9608,44,9609,44,9616,44,9617,44,9618,44,9619,44,9620,44,9621,44,9622,44,9623,44,9624,44,9625,44,9728,44,9729,44,9730,44,9731,44,9732,44,9733,44,9734,44,9735,44,9736,44,9737,44,9744,44,9745,44,9746,44,9747,44,9750,44,9751,44,9753,44,9760,44,9761,44,9762,44,9763,44,9764,44,9765,44,9766,44,9767,44,9768,44,9769,44,9776,44,9777,44,9778,44,9779,44,9780,44,9781,44,9782,44,9783,44,9784,44,9785,44,9792,44,9793,44,9794,44,9795,44,9796,44,9797,44,9798,44,9799,44,9800,44,9801,44,9808,44,9809,44,9810,44,9811,44,9812,44,9813,44,9814,44,9815,44,9816,44,9817,44,9824,44,9825,44,9826,44,9827,44,9828,44,9829,44,9830,44,9831,44,9832,44,9833,44,9840,44,9841,44,9842,44,9843,44,9844,44,9845,44,9846,44,9847,44,9848,44,9849,44,9856,44,9857,44,9858,44,9859,44,9860,44,9861,44,9862,44,9863,44,9864,44,9865,44,9985,44,9986,44,9987,44,9988,44,9990,44,9991,44,9992,44,9993,44,10000,44,10001,44,10002,44,10003,44,10004,44,10005,44,10006,44,10007,44,10008,44,10009,44,10016,44,10017,44,10018,44,10019,44,10020,44,10021,44,10022,44,10023,44,10025,44,10032,44,10033,44,10034,44,10035,44,10036,44,10037,44,10038,44,10039,44,10040,44,10041,44,10048,44,10049,44,10050,44,10051,44,10052,44,10053,44,10054,44,10055,44,10056,44,10057,44,10064,44,10065,44,10066,44,10070,44,10072,44,10073,44,10081,44,10082,44,10083,44,10084,44,10085,44,10086,44,10087,44,10102,44,10103,44,10104,44,10105,44,10112,44,10113,44,10114,44,10115,44,10116,44,10117,44,10118,44,10119,44,10120,44,10121,44,10128,44,10129,44,10130,44,10131,44,10132,44,10136,44,10137,44,10240,44,10241,44,10242,44,10243,44,10244,44,10245,44,10246,44,10247,44,10248,44,10249,44,10256,44,10257,44,10258,44,10259,44,10260,44,10261,44,10262,44,10263,44,10264,44,10265,44,10272,44,10273,44,10274,44,10275,44,10276,44,10277,44,10278,44,10279,44,10280,44,10281,44,10288,44,10289,44,10290,44,10291,44,10292,44,10293,44,10294,44,10295,44,10296,44,10297,44,10304,44,10305,44,10306,44,10307,44,10308,44,10309,44,10310,44,10311,44,10312,44,10313,44,10320,44,10321,44,10322,44,10323,44,10324,44,10325,44,10326,44,10327,44,10328,44,10329,44,10336,44,10337,44,10338,44,10339,44,10340,44,10341,44,10342,44,10343,44,10344,44,10345,44,10352,44,10353,44,10354,44,10355,44,10356,44,10357,44,10358,44,10359,44,10360,44,10361,44,10368,44,10369,44,10370,44,10371,44,10372,44,10373,44,10374,44,10375,44,10376,44,10377,44,10384,44,10385,44,10386,44,10387,44,10388,44,10389,44,10390,44,10391,44,10392,44,10393,44,10496,44,10497,44,10498,44,10499,44,10500,44,10501,44,10502,44,10503,44,10504,44,10505,44,10512,44,10513,44,10514,44,10515,44,10516,44,10517,44,10518,44,10519,44,10520,44,10521,44,10528,44,10529,44,10530,44,10531,44,10532,44,10533,44,10534,44,10535,44,10536,44,10537,44,10544,44,10545,44,10546,44,10547,44,10548,44,10549,44,10550,44,10551,44,10552,44,10553,44,10560,44,10561,44,10562,44,10563,44,10564,44,10565,44,10566,44,10567,44,10568,44,10569,44,10576,44,10577,44,10578,44,10579,44,10580,44,10581,44,10582,44,10583,44,10584,44,10585,44,10592,44,10593,44,10594,44,10595,44,10596,44,10597,44,10598,44,10599,44,10600,44,10601,44,10608,44,10609,44,10610,44,10611,44,10612,44,10613,44,10614,44,10615,44,10616,44,10617,44,10624,44,10625,44,10626,44,10649,44,12292,44,12293,44,12294,44,12295,44,12306,44,12307,44,12320,44,12321,44,12322,44,12323,44,12324,44,12325,44,12326,44,12327,44,12328,44,12329,44,12337,44,12338,44,12339,44,12340,44,12341,44,12342,44,12343,44,12344,44,12345,44,12353,44,12354,44,12355,44,12356,44,12357,44,12358,44,12359,44,12360,44,12361,44,12368,44,12369,44,12370,44,12371,44,12372,44,12373,44,12374,44,12375,44,12376,44,12377,44,12384,44,12385,44,12386,44,12387,44,12388,44,12389,44,12390,44,12391,44,12392,44,12393,44,12400,44,12401,44,12402,44,12403,44,12404,44,12405,44,12406,44,12407,44,12408,44,12409,44,12416,44,12417,44,12418,44,12419,44,12420,44,12421,44,12422,44,12423,44,12424,44,12425,44,12432,44,12433,44,12434,44,12435,44,12436,44,12437,44,12438,44,12441,44,12549,44,12550,44,12551,44,12552,44,12553,44,12560,44,12561,44,12562,44,12563,44,12564,44,12565,44,12566,44,12567,44,12568,44,12569,44,12576,44,12577,44,12578,44,12579,44,12580,44,12581,44,12582,44,12583,44,12584,44,12585,44,12593,44,12594,44,12595,44,12596,44,12597,44,12598,44,12599,44,12600,44,12601,44,12608,44,12609,44,12610,44,12611,44,12612,44,12613,44,12614,44,12615,44,12616,44,12617,44,12624,44,12625,44,12626,44,12627,44,12628,44,12629,44,12630,44,12631,44,12632,44,12633,44,12640,44,12641,44,12642,44,12643,44,12644,44,12645,44,12646,44,12647,44,12648,44,12649,44,12656,44,12657,44,12658,44,12659,44,12660,44,12661,44,12662,44,12663,44,12664,44,12665,44,12672,44,12673,44,12674,44,12675,44,12676,44,12677,44,12678,44,12679,44,12680,44,12681,44,12688,44,12689,44,12690,44,12691,44,12692,44,12693,44,12694,44,12695,44,12696,44,12697,44,12800,44,12801,44,12802,44,12803,44,12804,44,12805,44,12806,44,12807,44,12808,44,12809,44,12816,44,12817,44,12818,44,12819,44,12820,44,12821,44,12822,44,12823,44,12824,44,12825,44,12832,44,12833,44,12834,44,12835,44,12836,44,12837,44,12838,44,12839,44,12840,44,12841,44,12848,44,12849,44,12850,44,12851,44,12852,44,12853,44,12854,44,12855,44,12856,44,12857,44,12864,44,12865,44,12866,44,12867,44,12881,44,12882,44,12883,44,12884,44,12885,44,12886,44,12887,44,12888,44,12889,44,12896,44,12897,44,12898,44,12899,44,12900,44,12901,44,12902,44,12903,44,12904,44,12905,44,12912,44,12913,44,12914,44,12915,44,12916,44,12917,44,12918,44,12919,44,12920,44,12921,44,12928,44,12929,44,12930,44,12931,44,12932,44,12933,44,12934,44,12935,44,12936,44,12937,44,12944,44,12945,44,12946,44,12947,44,12948,44,12949,44,12950,44,12951,44,12952,44,12953,44,13056,44,13057,44,13058,44,13059,44,13060,44,13061,44,13062,44,13063,44,13064,44,13065,44,13072,44,13073,44,13074,44,13075,44,13076,44,13077,44,13078,44,13079,44,13080,44,13081,44,13088,44,13089,44,13090,44,13091,44,13092,44,13093,44,13094,44,13095,44,13096,44,13097,44,13104,44,13105,44,13106,44,13107,44,13108,44,13109,44,13110,44,13111,44,13112,44,13113,44,13120,44,13121,44,13122,44,13123,44,13124,44,13125,44,13126,44,13127,44,13128,44,13129,44,13136,44,13137,44,13138,44,13139,44,13140,44,13141,44,13142,44,13143,44,13144,44,13145,44,13152,44,13153,44,13154,44,13155,44,13156,44,13157,44,13158,44,13159,44,13160,44,13161,44,13168,44,13169,44,13170,44,13171,44,13172,44,13173,44,13174,44,13184,44,13185,44,13186,44,13187,44,13188,44,13189,44,13190,44,13191,44,13192,44,13193,44,13200,44,13201,44,13202,44,13203,44,13204,44,13205,44,13206,44,13207,44,13208,44,13209,44,13312,44,13313,44,13314,44,13315,44,13316,44,13317,44,13318,44,13319,44,13320,44,13321,44,13328,44,13329,44,13330,44,13331,44,13332,44,13333,44,13334,44,13335,44,13336,44,13337,44,13344,44,13345,44,13346,44,13347,44,13348,44,13349,44,13350,44,13351,44,13352,44,13353,44,13360,44,13361,44,13362,44,13363,44,13364,44,13365,44,13366,44,13367,44,13368,44,13369,44,13376,44,13377,44,13378,44,13379,44,13380,44,13381,44,13382,44,13383,44,13384,44,13385,44,13392,44,13393,44,13394,44,13395,44,13396,44,13397,44,13398,44,13399,44,13400,44,13401,44,13408,44,13409,44,13410,44,13411,44,13412,44,13413,44,13414,44,13415,44,13416,44,13417,44,13424,44,13425,44,13426,44,13427,44,13428,44,13429,44,13430,44,13431,44,13432,44,13433,44,13440,44,13441,44,13442,44,13443,44,13444,44,13445,44,13446,44,13447,44,13448,44,13449,44,13456,44,13457,44,13458,44,13459,44,13460,44,13461,44,13462,44,13463,44,13464,44,13465,44,13568,44,13569,44,13570,44,13571,44,13572,44,13573,44,13574,44,13575,44,13576,44,13577,44,13584,44,13585,44,13586,44,13587,44,13588,44,13589,44,13590,44,13591,44,13592,44,13593,44,13600,44,13601,44,13602,44,13603,44,13604,44,13605,44,13606,44,13607,44,13608,44,13609,44,13616,44,13617,44,13618,44,13619,44,13620,44,13621,44,13622,44,13623,44,13624,44,13625,44,13632,44,13633,44,13634,44,13635,44,13636,44,13637,44,13638,44,13639,44,13640,44,13641,44,13648,44,13649,44,13650,44,13651,44,13652,44,13653,44,13654,44,13655,44,13656,44,13657,44,13664,44,13665,44,13666,44,13667,44,13668,44,13669,44,13670,44,13671,44,13672,44,13673,44,13680,44,13681,44,13682,44,13683,44,13684,44,13685,44,13686,44,13687,44,13688,44,13689,44,13696,44,13697,44,13698,44,13699,44,13700,44,13701,44,13702,44,13703,44,13704,44,13705,44,13712,44,13713,44,13714,44,13715,44,13716,44,13717,44,13718,44,13719,44,13720,44,13721,44,13824,44,13825,44,13826,44,13827,44,13828,44,13829,44,13830,44,13831,44,13832,44,13833,44,13840,44,13841,44,13842,44,13843,44,13844,44,13845,44,13846,44,13847,44,13848,44,13849,44,13856,44,13857,44,13858,44,13859,44,13860,44,13861,44,13862,44,13863,44,13864,44,13865,44,13872,44,13873,44,13874,44,13875,44,13876,44,13877,44,13878,44,13879,44,13880,44,13881,44,13888,44,13889,44,13890,44,13891,44,13892,44,13893,44,13894,44,13895,44,13896,44,13897,44,13904,44,13905,44,13906,44,13907,44,13908,44,13909,44,13910,44,13911,44,13912,44,13913,44,13920,44,13921,44,13922,44,13923,44,13924,44,13925,44,13926,44,13927,44,13928,44,13929,44,13936,44,13937,44,13938,44,13939,44,13940,44,13941,44,13942,44,13943,44,13944,44,13945,44,13952,44,13953,44,13954,44,13955,44,13956,44,13957,44,13958,44,13959,44,13960,44,13961,44,13968,44,13969,44,13970,44,13971,44,13972,44,13973,44,13974,44,13975,44,13976,44,13977,44,14080,44,14081,44,14082,44,14083,44,14084,44,14085,44,14086,44,14087,44,14088,44,14089,44,14096,44,14097,44,14098,44,14099,44,14100,44,14101,44,14102,44,14103,44,14104,44,14105,44,14112,44,14113,44,14114,44,14115,44,14116,44,14117,44,14118,44,14119,44,14120,44,14121,44,14128,44,14129,44,14130,44,14131,44,14132,44,14133,44,14134,44,14135,44,14136,44,14137,44,14144,44,14145,44,14146,44,14147,44,14148,44,14149,44,14150,44,14151,44,14152,44,14153,44,14160,44,14161,44,14162,44,14163,44,14164,44,14165,44,14166,44,14167,44,14168,44,14169,44,14176,44,14177,44,14178,44,14179,44,14180,44,14181,44,14182,44,14183,44,14184,44,14185,44,14192,44,14193,44,14194,44,14195,44,14196,44,14197,44,14198,44,14199,44,14200,44,14201,44,14208,44,14209,44,14210,44,14211,44,14212,44,14213,44,14214,44,14215,44,14216,44,14217,44,14224,44,14225,44,14226,44,14227,44,14228,44,14229,44,14230,44,14231,44,14232,44,14233,44,14336,44,14337,44,14338,44,14339,44,14340,44,14341,44,14342,44,14343,44,14344,44,14345,44,14352,44,14353,44,14354,44,14355,44,14356,44,14357,44,14358,44,14359,44,14360,44,14361,44,14368,44,14369,44,14370,44,14371,44,14372,44,14373,44,14374,44,14375,44,14376,44,14377,44,14384,44,14385,44,14386,44,14387,44,14388,44,14389,44,14390,44,14391,44,14392,44,14393,44,14400,44,14401,44,14402,44,14403,44,14404,44,14405,44,14406,44,14407,44,14408,44,14409,44,14416,44,14417,44,14418,44,14419,44,14420,44,14421,44,14422,44,14423,44,14424,44,14425,44,14432,44,14433,44,14434,44,14435,44,14436,44,14437,44,14438,44,14439,44,14440,44,14441,44,14448,44,14449,44,14450,44,14451,44,14452,44,14453,44,14454,44,14455,44,14456,44,14457,44,14464,44,14465,44,14466,44,14467,44,14468,44,14469,44,14470,44,14471,44,14472,44,14473,44,14480,44,14481,44,14482,44,14483,44,14484,44,14485,44,14486,44,14487,44,14488,44,14489,44,14592,44,14593,44,14594,44,14595,44,14596,44,14597,44,14598,44,14599,44,14600,44,14601,44,14608,44,14609,44,14610,44,14611,44,14612,44,14613,44,14614,44,14615,44,14616,44,14617,44,14624,44,14625,44,14626,44,14627,44,14628,44,14629,44,14630,44,14631,44,14632,44,14633,44,14640,44,14641,44,14642,44,14643,44,14644,44,14645,44,14646,44,14647,44,14648,44,14649,44,14656,44,14657,44,14658,44,14659,44,14660,44,14661,44,14662,44,14663,44,14664,44,14665,44,14672,44,14673,44,14674,44,14675,44,14676,44,14677,44,14678,44,14679,44,14680,44,14681,44,14688,44,14689,44,14690,44,14691,44,14692,44,14693,44,14694,44,14695,44,14696,44,14697,44,14704,44,14705,44,14706,44,14707,44,14708,44,14709,44,14710,44,14711,44,14712,44,14713,44,14720,44,14721,44,14722,44,14723,44,14724,44,14725,44,14726,44,14727,44,14728,44,14729,44,14736,44,14737,44,14738,44,14739,44,14740,44,14741,44,14742,44,14743,44,14744,44,14745,44,16384,44,16385,44,16386,44,16387,44,16388,44,16389,44,16390,44,16391,44,16392,44,16393,44,16400,44,16401,44,16402,44,16403,44,16404,44,16405,44,16406,44,16407,44,16408,44,16409,44,16416,44,16417,44,16418,44,16419,44,16420,44,16421,44,16422,44,16423,44,16424,44,16425,44,16432,44,16433,44,16434,44,16435,44,16436,44,16437,44,16438,44,16439,44,16440,44,16441,44,16448,44,16449,44,16450,44,16451,44,16452,44,16453,44,16454,44,16455,44,16456,44,16457,44,16464,44,16465,44,16466,44,16467,44,16468,44,16469,44,16470,44,16471,44,16472,44,16473,44,16480,44,16481,44,16482,44,16483,44,16484,44,16485,44,16486,44,16487,44,16488,44,16489,44,16496,44,16497,44,16498,44,16499,44,16500,44,16501,44,16502,44,16503,44,16504,44,16505,44,16512,44,16513,44,16514,44,16515,44,16516,44,16517,44,16518,44,16519,44,16520,44,16521,44,16528,44,16529,44,16530,44,16531,44,16532,44,16533,44,16534,44,16535,44,16536,44,16537,44,16640,44,16641,44,16642,44,16643,44,16644,44,16645,44,16646,44,16647,44,16648,44,16649,44,16656,44,16657,44,16658,44,16659,44,16660,44,16661,44,16662,44,16663,44,16664,44,16665,44,16672,44,16673,44,16674,44,16675,44,16676,44,16677,44,16678,44,16679,44,16680,44,16681,44,16688,44,16689,44,16690,44,16691,44,16692,44,16693,44,16694,44,16695,44,16696,44,16697,44,16704,44,16705,44,16706,44,16707,44,16708,44,16709,44,16710,44,16711,44,16712,44,16713,44,16720,44,16721,44,16722,44,16723,44,16724,44,16725,44,16726,44,16727,44,16728,44,16729,44,16736,44,16737,44,16738,44,16739,44,16740,44,16741,44,16742,44,16743,44,16744,44,16745,44,16752,44,16753,44,16754,44,16755,44,16756,44,16757,44,16758,44,16759,44,16760,44,16761,44,16768,44,16769,44,16770,44,16771,44,16772,44,16773,44,16774,44,16775,44,16776,44,16777,44,16784,44,16785,44,16786,44,16787,44,16788,44,16789,44,16790,44,16791,44,16792,44,16793,44,16896,44,16897,44,16898,44,16899,44,16900,44,16901,44,16902,44,16903,44,16904,44,16905,44,16912,44,16913,44,16914,44,16915,44,16916,44,16917,44,16918,44,16919,44,16920,44,16921,44,16928,44,16929,44,16930,44,16931,44,16932,44,16933,44,16934,44,16935,44,16936,44,16937,44,16944,44,16945,44,16946,44,16947,44,16948,44,16949,44,16950,44,16951,44,16952,44,16953,44,16960,44,16961,44,16962,44,16963,44,16964,44,16965,44,16966,44,16967,44,16968,44,16969,44,16976,44,16977,44,16978,44,16979,44,16980,44,16981,44,16982,44,16983,44,16984,44,16985,44,16992,44,16993,44,16994,44,16995,44,16996,44,16997,44,16998,44,16999,44,17000,44,17001,44,17008,44,17009,44,17010,44,17011,44,17012,44,17013,44,17014,44,17015,44,17016,44,17017,44,17024,44,17025,44,17026,44,17027,44,17028,44,17029,44,17030,44,17031,44,17032,44,17033,44,17040,44,17041,44,17042,44,17043,44,17044,44,17045,44,17046,44,17047,44,17048,44,17049,44,17152,44,17153,44,17154,44,17155,44,17156,44,17157,44,17158,44,17159,44,17160,44,17161,44,17168,44,17169,44,17170,44,17171,44,17172,44,17173,44,17174,44,17175,44,17176,44,17177,44,17184,44,17185,44,17186,44,17187,44,17188,44,17189,44,17190,44,17191,44,17192,44,17193,44,17200,44,17201,44,17202,44,17203,44,17204,44,17205,44,17206,44,17207,44,17208,44,17209,44,17216,44,17217,44,17218,44,17219,44,17220,44,17221,44,17222,44,17223,44,17224,44,17225,44,17232,44,17233,44,17234,44,17235,44,17236,44,17237,44,17238,44,17239,44,17240,44,17241,44,17248,44,17249,44,17250,44,17251,44,17252,44,17253,44,17254,44,17255,44,17256,44,17257,44,17264,44,17265,44,17266,44,17267,44,17268,44,17269,44,17270,44,17271,44,17272,44,17273,44,17280,44,17281,44,17282,44,17283,44,17284,44,17285,44,17286,44,17287,44,17288,44,17289,44,17296,44,17297,44,17298,44,17299,44,17300,44,17301,44,17302,44,17303,44,17304,44,17305,44,17408,44,17409,44,17410,44,17411,44,17412,44,17413,44,17414,44,17415,44,17416,44,17417,44,17424,44,17425,44,17426,44,17427,44,17428,44,17429,44,17430,44,17431,44,17432,44,17433,44,17440,44,17441,44,17442,44,17443,44,17444,44,17445,44,17446,44,17447,44,17448,44,17449,44,17456,44,17457,44,17458,44,17459,44,17460,44,17461,44,17462,44,17463,44,17464,44,17465,44,17472,44,17473,44,17474,44,17475,44,17476,44,17477,44,17478,44,17479,44,17480,44,17481,44,17488,44,17489,44,17490,44,17491,44,17492,44,17493,44,17494,44,17495,44,17496,44,17497,44,17504,44,17505,44,17506,44,17507,44,17508,44,17509,44,17510,44,17511,44,17512,44,17513,44,17520,44,17521,44,17522,44,17523,44,17524,44,17525,44,17526,44,17527,44,17528,44,17529,44,17536,44,17537,44,17538,44,17539,44,17540,44,17541,44,17542,44,17543,44,17544,44,17545,44,17552,44,17553,44,17554,44,17555,44,17556,44,17557,44,17558,44,17559,44,17560,44,17561,44,17664,44,17665,44,17666,44,17667,44,17668,44,17669,44,17670,44,17671,44,17672,44,17673,44,17680,44,17681,44,17682,44,17683,44,17684,44,17685,44,17686,44,17687,44,17688,44,17689,44,17696,44,17697,44,17698,44,17699,44,17700,44,17701,44,17702,44,17703,44,17704,44,17705,44,17712,44,17713,44,17714,44,17715,44,17716,44,17717,44,17718,44,17719,44,17720,44,17721,44,17728,44,17729,44,17730,44,17731,44,17732,44,17733,44,17734,44,17735,44,17736,44,17737,44,17744,44,17745,44,17746,44,17747,44,17748,44,17749,44,17750,44,17751,44,17752,44,17753,44,17760,44,17761,44,17762,44,17763,44,17764,44,17765,44,17766,44,17767,44,17768,44,17769,44,17776,44,17777,44,17778,44,17779,44,17780,44,17781,44,17782,44,17783,44,17784,44,17785,44,17792,44,17793,44,17794,44,17795,44,17796,44,17797,44,17798,44,17799,44,17800,44,17801,44,17808,44,17809,44,17810,44,17811,44,17812,44,17813,44,17814,44,17815,44,17816,44,17817,44,17920,44,17921,44,17922,44,17923,44,17924,44,17925,44,17926,44,17927,44,17928,44,17929,44,17936,44,17937,44,17938,44,17939,44,17940,44,17941,44,17942,44,17943,44,17944,44,17945,44,17952,44,17953,44,17954,44,17955,44,17956,44,17957,44,17958,44,17959,44,17960,44,17961,44,17968,44,17969,44,17970,44,17971,44,17972,44,17973,44,17974,44,17975,44,17976,44,17977,44,17984,44,17985,44,17986,44,17987,44,17988,44,17989,44,17990,44,17991,44,17992,44,17993,44,18000,44,18001,44,18002,44,18003,44,18004,44,18005,44,18006,44,18007,44,18008,44,18009,44,18016,44,18017,44,18018,44,18019,44,18020,44,18021,44,18022,44,18023,44,18024,44,18025,44,18032,44,18033,44,18034,44,18035,44,18036,44,18037,44,18038,44,18039,44,18040,44,18041,44,18048,44,18049,44,18050,44,18051,44,18052,44,18053,44,18054,44,18055,44,18056,44,18057,44,18064,44,18065,44,18066,44,18067,44,18068,44,18069,44,18070,44,18071,44,18072,44,18073,44,18176,44,18177,44,18178,44,18179,44,18180,44,18181,44,18182,44,18183,44,18184,44,18185,44,18192,44,18193,44,18194,44,18195,44,18196,44,18197,44,18198,44,18199,44,18200,44,18201,44,18208,44,18209,44,18210,44,18211,44,18212,44,18213,44,18214,44,18215,44,18216,44,18217,44,18224,44,18225,44,18226,44,18227,44,18228,44,18229,44,18230,44,18231,44,18232,44,18233,44,18240,44,18241,44,18242,44,18243,44,18244,44,18245,44,18246,44,18247,44,18248,44,18249,44,18256,44,18257,44,18258,44,18259,44,18260,44,18261,44,18262,44,18263,44,18264,44,18265,44,18272,44,18273,44,18274,44,18275,44,18276,44,18277,44,18278,44,18279,44,18280,44,18281,44,18288,44,18289,44,18290,44,18291,44,18292,44,18293,44,18294,44,18295,44,18296,44,18297,44,18304,44,18305,44,18306,44,18307,44,18308,44,18309,44,18310,44,18311,44,18312,44,18313,44,18320,44,18321,44,18322,44,18323,44,18324,44,18325,44,18326,44,18327,44,18328,44,18329,44,18432,44,18433,44,18434,44,18435,44,18436,44,18437,44,18438,44,18439,44,18440,44,18441,44,18448,44,18449,44,18450,44,18451,44,18452,44,18453,44,18454,44,18455,44,18456,44,18457,44,18464,44,18465,44,18466,44,18467,44,18468,44,18469,44,18470,44,18471,44,18472,44,18473,44,18480,44,18481,44,18482,44,18483,44,18484,44,18485,44,18486,44,18487,44,18488,44,18489,44,18496,44,18497,44,18498,44,18499,44,18500,44,18501,44,18502,44,18503,44,18504,44,18505,44,18512,44,18513,44,18514,44,18515,44,18516,44,18517,44,18518,44,18519,44,18520,44,18521,44,18528,44,18529,44,18530,44,18531,44,18532,44,18533,44,18534,44,18535,44,18536,44,18537,44,18544,44,18545,44,18546,44,18547,44,18548,44,18549,44,18550,44,18551,44,18552,44,18553,44,18560,44,18561,44,18562,44,18563,44,18564,44,18565,44,18566,44,18567,44,18568,44,18569,44,18576,44,18577,44,18578,44,18579,44,18580,44,18581,44,18582,44,18583,44,18584,44,18585,44,18688,44,18689,44,18690,44,18691,44,18692,44,18693,44,18694,44,18695,44,18696,44,18697,44,18704,44,18705,44,18706,44,18707,44,18708,44,18709,44,18710,44,18711,44,18712,44,18713,44,18720,44,18721,44,18722,44,18723,44,18724,44,18725,44,18726,44,18727,44,18728,44,18729,44,18736,44,18737,44,18738,44,18739,44,18740,44,18741,44,18742,44,18743,44,18744,44,18745,44,18752,44,18753,44,18754,44,18755,44,18756,44,18757,44,18758,44,18759,44,18760,44,18761,44,18768,44,18769,44,18770,44,18771,44,18772,44,18773,44,18774,44,18775,44,18776,44,18777,44,18784,44,18785,44,18786,44,18787,44,18788,44,18789,44,18790,44,18791,44,18792,44,18793,44,18800,44,18801,44,18802,44,18803,44,18804,44,18805,44,18806,44,18807,44,18808,44,18809,44,18816,44,18817,44,18818,44,18819,44,18820,44,18821,44,18822,44,18823,44,18824,44,18825,44,18832,44,18833,44,18834,44,18835,44,18836,44,18837,44,18838,44,18839,44,18840,44,18841,44,20480,44,20481,44,20482,44,20483,44,20484,44,20485,44,20486,44,20487,44,20488,44,20489,44,20496,44,20497,44,20498,44,20499,44,20500,44,20501,44,20502,44,20503,44,20504,44,20505,44,20512,44,20513,44,20514,44,20515,44,20516,44,20517,44,20518,44,20519,44,20520,44,20521,44,20528,44,20529,44,20530,44,20531,44,20532,44,20533,44,20534,44,20535,44,20536,44,20537,44,20544,44,20545,44,20546,44,20547,44,20548,44,20549,44,20550,44,20551,44,20552,44,20553,44,20560,44,20561,44,20562,44,20563,44,20564,44,20565,44,20566,44,20567,44,20568,44,20569,44,20576,44,20577,44,20578,44,20579,44,20580,44,20581,44,20582,44,20583,44,20584,44,20585,44,20592,44,20593,44,20594,44,20595,44,20596,44,20597,44,20598,44,20599,44,20600,44,20601,44,20608,44,20609,44,20610,44,20611,44,20612,44,20613,44,20614,44,20615,44,20616,44,20617,44,20624,44,20625,44,20626,44,20627,44,20628,44,20629,44,20630,44,20631,44,20632,44,20633,44,20736,44,20737,44,20738,44,20739,44,20740,44,20741,44,20742,44,20743,44,20744,44,20745,44,20752,44,20753,44,20754,44,20755,44,20756,44,20757,44,20758,44,20759,44,20760,44,20761,44,20768,44,20769,44,20770,44,20771,44,20772,44,20773,44,20774,44,20775,44,20776,44,20777,44,20784,44,20785,44,20786,44,20787,44,20788,44,20789,44,20790,44,20791,44,20792,44,20793,44,20800,44,20801,44,20802,44,20803,44,20804,44,20805,44,20806,44,20807,44,20808,44,20809,44,20816,44,20817,44,20818,44,20819,44,20820,44,20821,44,20822,44,20823,44,20824,44,20825,44,20832,44,20833,44,20834,44,20835,44,20836,44,20837,44,20838,44,20839,44,20840,44,20841,44,20848,44,20849,44,20850,44,20851,44,20852,44,20853,44,20854,44,20855,44,20856,44,20857,44,20864,44,20865,44,20866,44,20867,44,20868,44,20869,44,20870,44,20871,44,20872,44,20873,44,20880,44,20881,44,20882,44,20883,44,20884,44,20885,44,20886,44,20887,44,20888,44,20889,44,20992,44,20993,44,20994,44,20995,44,20996,44,20997,44,20998,44,20999,44,21000,44,21001,44,21008,44,21009,44,21010,44,21011,44,21012,44,21013,44,21014,44,21015,44,21016,44,21017,44,21024,44,21025,44,21026,44,21027,44,21028,44,21029,44,21030,44,21031,44,21032,44,21033,44,21040,44,21041,44,21042,44,21043,44,21044,44,21045,44,21046,44,21047,44,21048,44,21049,44,21056,44,21057,44,21058,44,21059,44,21060,44,21061,44,21062,44,21063,44,21064,44,21065,44,21072,44,21073,44,21074,44,21075,44,21076,44,21077,44,21078,44,21079,44,21080,44,21081,44,21088,44,21089,44,21090,44,21091,44,21092,44,21093,44,21094,44,21095,44,21096,44,21097,44,21104,44,21105,44,21106,44,21107,44,21108,44,21109,44,21110,44,21111,44,21112,44,21113,44,21120,44,21121,44,21122,44,21123,44,21124,44,21125,44,21126,44,21127,44,21128,44,21129,44,21136,44,21137,44,21138,44,21139,44,21140,44,21141,44,21142,44,21143,44,21144,44,21145,44,21248,44,21249,44,21250,44,21251,44,21252,44,21253,44,21254,44,21255,44,21256,44,21257,44,21264,44,21265,44,21266,44,21267,44,21268,44,21269,44,21270,44,21271,44,21272,44,21273,44,21280,44,21281,44,21282,44,21283,44,21284,44,21285,44,21286,44,21287,44,21288,44,21289,44,21296,44,21297,44,21298,44,21299,44,21300,44,21301,44,21302,44,21303,44,21304,44,21305,44,21312,44,21313,44,21314,44,21315,44,21316,44,21317,44,21318,44,21319,44,21320,44,21321,44,21328,44,21329,44,21330,44,21331,44,21332,44,21333,44,21334,44,21335,44,21336,44,21337,44,21344,44,21345,44,21346,44,21347,44,21348,44,21349,44,21350,44,21351,44,21352,44,21353,44,21360,44,21361,44,21362,44,21363,44,21364,44,21365,44,21366,44,21367,44,21368,44,21369,44,21376,44,21377,44,21378,44,21379,44,21380,44,21381,44,21382,44,21383,44,21384,44,21385,44,21392,44,21393,44,21394,44,21395,44,21396,44,21397,44,21398,44,21399,44,21400,44,21401,44,21504,44,21505,44,21506,44,21507,44,21508,44,21509,44,21510,44,21511,44,21512,44,21513,44,21520,44,21521,44,21522,44,21523,44,21524,44,21525,44,21526,44,21527,44,21528,44,21529,44,21536,44,21537,44,21538,44,21539,44,21540,44,21541,44,21542,44,21543,44,21544,44,21545,44,21552,44,21553,44,21554,44,21555,44,21556,44,21557,44,21558,44,21559,44,21560,44,21561,44,21568,44,21569,44,21570,44,21571,44,21572,44,21573,44,21574,44,21575,44,21576,44,21577,44,21584,44,21585,44,21586,44,21587,44,21588,44,21589,44,21590,44,21591,44,21592,44,21593,44,21600,44,21601,44,21602,44,21603,44,21604,44,21605,44,21606,44,21607,44,21608,44,21609,44,21616,44,21617,44,21618,44,21619,44,21620,44,21621,44,21622,44,21623,44,21624,44,21625,44,21632,44,21633,44,21634,44,21635,44,21636,44,21637,44,21638,44,21639,44,21640,44,21641,44,21648,44,21649,44,21650,44,21651,44,21652,44,21653,44,21654,44,21655,44,21656,44,21657,44,21760,44,21761,44,21762,44,21763,44,21764,44,21765,44,21766,44,21767,44,21768,44,21769,44,21776,44,21777,44,21778,44,21779,44,21780,44,21781,44,21782,44,21783,44,21784,44,21785,44,21792,44,21793,44,21794,44,21795,44,21796,44,21797,44,21798,44,21799,44,21800,44,21801,44,21808,44,21809,44,21810,44,21811,44,21812,44,21813,44,21814,44,21815,44,21816,44,21817,44,21824,44,21825,44,21826,44,21827,44,21828,44,21829,44,21830,44,21831,44,21832,44,21833,44,21840,44,21841,44,21842,44,21843,44,21844,44,21845,44,21846,44,21847,44,21848,44,21849,44,21856,44,21857,44,21858,44,21859,44,21860,44,21861,44,21862,44,21863,44,21864,44,21865,44,21872,44,21873,44,21874,44,21875,44,21876,44,21877,44,21878,44,21879,44,21880,44,21881,44,21888,44,21889,44,21890,44,21891,44,21892,44,21893,44,21894,44,21895,44,21896,44,21897,44,21904,44,21905,44,21906,44,21907,44,21908,44,21909,44,21910,44,21911,44,21912,44,21913,44,22016,44,22017,44,22018,44,22019,44,22020,44,22021,44,22022,44,22023,44,22024,44,22025,44,22032,44,22033,44,22034,44,22035,44,22036,44,22037,44,22038,44,22039,44,22040,44,22041,44,22048,44,22049,44,22050,44,22051,44,22052,44,22053,44,22054,44,22055,44,22056,44,22057,44,22064,44,22065,44,22066,44,22067,44,22068,44,22069,44,22070,44,22071,44,22072,44,22073,44,22080,44,22081,44,22082,44,22083,44,22084,44,22085,44,22086,44,22087,44,22088,44,22089,44,22096,44,22097,44,22098,44,22099,44,22100,44,22101,44,22102,44,22103,44,22104,44,22105,44,22112,44,22113,44,22114,44,22115,44,22116,44,22117,44,22118,44,22119,44,22120,44,22121,44,22128,44,22129,44,22130,44,22131,44,22132,44,22133,44,22134,44,22135,44,22136,44,22137,44,22144,44,22145,44,22146,44,22147,44,22148,44,22149,44,22150,44,22151,44,22152,44,22153,44,22160,44,22161,44,22162,44,22163,44,22164,44,22165,44,22166,44,22167,44,22168,44,22169,44,22272,44,22273,44,22274,44,22275,44,22276,44,22277,44,22278,44,22279,44,22280,44,22281,44,22288,44,22289,44,22290,44,22291,44,22292,44,22293,44,22294,44,22295,44,22296,44,22297,44,22304,44,22305,44,22306,44,22307,44,22308,44,22309,44,22310,44,22311,44,22312,44,22313,44,22320,44,22321,44,22322,44,22323,44,22324,44,22325,44,22326,44,22327,44,22328,44,22329,44,22336,44,22337,44,22338,44,22339,44,22340,44,22341,44,22342,44,22343,44,22344,44,22345,44,22352,44,22353,44,22354,44,22355,44,22356,44,22357,44,22358,44,22359,44,22360,44,22361,44,22368,44,22369,44,22370,44,22371,44,22372,44,22373,44,22374,44,22375,44,22376,44,22377,44,22384,44,22385,44,22386,44,22387,44,22388,44,22389,44,22390,44,22391,44,22392,44,22393,44,22400,44,22401,44,22402,44,22403,44,22404,44,22405,44,22406,44,22407,44,22408,44,22409,44,22416,44,22417,44,22418,44,22419,44,22420,44,22421,44,22422,44,22423,44,22424,44,22425,44,22528,44,22529,44,22530,44,22531,44,22532,44,22533,44,22534,44,22535,44,22536,44,22537,44,22544,44,22545,44,22546,44,22547,44,22548,44,22549,44,22550,44,22551,44,22552,44,22553,44,22560,44,22561,44,22562,44,22563,44,22564,44,22565,44,22566,44,22567,44,22568,44,22569,44,22576,44,22577,44,22578,44,22579,44,22580,44,22581,44,22582,44,22583,44,22584,44,22585,44,22592,44,22593,44,22594,44,22595,44,22596,44,22597,44,22598,44,22599,44,22600,44,22601,44,22608,44,22609,44,22610,44,22611,44,22612,44,22613,44,22614,44,22615,44,22616,44,22617,44,22624,44,22625,44,22626,44,22627,44,22628,44,22629,44,22630,44,22631,44,22632,44,22633,44,22640,44,22641,44,22642,44,22643,44,22644,44,22645,44,22646,44,22647,44,22648,44,22649,44,22656,44,22657,44,22658,44,22659,44,22660,44,22661,44,22662,44,22663,44,22664,44,22665,44,22672,44,22673,44,22674,44,22675,44,22676,44,22677,44,22678,44,22679,44,22680,44,22681,44,22784,44,22785,44,22786,44,22787,44,22788,44,22789,44,22790,44,22791,44,22792,44,22793,44,22800,44,22801,44,22802,44,22803,44,22804,44,22805,44,22806,44,22807,44,22808,44,22809,44,22816,44,22817,44,22818,44,22819,44,22820,44,22821,44,22822,44,22823,44,22824,44,22825,44,22832,44,22833,44,22834,44,22835,44,22836,44,22837,44,22838,44,22839,44,22840,44,22841,44,22848,44,22849,44,22850,44,22851,44,22852,44,22853,44,22854,44,22855,44,22856,44,22857,44,22864,44,22865,44,22866,44,22867,44,22868,44,22869,44,22870,44,22871,44,22872,44,22873,44,22880,44,22881,44,22882,44,22883,44,22884,44,22885,44,22886,44,22887,44,22888,44,22889,44,22896,44,22897,44,22898,44,22899,44,22900,44,22901,44,22902,44,22903,44,22904,44,22905,44,22912,44,22913,44,22914,44,22915,44,22916,44,22917,44,22918,44,22919,44,22920,44,22921,44,22928,44,22929,44,22930,44,22931,44,22932,44,22933,44,22934,44,22935,44,22936,44,22937,44,24576,44,24577,44,24578,44,24579,44,24580,44,24581,44,24582,44,24583,44,24584,44,24585,44,24592,44,24593,44,24594,44,24595,44,24596,44,24597,44,24598,44,24599,44,24600,44,24601,44,24608,44,24609,44,24610,44,24611,44,24612,44,24613,44,24614,44,24615,44,24616,44,24617,44,24624,44,24625,44,24626,44,24627,44,24628,44,24629,44,24630,44,24631,44,24632,44,24633,44,24640,44,24641,44,24642,44,24643,44,24644,44,24645,44,24646,44,24647,44,24648,44,24649,44,24656,44,24657,44,24658,44,24659,44,24660,44,24661,44,24662,44,24663,44,24664,44,24665,44,24672,44,24673,44,24674,44,24675,44,24676,44,24677,44,24678,44,24679,44,24680,44,24681,44,24688,44,24689,44,24690,44,24691,44,24692,44,24693,44,24694,44,24695,44,24696,44,24697,44,24704,44,24705,44,24706,44,24707,44,24708,44,24709,44,24710,44,24711,44,24712,44,24713,44,24720,44,24721,44,24722,44,24723,44,24724,44,24725,44,24726,44,24727,44,24728,44,24729,44,24832,44,24833,44,24834,44,24835,44,24836,44,24837,44,24838,44,24839,44,24840,44,24841,44,24848,44,24849,44,24850,44,24851,44,24852,44,24853,44,24854,44,24855,44,24856,44,24857,44,24864,44,24865,44,24866,44,24867,44,24868,44,24869,44,24870,44,24871,44,24872,44,24873,44,24880,44,24881,44,24882,44,24883,44,24884,44,24885,44,24886,44,24887,44,24888,44,24889,44,24896,44,24897,44,24898,44,24899,44,24900,44,24901,44,24902,44,24903,44,24904,44,24905,44,24912,44,24913,44,24914,44,24915,44,24916,44,24917,44,24918,44,24919,44,24920,44,24921,44,24928,44,24929,44,24930,44,24931,44,24932,44,24933,44,24934,44,24935,44,24936,44,24937,44,24944,44,24945,44,24946,44,24947,44,24948,44,24949,44,24950,44,24951,44,24952,44,24953,44,24960,44,24961,44,24962,44,24963,44,24964,44,24965,44,24966,44,24967,44,24968,44,24969,44,24976,44,24977,44,24978,44,24979,44,24980,44,24981,44,24982,44,24983,44,24984,44,24985,44,25088,44,25089,44,25090,44,25091,44,25092,44,25093,44,25094,44,25095,44,25096,44,25097,44,25104,44,25105,44,25106,44,25107,44,25108,44,25109,44,25110,44,25111,44,25112,44,25113,44,25120,44,25121,44,25122,44,25123,44,25124,44,25125,44,25126,44,25127,44,25128,44,25129,44,25136,44,25137,44,25138,44,25139,44,25140,44,25141,44,25142,44,25143,44,25144,44,25145,44,25152,44,25153,44,25154,44,25155,44,25156,44,25157,44,25158,44,25159,44,25160,44,25161,44,25168,44,25169,44,25170,44,25171,44,25172,44,25173,44,25174,44,25175,44,25176,44,25177,44,25184,44,25185,44,25186,44,25187,44,25188,44,25189,44,25190,44,25191,44,25192,44,25193,44,25200,44,25201,44,25202,44,25203,44,25204,44,25205,44,25206,44,25207,44,25208,44,25209,44,25216,44,25217,44,25218,44,25219,44,25220,44,25221,44,25222,44,25223,44,25224,44,25225,44,25232,44,25233,44,25234,44,25235,44,25236,44,25237,44,25238,44,25239,44,25240,44,25241,44,25344,44,25345,44,25346,44,25347,44,25348,44,25349,44,25350,44,25351,44,25352,44,25353,44,25360,44,25361,44,25362,44,25363,44,25364,44,25365,44,25366,44,25367,44,25368,44,25369,44,25376,44,25377,44,25378,44,25379,44,25380,44,25381,44,25382,44,25383,44,25384,44,25385,44,25392,44,25393,44,25394,44,25395,44,25396,44,25397,44,25398,44,25399,44,25400,44,25401,44,25408,44,25409,44,25410,44,25411,44,25412,44,25413,44,25414,44,25415,44,25416,44,25417,44,25424,44,25425,44,25426,44,25427,44,25428,44,25429,44,25430,44,25431,44,25432,44,25433,44,25440,44,25441,44,25442,44,25443,44,25444,44,25445,44,25446,44,25447,44,25448,44,25449,44,25456,44,25457,44,25458,44,25459,44,25460,44,25461,44,25462,44,25463,44,25464,44,25465,44,25472,44,25473,44,25474,44,25475,44,25476,44,25477,44,25478,44,25479,44,25480,44,25481,44,25488,44,25489,44,25490,44,25491,44,25492,44,25493,44,25494,44,25495,44,25496,44,25497,44,25600,44,25601,44,25602,44,25603,44,25604,44,25605,44,25606,44,25607,44,25608,44,25609,44,25616,44,25617,44,25618,44,25619,44,25620,44,25621,44,25622,44,25623,44,25624,44,25625,44,25632,44,25633,44,25634,44,25635,44,25636,44,25637,44,25638,44,25639,44,25640,44,25641,44,25648,44,25649,44,25650,44,25651,44,25652,44,25653,44,25654,44,25655,44,25656,44,25657,44,25664,44,25665,44,25666,44,25667,44,25668,44,25669,44,25670,44,25671,44,25672,44,25673,44,25680,44,25681,44,25682,44,25683,44,25684,44,25685,44,25686,44,25687,44,25688,44,25689,44,25696,44,25697,44,25698,44,25699,44,25700,44,25701,44,25702,44,25703,44,25704,44,25705,44,25712,44,25713,44,25714,44,25715,44,25716,44,25717,44,25718,44,25719,44,25720,44,25721,44,25728,44,25729,44,25730,44,25731,44,25732,44,25733,44,25734,44,25735,44,25736,44,25737,44,25744,44,25745,44,25746,44,25747,44,25748,44,25749,44,25750,44,25751,44,25752,44,25753,44,25856,44,25857,44,25858,44,25859,44,25860,44,25861,44,25862,44,25863,44,25864,44,25865,44,25872,44,25873,44,25874,44,25875,44,25876,44,25877,44,25878,44,25879,44,25880,44,25881,44,25888,44,25889,44,25890,44,25891,44,25892,44,25893,44,25894,44,25895,44,25896,44,25897,44,25904,44,25905,44,25906,44,25907,44,25908,44,25909,44,25910,44,25911,44,25912,44,25913,44,25920,44,25921,44,25922,44,25923,44,25924,44,25925,44,25926,44,25927,44,25928,44,25929,44,25936,44,25937,44,25938,44,25939,44,25940,44,25941,44,25942,44,25943,44,25944,44,25945,44,25952,44,25953,44,25954,44,25955,44,25956,44,25957,44,25958,44,25959,44,25960,44,25961,44,25968,44,25969,44,25970,44,25971,44,25972,44,25973,44,25974,44,25975,44,25976,44,25977,44,25984,44,25985,44,25986,44,25987,44,25988,44,25989,44,25990,44,25991,44,25992,44,25993,44,26000,44,26001,44,26002,44,26003,44,26004,44,26005,44,26006,44,26007,44,26008,44,26009,44,26112,44,26113,44,26114,44,26115,44,26116,44,26117,44,26118,44,26119,44,26120,44,26121,44,26128,44,26129,44,26130,44,26131,44,26132,44,26133,44,26134,44,26135,44,26136,44,26137,44,26144,44,26145,44,26146,44,26147,44,26148,44,26149,44,26150,44,26151,44,26152,44,26153,44,26160,44,26161,44,26162,44,26163,44,26164,44,26165,44,26166,44,26167,44,26168,44,26169,44,26176,44,26177,44,26178,44,26179,44,26180,44,26181,44,26182,44,26183,44,26184,44,26185,44,26192,44,26193,44,26194,44,26195,44,26196,44,26197,44,26198,44,26199,44,26200,44,26201,44,26208,44,26209,44,26210,44,26211,44,26212,44,26213,44,26214,44,26215,44,26216,44,26217,44,26224,44,26225,44,26226,44,26227,44,26228,44,26229,44,26230,44,26231,44,26232,44,26233,44,26240,44,26241,44,26242,44,26243,44,26244,44,26245,44,26246,44,26247,44,26248,44,26249,44,26256,44,26257,44,26258,44,26259,44,26260,44,26261,44,26262,44,26263,44,26264,44,26265,44,26368,44,26369,44,26370,44,26371,44,26372,44,26373,44,26374,44,26375,44,26376,44,26377,44,26384,44,26385,44,26386,44,26387,44,26388,44,26389,44,26390,44,26391,44,26392,44,26393,44,26400,44,26401,44,26402,44,26403,44,26404,44,26405,44,26406,44,26407,44,26408,44,26409,44,26416,44,26417,44,26418,44,26419,44,26420,44,26421,44,26422,44,26423,44,26424,44,26425,44,26432,44,26433,44,26434,44,26435,44,26436,44,26437,44,26438,44,26439,44,26440,44,26441,44,26448,44,26449,44,26450,44,26451,44,26452,44,26453,44,26454,44,26455,44,26456,44,26457,44,26464,44,26465,44,26466,44,26467,44,26468,44,26469,44,26470,44,26471,44,26472,44,26473,44,26480,44,26481,44,26482,44,26483,44,26484,44,26485,44,26486,44,26487,44,26488,44,26489,44,26496,44,26497,44,26498,44,26499,44,26500,44,26501,44,26502,44,26503,44,26504,44,26505,44,26512,44,26513,44,26514,44,26515,44,26516,44,26517,44,26518,44,26519,44,26520,44,26521,44,26624,44,26625,44,26626,44,26627,44,26628,44,26629,44,26630,44,26631,44,26632,44,26633,44,26640,44,26641,44,26642,44,26643,44,26644,44,26645,44,26646,44,26647,44,26648,44,26649,44,26656,44,26657,44,26658,44,26659,44,26660,44,26661,44,26662,44,26663,44,26664,44,26665,44,26672,44,26673,44,26674,44,26675,44,26676,44,26677,44,26678,44,26679,44,26680,44,26681,44,26688,44,26689,44,26690,44,26691,44,26692,44,26693,44,26694,44,26695,44,26696,44,26697,44,26704,44,26705,44,26706,44,26707,44,26708,44,26709,44,26710,44,26711,44,26712,44,26713,44,26720,44,26721,44,26722,44,26723,44,26724,44,26725,44,26726,44,26727,44,26728,44,26729,44,26736,44,26737,44,26738,44,26739,44,26740,44,26741,44,26742,44,26743,44,26744,44,26745,44,26752,44,26753,44,26754,44,26755,44,26756,44,26757,44,26758,44,26759,44,26760,44,26761,44,26768,44,26769,44,26770,44,26771,44,26772,44,26773,44,26774,44,26775,44,26776,44,26777,44,26880,44,26881,44,26882,44,26883,44,26884,44,26885,44,26886,44,26887,44,26888,44,26889,44,26896,44,26897,44,26898,44,26899,44,26900,44,26901,44,26902,44,26903,44,26904,44,26905,44,26912,44,26913,44,26914,44,26915,44,26916,44,26917,44,26918,44,26919,44,26920,44,26921,44,26928,44,26929,44,26930,44,26931,44,26932,44,26933,44,26934,44,26935,44,26936,44,26937,44,26944,44,26945,44,26946,44,26947,44,26948,44,26949,44,26950,44,26951,44,26952,44,26953,44,26960,44,26961,44,26962,44,26963,44,26964,44,26965,44,26966,44,26967,44,26968,44,26969,44,26976,44,26977,44,26978,44,26979,44,26980,44,26981,44,26982,44,26983,44,26984,44,26985,44,26992,44,26993,44,26994,44,26995,44,26996,44,26997,44,26998,44,26999,44,27000,44,27001,44,27008,44,27009,44,27010,44,27011,44,27012,44,27013,44,27014,44,27015,44,27016,44,27017,44,27024,44,27025,44,27026,44,27027,44,27028,44,27029,44,27030,44,27031,44,27032,44,27033,44,28672,44,28673,44,28674,44,28675,44,28676,44,28677,44,28678,44,28679,44,28680,44,28681,44,28688,44,28689,44,28690,44,28691,44,28692,44,28693,44,28694,44,28695,44,28696,44,28697,44,28704,44,28705,44,28706,44,28707,44,28708,44,28709,44,28710,44,28711,44,28712,44,28713,44,28720,44,28721,44,28722,44,28723,44,28724,44,28725,44,28726,44,28727,44,28728,44,28729,44,28736,44,28737,44,28738,44,28739,44,28740,44,28741,44,28742,44,28743,44,28744,44,28745,44,28752,44,28753,44,28754,44,28755,44,28756,44,28757,44,28758,44,28759,44,28760,44,28761,44,28768,44,28769,44,28770,44,28771,44,28772,44,28773,44,28774,44,28775,44,28776,44,28777,44,28784,44,28785,44,28786,44,28787,44,28788,44,28789,44,28790,44,28791,44,28792,44,28793,44,28800,44,28801,44,28802,44,28803,44,28804,44,28805,44,28806,44,28807,44,28808,44,28809,44,28816,44,28817,44,28818,44,28819,44,28820,44,28821,44,28822,44,28823,44,28824,44,28825,44,28928,44,28929,44,28930,44,28931,44,28932,44,28933,44,28934,44,28935,44,28936,44,28937,44,28944,44,28945,44,28946,44,28947,44,28948,44,28949,44,28950,44,28951,44,28952,44,28953,44,28960,44,28961,44,28962,44,28963,44,28964,44,28965,44,28966,44,28967,44,28968,44,28969,44,28976,44,28977,44,28978,44,28979,44,28980,44,28981,44,28982,44,28983,44,28984,44,28985,44,28992,44,28993,44,28994,44,28995,44,28996,44,28997,44,28998,44,28999,44,29000,44,29001,44,29008,44,29009,44,29010,44,29011,44,29012,44,29013,44,29014,44,29015,44,29016,44,29017,44,29024,44,29025,44,29026,44,29027,44,29028,44,29029,44,29030,44,29031,44,29032,44,29033,44,29040,44,29041,44,29042,44,29043,44,29044,44,29045,44,29046,44,29047,44,29048,44,29049,44,29056,44,29057,44,29058,44,29059,44,29060,44,29061,44,29062,44,29063,44,29064,44,29065,44,29072,44,29073,44,29074,44,29075,44,29076,44,29077,44,29078,44,29079,44,29080,44,29081,44,29184,44,29185,44,29186,44,29187,44,29188,44,29189,44,29190,44,29191,44,29192,44,29193,44,29200,44,29201,44,29202,44,29203,44,29204,44,29205,44,29206,44,29207,44,29208,44,29209,44,29216,44,29217,44,29218,44,29219,44,29220,44,29221,44,29222,44,29223,44,29224,44,29225,44,29232,44,29233,44,29234,44,29235,44,29236,44,29237,44,29238,44,29239,44,29240,44,29241,44,29248,44,29249,44,29250,44,29251,44,29252,44,29253,44,29254,44,29255,44,29256,44,29257,44,29264,44,29265,44,29266,44,29267,44,29268,44,29269,44,29270,44,29271,44,29272,44,29273,44,29280,44,29281,44,29282,44,29283,44,29284,44,29285,44,29286,44,29287,44,29288,44,29289,44,29296,44,29297,44,29298,44,29299,44,29300,44,29301,44,29302,44,29303,44,29304,44,29305,44,29312,44,29313,44,29314,44,29315,44,29316,44,29317,44,29318,44,29319,44,29320,44,29321,44,29328,44,29329,44,29330,44,29331,44,29332,44,29333,44,29334,44,29335,44,29336,44,29337,44,29440,44,29441,44,29442,44,29443,44,29444,44,29445,44,29446,44,29447,44,29448,44,29449,44,29456,44,29457,44,29458,44,29459,44,29460,44,29461,44,29462,44,29463,44,29464,44,29465,44,29472,44,29473,44,29474,44,29475,44,29476,44,29477,44,29478,44,29479,44,29480,44,29481,44,29488,44,29489,44,29490,44,29491,44,29492,44,29493,44,29494,44,29495,44,29496,44,29497,44,29504,44,29505,44,29506,44,29507,44,29508,44,29509,44,29510,44,29511,44,29512,44,29513,44,29520,44,29521,44,29522,44,29523,44,29524,44,29525,44,29526,44,29527,44,29528,44,29529,44,29536,44,29537,44,29538,44,29539,44,29540,44,29541,44,29542,44,29543,44,29544,44,29545,44,29552,44,29553,44,29554,44,29555,44,29556,44,29557,44,29558,44,29559,44,29560,44,29561,44,29568,44,29569,44,29570,44,29571,44,29572,44,29573,44,29574,44,29575,44,29576,44,29577,44,29584,44,29585,44,29586,44,29587,44,29588,44,29589,44,29590,44,29591,44,29592,44,29593,44,29696,44,29697,44,29698,44,29699,44,29700,44,29701,44,29702,44,29703,44,29704,44,29705,44,29712,44,29713,44,29714,44,29715,44,29716,44,29717,44,29718,44,29719,44,29720,44,29721,44,29728,44,29729,44,29730,44,29731,44,29732,44,29733,44,29734,44,29735,44,29736,44,29737,44,29744,44,29745,44,29746,44,29747,44,29748,44,29749,44,29750,44,29751,44,29752,44,29753,44,29760,44,29761,44,29762,44,29763,44,29764,44,29765,44,29766,44,29767,44,29768,44,29769,44,29776,44,29777,44,29778,44,29779,44,29780,44,29781,44,29782,44,29783,44,29784,44,29785,44,29792,44,29793,44,29794,44,29795,44,29796,44,29797,44,29798,44,29799,44,29800,44,29801,44,29808,44,29809,44,29810,44,29811,44,29812,44,29813,44,29814,44,29815,44,29816,44,29817,44,29824,44,29825,44,29826,44,29827,44,29828,44,29829,44,29830,44,29831,44,29832,44,29833,44,29840,44,29841,44,29842,44,29843,44,29844,44,29845,44,29846,44,29847,44,29848,44,29849,44,29952,44,29953,44,29954,44,29955,44,29956,44,29957,44,29958,44,29959,44,29960,44,29961,44,29968,44,29969,44,29970,44,29971,44,29972,44,29973,44,29974,44,29975,44,29976,44,29977,44,29984,44,29985,44,29986,44,29987,44,29988,44,29989,44,29990,44,29991,44,29992,44,29993,44,30000,44,30001,44,30002,44,30003,44,30004,44,30005,44,30006,44,30007,44,30008,44,30009,44,30016,44,30017,44,30018,44,30019,44,30020,44,30021,44,30022,44,30023,44,30024,44,30025,44,30032,44,30033,44,30034,44,30035,44,30036,44,30037,44,30038,44,30039,44,30040,44,30041,44,30048,44,30049,44,30050,44,30051,44,30052,44,30053,44,30054,44,30055,44,30056,44,30057,44,30064,44,30065,44,30066,44,30067,44,30068,44,30069,44,30070,44,30071,44,30072,44,30073,44,30080,44,30081,44,30082,44,30083,44,30084,44,30085,44,30086,44,30087,44,30088,44,30089,44,30096,44,30097,44,30098,44,30099,44,30100,44,30101,44,30102,44,30103,44,30104,44,30105,44,30208,44,30209,44,30210,44,30211,44,30212,44,30213,44,30214,44,30215,44,30216,44,30217,44,30224,44,30225,44,30226,44,30227,44,30228,44,30229,44,30230,44,30231,44,30232,44,30233,44,30240,44,30241,44,30242,44,30243,44,30244,44,30245,44,30246,44,30247,44,30248,44,30249,44,30256,44,30257,44,30258,44,30259,44,30260,44,30261,44,30262,44,30263,44,30264,44,30265,44,30272,44,30273,44,30274,44,30275,44,30276,44,30277,44,30278,44,30279,44,30280,44,30281,44,30288,44,30289,44,30290,44,30291,44,30292,44,30293,44,30294,44,30295,44,30296,44,30297,44,30304,44,30305,44,30306,44,30307,44,30308,44,30309,44,30310,44,30311,44,30312,44,30313,44,30320,44,30321,44,30322,44,30323,44,30324,44,30325,44,30326,44,30327,44,30328,44,30329,44,30336,44,30337,44,30338,44,30339,44,30340,44,30341,44,30342,44,30343,44,30344,44,30345,44,30352,44,30353,44,30354,44,30355,44,30356,44,30357,44,30358,44,30359,44,30360,44,30361,44,30464,44,30465,44,30466,44,30467,44,30468,44,30469,44,30470,44,30471,44,30472,44,30473,44,30480,44,30481,44,30482,44,30483,44,30484,44,30485,44,30486,44,30487,44,30488,44,30489,44,30496,44,30497,44,30498,44,30499,44,30500,44,30501,44,30502,44,30503,44,30504,44,30505,44,30512,44,30513,44,30514,44,30515,44,30516,44,30517,44,30518,44,30519,44,30520,44,30521,44,30528,44,30529,44,30530,44,30531,44,30532,44,30533,44,30534,44,30535,44,30536,44,30537,44,30544,44,30545,44,30546,44,30547,44,30548,44,30549,44,30550,44,30551,44,30552,44,30553,44,30560,44,30561,44,30562,44,30563,44,30564,44,30565,44,30566,44,30567,44,30568,44,30569,44,30576,44,30577,44,30578,44,30579,44,30580,44,30581,44,30582,44,30583,44,30584,44,30585,44,30592,44,30593,44,30594,44,30595,44,30596,44,30597,44,30598,44,30599,44,30600,44,30601,44,30608,44,30609,44,30610,44,30611,44,30612,44,30613,44,30614,44,30615,44,30616,44,30617,44,30720,44,30721,44,30722,44,30723,44,30724,44,30725,44,30726,44,30727,44,30728,44,30729,44,30736,44,30737,44,30738,44,30739,44,30740,44,30741,44,30742,44,30743,44,30744,44,30745,44,30752,44,30753,44,30754,44,30755,44,30756,44,30757,44,30758,44,30759,44,30760,44,30761,44,30768,44,30769,44,30770,44,30771,44,30772,44,30773,44,30774,44,30775,44,30776,44,30777,44,30784,44,30785,44,30786,44,30787,44,30788,44,30789,44,30790,44,30791,44,30792,44,30793,44,30800,44,30801,44,30802,44,30803,44,30804,44,30805,44,30806,44,30807,44,30808,44,30809,44,30816,44,30817,44,30818,44,30819,44,30820,44,30821,44,30822,44,30823,44,30824,44,30825,44,30832,44,30833,44,30834,44,30835,44,30836,44,30837,44,30838,44,30839,44,30840,44,30841,44,30848,44,30849,44,30850,44,30851,44,30852,44,30853,44,30854,44,30855,44,30856,44,30857,44,30864,44,30865,44,30866,44,30867,44,30868,44,30869,44,30870,44,30871,44,30872,44,30873,44,30976,44,30977,44,30978,44,30979,44,30980,44,30981,44,30982,44,30983,44,30984,44,30985,44,30992,44,30993,44,30994,44,30995,44,30996,44,30997,44,30998,44,30999,44,31000,44,31001,44,31008,44,31009,44,31010,44,31011,44,31012,44,31013,44,31014,44,31015,44,31016,44,31017,44,31024,44,31025,44,31026,44,31027,44,31028,44,31029,44,31030,44,31031,44,31032,44,31033,44,31040,44,31041,44,31042,44,31043,44,31044,44,31045,44,31046,44,31047,44,31048,44,31049,44,31056,44,31057,44,31058,44,31059,44,31060,44,31061,44,31062,44,31063,44,31064,44,31065,44,31072,44,31073,44,31074,44,31075,44,31076,44,31077,44,31078,44,31079,44,31080,44,31081,44,31088,44,31089,44,31090,44,31091,44,31092,44,31093,44,31094,44,31095,44,31096,44,31097,44,31104,44,31105,44,31106,44,31107,44,31108,44,31109,44,31110,44,31111,44,31112,44,31113,44,31120,44,31121,44,31122,44,31123,44,31124,44,31125,44,31126,44,31127,44,31128,44,31129,44,32768,44,32769,44,32770,44,32771,44,32772,44,32773,44,32774,44,32775,44,32776,44,32777,44,32784,44,32785,44,32786,44,32787,44,32788,44,32789,44,32790,44,32791,44,32792,44,32793,44,32800,44,32801,44,32802,44,32803,44,32804,44,32805,44,32806,44,32807,44,32808,44,32809,44,32816,44,32817,44,32818,44,32819,44,32820,44,32821,44,32822,44,32823,44,32824,44,32825,44,32832,44,32833,44,32834,44,32835,44,32836,44,32837,44,32838,44,32839,44,32840,44,32841,44,32848,44,32849,44,32850,44,32851,44,32852,44,32853,44,32854,44,32855,44,32856,44,32857,44,32864,44,32865,44,32866,44,32867,44,32868,44,32869,44,32870,44,32871,44,32872,44,32873,44,32880,44,32881,44,32882,44,32883,44,32884,44,32885,44,32886,44,32887,44,32888,44,32889,44,32896,44,32897,44,32898,44,32899,44,32900,44,32901,44,32902,44,32903,44,32904,44,32905,44,32912,44,32913,44,32914,44,32915,44,32916,44,32917,44,32918,44,32919,44,32920,44,32921,44,33024,44,33025,44,33026,44,33027,44,33028,44,33029,44,33030,44,33031,44,33032,44,33033,44,33040,44,33041,44,33042,44,33043,44,33044,44,33045,44,33046,44,33047,44,33048,44,33049,44,33056,44,33057,44,33058,44,33059,44,33060,44,33061,44,33062,44,33063,44,33064,44,33065,44,33072,44,33073,44,33074,44,33075,44,33076,44,33077,44,33078,44,33079,44,33080,44,33081,44,33088,44,33089,44,33090,44,33091,44,33092,44,33093,44,33094,44,33095,44,33096,44,33097,44,33104,44,33105,44,33106,44,33107,44,33108,44,33109,44,33110,44,33111,44,33112,44,33113,44,33120,44,33121,44,33122,44,33123,44,33124,44,33125,44,33126,44,33127,44,33128,44,33129,44,33136,44,33137,44,33138,44,33139,44,33140,44,33141,44,33142,44,33143,44,33144,44,33145,44,33152,44,33153,44,33154,44,33155,44,33156,44,33157,44,33158,44,33159,44,33160,44,33161,44,33168,44,33169,44,33170,44,33171,44,33172,44,33173,44,33174,44,33175,44,33176,44,33177,44,33280,44,33281,44,33282,44,33283,44,33284,44,33285,44,33286,44,33287,44,33288,44,33289,44,33296,44,33297,44,33298,44,33299,44,33300,44,33301,44,33302,44,33303,44,33304,44,33305,44,33312,44,33313,44,33314,44,33315,44,33316,44,33317,44,33318,44,33319,44,33320,44,33321,44,33328,44,33329,44,33330,44,33331,44,33332,44,33333,44,33334,44,33335,44,33336,44,33337,44,33344,44,33345,44,33346,44,33347,44,33348,44,33349,44,33350,44,33351,44,33352,44,33353,44,33360,44,33361,44,33362,44,33363,44,33364,44,33365,44,33366,44,33367,44,33368,44,33369,44,33376,44,33377,44,33378,44,33379,44,33380,44,33381,44,33382,44,33383,44,33384,44,33385,44,33392,44,33393,44,33394,44,33395,44,33396,44,33397,44,33398,44,33399,44,33400,44,33401,44,33408,44,33409,44,33410,44,33411,44,33412,44,33413,44,33414,44,33415,44,33416,44,33417,44,33424,44,33425,44,33426,44,33427,44,33428,44,33429,44,33430,44,33431,44,33432,44,33433,44,33536,44,33537,44,33538,44,33539,44,33540,44,33541,44,33542,44,33543,44,33544,44,33545,44,33552,44,33553,44,33554,44,33555,44,33556,44,33557,44,33558,44,33559,44,33560,44,33561,44,33568,44,33569,44,33570,44,33571,44,33572,44,33573,44,33574,44,33575,44,33576,44,33577,44,33584,44,33585,44,33586,44,33587,44,33588,44,33589,44,33590,44,33591,44,33592,44,33593,44,33600,44,33601,44,33602,44,33603,44,33604,44,33605,44,33606,44,33607,44,33608,44,33609,44,33616,44,33617,44,33618,44,33619,44,33620,44,33621,44,33622,44,33623,44,33624,44,33625,44,33632,44,33633,44,33634,44,33635,44,33636,44,33637,44,33638,44,33639,44,33640,44,33641,44,33648,44,33649,44,33650,44,33651,44,33652,44,33653,44,33654,44,33655,44,33656,44,33657,44,33664,44,33665,44,33666,44,33667,44,33668,44,33669,44,33670,44,33671,44,33672,44,33673,44,33680,44,33681,44,33682,44,33683,44,33684,44,33685,44,33686,44,33687,44,33688,44,33689,44,33792,44,33793,44,33794,44,33795,44,33796,44,33797,44,33798,44,33799,44,33800,44,33801,44,33808,44,33809,44,33810,44,33811,44,33812,44,33813,44,33814,44,33815,44,33816,44,33817,44,33824,44,33825,44,33826,44,33827,44,33828,44,33829,44,33830,44,33831,44,33832,44,33833,44,33840,44,33841,44,33842,44,33843,44,33844,44,33845,44,33846,44,33847,44,33848,44,33849,44,33856,44,33857,44,33858,44,33859,44,33860,44,33861,44,33862,44,33863,44,33864,44,33865,44,33872,44,33873,44,33874,44,33875,44,33876,44,33877,44,33878,44,33879,44,33880,44,33881,44,33888,44,33889,44,33890,44,33891,44,33892,44,33893,44,33894,44,33895,44,33896,44,33897,44,33904,44,33905,44,33906,44,33907,44,33908,44,33909,44,33910,44,33911,44,33912,44,33913,44,33920,44,33921,44,33922,44,33923,44,33924,44,33925,44,33926,44,33927,44,33928,44,33929,44,33936,44,33937,44,33938,44,33939,44,33940,44,33941,44,33942,44,33943,44,33944,44,33945,44,34048,44,34049,44,34050,44,34051,44,34052,44,34053,44,34054,44,34055,44,34056,44,34057,44,34064,44,34065,44,34066,44,34067,44,34068,44,34069,44,34070,44,34071,44,34072,44,34073,44,34080,44,34081,44,34082,44,34083,44,34084,44,34085,44,34086,44,34087,44,34088,44,34089,44,34096,44,34097,44,34098,44,34099,44,34100,44,34101,44,34102,44,34103,44,34104,44,34105,44,34112,44,34113,44,34114,44,34115,44,34116,44,34117,44,34118,44,34119,44,34120,44,34121,44,34128,44,34129,44,34130,44,34131,44,34132,44,34133,44,34134,44,34135,44,34136,44,34137,44,34144,44,34145,44,34146,44,34147,44,34148,44,34149,44,34150,44,34151,44,34152,44,34153,44,34160,44,34161,44,34162,44,34163,44,34164,44,34165,44,34166,44,34167,44,34168,44,34169,44,34176,44,34177,44,34178,44,34179,44,34180,44,34181,44,34182,44,34183,44,34184,44,34185,44,34192,44,34193,44,34194,44,34195,44,34196,44,34197,44,34198,44,34199,44,34200,44,34201,44,34304,44,34305,44,34306,44,34307,44,34308,44,34309,44,34310,44,34311,44,34312,44,34313,44,34320,44,34321,44,34322,44,34323,44,34324,44,34325,44,34326,44,34327,44,34328,44,34329,44,34336,44,34337,44,34338,44,34339,44,34340,44,34341,44,34342,44,34343,44,34344,44,34345,44,34352,44,34353,44,34354,44,34355,44,34356,44,34357,44,34358,44,34359,44,34360,44,34361,44,34368,44,34369,44,34370,44,34371,44,34372,44,34373,44,34374,44,34375,44,34376,44,34377,44,34384,44,34385,44,34386,44,34387,44,34388,44,34389,44,34390,44,34391,44,34392,44,34393,44,34400,44,34401,44,34402,44,34403,44,34404,44,34405,44,34406,44,34407,44,34408,44,34409,44,34416,44,34417,44,34418,44,34419,44,34420,44,34421,44,34422,44,34423,44,34424,44,34425,44,34432,44,34433,44,34434,44,34435,44,34436,44,34437,44,34438,44,34439,44,34440,44,34441,44,34448,44,34449,44,34450,44,34451,44,34452,44,34453,44,34454,44,34455,44,34456,44,34457,44,34560,44,34561,44,34562,44,34563,44,34564,44,34565,44,34566,44,34567,44,34568,44,34569,44,34576,44,34577,44,34578,44,34579,44,34580,44,34581,44,34582,44,34583,44,34584,44,34585,44,34592,44,34593,44,34594,44,34595,44,34596,44,34597,44,34598,44,34599,44,34600,44,34601,44,34608,44,34609,44,34610,44,34611,44,34612,44,34613,44,34614,44,34615,44,34616,44,34617,44,34624,44,34625,44,34626,44,34627,44,34628,44,34629,44,34630,44,34631,44,34632,44,34633,44,34640,44,34641,44,34642,44,34643,44,34644,44,34645,44,34646,44,34647,44,34648,44,34649,44,34656,44,34657,44,34658,44,34659,44,34660,44,34661,44,34662,44,34663,44,34664,44,34665,44,34672,44,34673,44,34674,44,34675,44,34676,44,34677,44,34678,44,34679,44,34680,44,34681,44,34688,44,34689,44,34690,44,34691,44,34692,44,34693,44,34694,44,34695,44,34696,44,34697,44,34704,44,34705,44,34706,44,34707,44,34708,44,34709,44,34710,44,34711,44,34712,44,34713,44,34816,44,34817,44,34818,44,34819,44,34820,44,34821,44,34822,44,34823,44,34824,44,34825,44,34832,44,34833,44,34834,44,34835,44,34836,44,34837,44,34838,44,34839,44,34840,44,34841,44,34848,44,34849,44,34850,44,34851,44,34852,44,34853,44,34854,44,34855,44,34856,44,34857,44,34864,44,34865,44,34866,44,34867,44,34868,44,34869,44,34870,44,34871,44,34872,44,34873,44,34880,44,34881,44,34882,44,34883,44,34884,44,34885,44,34886,44,34887,44,34888,44,34889,44,34896,44,34897,44,34898,44,34899,44,34900,44,34901,44,34902,44,34903,44,34904,44,34905,44,34912,44,34913,44,34914,44,34915,44,34916,44,34917,44,34918,44,34919,44,34920,44,34921,44,34928,44,34929,44,34930,44,34931,44,34932,44,34933,44,34934,44,34935,44,34936,44,34937,44,34944,44,34945,44,34946,44,34947,44,34948,44,34949,44,34950,44,34951,44,34952,44,34953,44,34960,44,34961,44,34962,44,34963,44,34964,44,34965,44,34966,44,34967,44,34968,44,34969,44,35072,44,35073,44,35074,44,35075,44,35076,44,35077,44,35078,44,35079,44,35080,44,35081,44,35088,44,35089,44,35090,44,35091,44,35092,44,35093,44,35094,44,35095,44,35096,44,35097,44,35104,44,35105,44,35106,44,35107,44,35108,44,35109,44,35110,44,35111,44,35112,44,35113,44,35120,44,35121,44,35122,44,35123,44,35124,44,35125,44,35126,44,35127,44,35128,44,35129,44,35136,44,35137,44,35138,44,35139,44,35140,44,35141,44,35142,44,35143,44,35144,44,35145,44,35152,44,35153,44,35154,44,35155,44,35156,44,35157,44,35158,44,35159,44,35160,44,35161,44,35168,44,35169,44,35170,44,35171,44,35172,44,35173,44,35174,44,35175,44,35176,44,35177,44,35184,44,35185,44,35186,44,35187,44,35188,44,35189,44,35190,44,35191,44,35192,44,35193,44,35200,44,35201,44,35202,44,35203,44,35204,44,35205,44,35206,44,35207,44,35208,44,35209,44,35216,44,35217,44,35218,44,35219,44,35220,44,35221,44,35222,44,35223,44,35224,44,35225,44,36864,44,36865,44,36866,44,36867,44,36868,44,36869,44,36870,44,36871,44,36872,44,36873,44,36880,44,36881,44,36882,44,36883,44,36884,44,36885,44,36886,44,36887,44,36888,44,36889,44,36896,44,36897,44,36898,44,36899,44,36900,44,36901,44,36902,44,36903,44,36904,44,36905,44,36912,44,36913,44,36914,44,36915,44,36916,44,36917,44,36918,44,36919,44,36920,44,36921,44,36928,44,36929,44,36930,44,36931,44,36932,44,36933,44,36934,44,36935,44,36936,44,36937,44,36944,44,36945,44,36946,44,36947,44,36948,44,36949,44,36950,44,36951,44,36952,44,36953,44,36960,44,36961,44,36962,44,36963,44,36964,44,36965,44,36966,44,36967,44,36968,44,36969,44,36976,44,36977,44,36978,44,36979,44,36980,44,36981,44,36982,44,36983,44,36984,44,36985,44,36992,44,36993,44,36994,44,36995,44,36996,44,36997,44,36998,44,36999,44,37000,44,37001,44,37008,44,37009,44,37010,44,37011,44,37012,44,37013,44,37014,44,37015,44,37016,44,37017,44,37120,44,37121,44,37122,44,37123,44,37124,44,37125,44,37126,44,37127,44,37128,44,37129,44,37136,44,37137,44,37138,44,37139,44,37140,44,37141,44,37142,44,37143,44,37144,44,37145,44,37152,44,37153,44,37154,44,37155,44,37156,44,37157,44,37158,44,37159,44,37160,44,37161,44,37168,44,37169,44,37170,44,37171,44,37172,44,37173,44,37174,44,37175,44,37176,44,37177,44,37184,44,37185,44,37186,44,37187,44,37188,44,37189,44,37190,44,37191,44,37192,44,37193,44,37200,44,37201,44,37202,44,37203,44,37204,44,37205,44,37206,44,37207,44,37208,44,37209,44,37216,44,37217,44,37218,44,37219,44,37220,44,37221,44,37222,44,37223,44,37224,44,37225,44,37232,44,37233,44,37234,44,37235,44,37236,44,37237,44,37238,44,37239,44,37240,44,37241,44,37248,44,37249,44,37250,44,37251,44,37252,44,37253,44,37254,44,37255,44,37256,44,37257,44,37264,44,37265,44,37266,44,37267,44,37268,44,37269,44,37270,44,37271,44,37272,44,37273,44,37376,44,37377,44,37378,44,37379,44,37380,44,37381,44,37382,44,37383,44,37384,44,37385,44,37392,44,37393,44,37394,44,37395,44,37396,44,37397,44,37398,44,37399,44,37400,44,37401,44,37408,44,37409,44,37410,44,37411,44,37412,44,37413,44,37414,44,37415,44,37416,44,37417,44,37424,44,37425,44,37426,44,37427,44,37428,44,37429,44,37430,44,37431,44,37432,44,37433,44,37440,44,37441,44,37442,44,37443,44,37444,44,37445,44,37446,44,37447,44,37448,44,37449,44,37456,44,37457,44,37458,44,37459,44,37460,44,37461,44,37462,44,37463,44,37464,44,37465,44,37472,44,37473,44,37474,44,37475,44,37476,44,37477,44,37478,44,37479,44,37480,44,37481,44,37488,44,37489,44,37490,44,37491,44,37492,44,37493,44,37494,44,37495,44,37496,44,37497,44,37504,44,37505,44,37506,44,37507,44,37508,44,37509,44,37510,44,37511,44,37512,44,37513,44,37520,44,37521,44,37522,44,37523,44,37524,44,37525,44,37526,44,37527,44,37528,44,37529,44,37632,44,37633,44,37634,44,37635,44,37636,44,37637,44,37638,44,37639,44,37640,44,37641,44,37648,44,37649,44,37650,44,37651,44,37652,44,37653,44,37654,44,37655,44,37656,44,37657,44,37664,44,37665,44,37666,44,37667,44,37668,44,37669,44,37670,44,37671,44,37672,44,37673,44,37680,44,37681,44,37682,44,37683,44,37684,44,37685,44,37686,44,37687,44,37688,44,37689,44,37696,44,37697,44,37698,44,37699,44,37700,44,37701,44,37702,44,37703,44,37704,44,37705,44,37712,44,37713,44,37714,44,37715,44,37716,44,37717,44,37718,44,37719,44,37720,44,37721,44,37728,44,37729,44,37730,44,37731,44,37732,44,37733,44,37734,44,37735,44,37736,44,37737,44,37744,44,37745,44,37746,44,37747,44,37748,44,37749,44,37750,44,37751,44,37752,44,37753,44,37760,44,37761,44,37762,44,37763,44,37764,44,37765,44,37766,44,37767,44,37768,44,37769,44,37776,44,37777,44,37778,44,37779,44,37780,44,37781,44,37782,44,37783,44,37784,44,37785,44,37888,44,37889,44,37890,44,37891,44,37892,44,37893,44,37894,44,37895,44,37896,44,37897,44,37904,44,37905,44,37906,44,37907,44,37908,44,37909,44,37910,44,37911,44,37912,44,37913,44,37920,44,37921,44,37922,44,37923,44,37924,44,37925,44,37926,44,37927,44,37928,44,37929,44,37936,44,37937,44,37938,44,37939,44,37940,44,37941,44,37942,44,37943,44,37944,44,37945,44,37952,44,37953,44,37954,44,37955,44,37956,44,37957,44,37958,44,37959,44,37960,44,37961,44,37968,44,37969,44,37970,44,37971,44,37972,44,37973,44,37974,44,37975,44,37976,44,37977,44,37984,44,37985,44,37986,44,37987,44,37988,44,37989,44,37990,44,37991,44,37992,44,37993,44,38000,44,38001,44,38002,44,38003,44,38004,44,38005,44,38006,44,38007,44,38008,44,38009,44,38016,44,38017,44,38018,44,38019,44,38020,44,38021,44,38022,44,38023,44,38024,44,38025,44,38032,44,38033,44,38034,44,38035,44,38036,44,38037,44,38038,44,38039,44,38040,44,38041,44,38144,44,38145,44,38146,44,38147,44,38148,44,38149,44,38150,44,38151,44,38152,44,38153,44,38160,44,38161,44,38162,44,38163,44,38164,44,38165,44,38166,44,38167,44,38168,44,38169,44,38176,44,38177,44,38178,44,38179,44,38180,44,38181,44,38182,44,38183,44,38184,44,38185,44,38192,44,38193,44,38194,44,38195,44,38196,44,38197,44,38198,44,38199,44,38200,44,38201,44,38208,44,38209,44,38210,44,38211,44,38212,44,38213,44,38214,44,38215,44,38216,44,38217,44,38224,44,38225,44,38226,44,38227,44,38228,44,38229,44,38230,44,38231,44,38232,44,38233,44,38240,44,38241,44,38242,44,38243,44,38244,44,38245,44,38246,44,38247,44,38248,44,38249,44,38256,44,38257,44,38258,44,38259,44,38260,44,38261,44,38262,44,38263,44,38264,44,38265,44,38272,44,38273,44,38274,44,38275,44,38276,44,38277,44,38278,44,38279,44,38280,44,38281,44,38288,44,38289,44,38290,44,38291,44,38292,44,38293,44,38294,44,38295,44,38296,44,38297,44,38400,44,38401,44,38402,44,38403,44,38404,44,38405,44,38406,44,38407,44,38408,44,38409,44,38416,44,38417,44,38418,44,38419,44,38420,44,38421,44,38422,44,38423,44,38424,44,38425,44,38432,44,38433,44,38434,44,38435,44,38436,44,38437,44,38438,44,38439,44,38440,44,38441,44,38448,44,38449,44,38450,44,38451,44,38452,44,38453,44,38454,44,38455,44,38456,44,38457,44,38464,44,38465,44,38466,44,38467,44,38468,44,38469,44,38470,44,38471,44,38472,44,38473,44,38480,44,38481,44,38482,44,38483,44,38484,44,38485,44,38486,44,38487,44,38488,44,38489,44,38496,44,38497,44,38498,44,38499,44,38500,44,38501,44,38502,44,38503,44,38504,44,38505,44,38512,44,38513,44,38514,44,38515,44,38516,44,38517,44,38518,44,38519,44,38520,44,38521,44,38528,44,38529,44,38530,44,38531,44,38532,44,38533,44,38534,44,38535,44,38536,44,38537,44,38544,44,38545,44,38546,44,38547,44,38548,44,38549,44,38550,44,38551,44,38552,44,38553,44,38656,44,38657,44,38658,44,38659,44,38660,44,38661,44,38662,44,38663,44,38664,44,38665,44,38672,44,38673,44,38674,44,38675,44,38676,44,38677,44,38678,44,38679,44,38680,44,38681,44,38688,44,38689,44,38690,44,38691,44,38692,44,38693,44,38694,44,38695,44,38696,44,38697,44,38704,44,38705,44,38706,44,38707,44,38708,44,38709,44,38710,44,38711,44,38712,44,38713,44,38720,44,38721,44,38722,44,38723,44,38724,44,38725,44,38726,44,38727,44,38728,44,38729,44,38736,44,38737,44,38738,44,38739,44,38740,44,38741,44,38742,44,38743,44,38744,44,38745,44,38752,44,38753,44,38754,44,38755,44,38756,44,38757,44,38758,44,38759,44,38760,44,38761,44,38768,44,38769,44,38770,44,38771,44,38772,44,38773,44,38774,44,38775,44,38776,44,38777,44,38784,44,38785,44,38786,44,38787,44,38788,44,38789,44,38790,44,38791,44,38792,44,38793,44,38800,44,38801,44,38802,44,38803,44,38804,44,38805,44,38806,44,38807,44,38808,44,38809,44,38912,44,38913,44,38914,44,38915,44,38916,44,38917,44,38918,44,38919,44,38920,44,38921,44,38928,44,38929,44,38930,44,38931,44,38932,44,38933,44,38934,44,38935,44,38936,44,38937,44,38944,44,38945,44,38946,44,38947,44,38948,44,38949,44,38950,44,38951,44,38952,44,38953,44,38960,44,38961,44,38962,44,38963,44,38964,44,38965,44,38966,44,38967,44,38968,44,38969,44,38976,44,38977,44,38978,44,38979,44,38980,44,38981,44,38982,44,38983,44,38984,44,38985,44,38992,44,38993,44,38994,44,38995,44,38996,44,38997,44,38998,44,38999,44,39000,44,39001,44,39008,44,39009,44,39010,44,39011,44,39012,44,39013,44,39014,44,39015,44,39016,44,39017,44,39024,44,39025,44,39026,44,39027,44,39028,44,39029,44,39030,44,39031,44,39032,44,39033,44,39040,44,39041,44,39042,44,39043,44,39044,44,39045,44,39046,44,39047,44,39048,44,39049,44,39056,44,39057,44,39058,44,39059,44,39060,44,39061,44,39062,44,39063,44,39064,44,39065,44,39168,44,39169,44,39170,44,39171,44,39172,44,39173,44,39174,44,39175,44,39176,44,39177,44,39184,44,39185,44,39186,44,39187,44,39188,44,39189,44,39190,44,39191,44,39192,44,39193,44,39200,44,39201,44,39202,44,39203,44,39204,44,39205,44,39206,44,39207,44,39208,44,39209,44,39216,44,39217,44,39218,44,39219,44,39220,44,39221,44,39222,44,39223,44,39224,44,39225,44,39232,44,39233,44,39234,44,39235,44,39236,44,39237,44,39238,44,39239,44,39240,44,39241,44,39248,44,39249,44,39250,44,39251,44,39252,44,39253,44,39254,44,39255,44,39256,44,39257,44,39264,44,39265,44,39266,44,39267,44,39268,44,39269,44,39270,44,39271,44,39272,44,39273,44,39280,44,39281,44,39282,44,39283,44,39284,44,39285,44,39286,44,39287,44,39288,44,39289,44,39296,44,39297,44,39298,44,39299,44,39300,44,39301,44,39302,44,39303,44,39304,44,39305,44,39312,44,39313,44,39314,44,39315,44,39316,44,39317,44,39318,44,39319,44,39320,44,39321,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,91,92,119,93,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,91,92,119,93,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00985'(_Config) ->
   Qry = [40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,48,44,49,44,50,44,51,44,52,44,53,44,54,44,55,44,56,44,57,44,1632,44,1633,44,1634,44,1635,44,1636,44,1637,44,1638,44,1639,44,1640,44,1641,44,1776,44,1777,44,1778,44,1779,44,1780,44,1781,44,1782,44,1783,44,1784,44,1785,44,2406,44,2407,44,2408,44,2409,44,2410,44,2411,44,2412,44,2413,44,2414,44,2415,44,2534,44,2535,44,2536,44,2537,44,2538,44,2539,44,2540,44,2541,44,2542,44,2543,44,2662,44,2663,44,2664,44,2665,44,2666,44,2667,44,2668,44,2669,44,2670,44,2671,44,2790,44,2791,44,2792,44,2793,44,2794,44,2795,44,2796,44,2797,44,2798,44,2799,44,2918,44,2919,44,2920,44,2921,44,2922,44,2923,44,2924,44,2925,44,2926,44,2927,44,3047,44,3048,44,3049,44,3050,44,3051,44,3052,44,3053,44,3054,44,3055,44,3174,44,3175,44,3176,44,3177,44,3178,44,3179,44,3180,44,3181,44,3182,44,3183,44,3302,44,3303,44,3304,44,3305,44,3306,44,3307,44,3308,44,3309,44,3310,44,3311,44,3430,44,3431,44,3432,44,3433,44,3434,44,3435,44,3436,44,3437,44,3438,44,3439,44,3664,44,3665,44,3666,44,3667,44,3668,44,3669,44,3670,44,3671,44,3672,44,3673,44,3792,44,3793,44,3794,44,3795,44,3796,44,3797,44,3798,44,3799,44,3800,44,3801,44,3872,44,3873,44,3874,44,3875,44,3876,44,3877,44,3878,44,3879,44,3880,44,3881,44,4160,44,4161,44,4162,44,4163,44,4164,44,4165,44,4166,44,4167,44,4168,44,4169,44,6112,44,6113,44,6114,44,6115,44,6116,44,6117,44,6118,44,6119,44,6120,44,6121,44,6160,44,6161,44,6162,44,6163,44,6164,44,6165,44,6166,44,6167,44,6168,44,6169,44,65296,44,65297,44,65298,44,65299,44,65300,44,65301,44,65302,44,65303,44,65304,44,65305,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,91,92,100,93,41,36,39,41,41,32,97,110,100,32,40,101,118,101,114,121,32,36,115,32,105,110,32,116,111,107,101,110,105,122,101,40,39,9,44,10,44,13,44,32,44,33,44,34,44,35,44,36,44,50787,44,50788,44,50789,44,50790,44,50791,44,50792,44,50793,44,50794,44,50795,44,50796,44,50797,44,50798,44,50799,44,50800,44,50801,44,50802,44,50803,44,50804,44,50805,44,50806,44,50807,44,50808,44,50809,44,50810,44,50811,44,50812,44,50813,44,50814,44,50815,44,50816,44,50817,44,50818,44,50819,44,50820,44,50821,44,50822,44,50823,44,50824,44,50825,44,50826,44,50827,44,50828,44,50829,44,50830,44,50831,44,50832,44,50833,44,50834,44,50835,44,50836,44,50837,44,50838,44,50839,44,50840,44,50841,44,50842,44,50843,44,50844,44,50845,44,50846,44,50847,44,50848,44,50849,44,50850,44,50851,44,50852,44,50853,44,50854,44,50855,44,50856,44,50857,44,50858,44,50859,44,50860,44,50861,44,50862,44,50863,44,50864,44,50865,44,50866,44,50867,44,50868,44,50869,44,50870,44,50871,44,50872,44,50873,44,50874,44,50875,44,50876,44,50877,44,50878,44,50879,44,50880,44,50881,44,50882,44,50883,44,50884,44,50885,44,50886,44,50887,44,50888,44,50889,44,50890,44,50891,44,50892,44,50893,44,50894,44,50895,44,50896,44,50897,44,50898,44,50899,44,50900,44,50901,44,50902,44,50903,44,50904,44,50905,44,50906,44,50907,44,50908,44,50909,44,50910,44,50911,44,50912,44,50913,44,50914,44,50915,44,50916,44,50917,44,50918,44,50919,44,50920,44,50921,44,50922,44,50923,44,50924,44,50925,44,50926,44,50927,44,50928,44,50929,44,50930,44,50931,44,50932,44,50933,44,50934,44,50935,44,50936,44,50937,44,50938,44,50939,44,50940,44,50941,44,50942,44,50943,44,50944,44,50945,44,50946,44,50947,44,50948,44,50949,44,50950,44,50951,44,50952,44,50953,44,50954,44,50955,44,50956,44,50957,44,50958,44,50959,44,50960,44,50961,44,50962,44,50963,44,50964,44,50965,44,50966,44,50967,44,50968,44,50969,44,50970,44,50971,44,50972,44,50973,44,50974,44,50975,44,50976,44,50977,44,50978,44,50979,44,50980,44,50981,44,50982,44,50983,44,50984,44,50985,44,50986,44,50987,44,50988,44,50989,44,50990,44,50991,44,50992,44,50993,44,50994,44,50995,44,50996,44,50997,44,50998,44,50999,44,51000,44,51001,44,51002,44,51003,44,51004,44,51005,44,51006,44,51007,44,51008,44,51009,44,51010,44,51011,44,51012,44,51013,44,51014,44,51015,44,51016,44,51017,44,51018,44,51019,44,51020,44,51021,44,51022,44,51023,44,51024,44,51025,44,51026,44,51027,44,51028,44,51029,44,51030,44,51031,44,51032,44,51033,44,51034,44,51035,44,51036,44,51037,44,51038,44,51039,44,51040,44,51041,44,51042,44,51043,44,51044,44,51045,44,51046,44,51047,44,51048,44,51049,44,51050,44,51051,44,51052,44,51053,44,51054,44,51055,44,51056,44,51057,44,51058,44,51059,44,51060,44,51061,44,51062,44,51063,44,51064,44,51065,44,51066,44,51067,44,51068,44,51116,44,51117,44,51118,44,51119,44,51120,44,51121,44,51122,44,51123,44,51124,44,51125,44,51126,44,51127,44,51128,44,51129,44,51130,44,51131,44,51132,44,51133,44,51134,44,51135,44,51136,44,51137,44,51138,44,51139,44,51140,44,51141,44,51142,44,51143,44,51144,44,51145,44,51146,44,51147,44,51148,44,51149,44,51150,44,51151,44,51152,44,51153,44,51154,44,51155,44,51156,44,51157,44,51158,44,51159,44,51160,44,51161,44,51162,44,51163,44,51164,44,51165,44,51166,44,51167,44,51168,44,51169,44,51170,44,51171,44,51172,44,51173,44,51174,44,51175,44,51176,44,51177,44,51178,44,51179,44,51180,44,51181,44,51182,44,51183,44,51184,44,51185,44,51186,44,51187,44,51188,44,51189,44,51190,44,51191,44,51192,44,51193,44,51194,44,51195,44,51196,44,51197,44,51198,44,51199,44,51200,44,51201,44,51202,44,51203,44,51204,44,51205,44,51206,44,51207,44,51208,44,51209,44,51210,44,51211,44,51212,44,51213,44,51214,44,51215,44,51216,44,51217,44,51218,44,51219,44,51220,44,51221,44,51222,44,51223,44,51224,44,51225,44,51226,44,51227,44,51228,44,51229,44,51230,44,51231,44,51232,44,51233,44,51234,44,51235,44,51236,44,51237,44,51238,44,51239,44,51240,44,51241,44,51242,44,51243,44,51244,44,51245,44,51246,44,51247,44,51248,44,51249,44,51250,44,51251,44,51252,44,51253,44,51254,44,51255,44,51256,44,51257,44,51258,44,51259,44,51260,44,51261,44,51262,44,51263,44,51264,44,51265,44,51266,44,51267,44,51268,44,51269,44,51270,44,51271,44,51272,44,51273,44,51274,44,51275,39,124,124,10,39,44,51276,44,51277,44,51278,44,51279,44,51280,44,51281,44,51282,44,51283,44,51284,44,51285,44,51286,44,51287,44,51288,44,51289,44,51290,44,51291,44,51292,44,51293,44,51294,44,51295,44,51296,44,51297,44,51298,44,51299,44,51300,44,51301,44,51302,44,51303,44,51304,44,51305,44,51306,44,51307,44,51308,44,51309,44,51310,44,51311,44,51312,44,51313,44,51314,44,51315,44,51316,44,51317,44,51318,44,51319,44,51320,44,51321,44,51322,44,51323,44,51324,44,51325,44,51326,44,51327,44,51328,44,51329,44,51330,44,51331,44,51332,44,51333,44,51334,44,51335,44,51336,44,51337,44,51338,44,51339,44,51340,44,51341,44,51342,44,51343,44,51344,44,51345,44,51346,44,51347,44,51348,44,51349,44,51350,44,51351,44,51352,44,51353,44,51354,44,51355,44,51356,44,51357,44,51358,44,51359,44,51360,44,51361,44,51362,44,51363,44,51364,44,51365,44,51366,44,51367,44,51368,44,51369,44,51370,44,51371,44,51372,44,51373,44,51374,44,51375,44,51376,44,51377,44,51378,44,51379,44,51380,44,51381,44,51382,44,51383,44,51384,44,51385,44,51386,44,51387,44,51388,44,51389,44,51390,44,51391,44,51392,44,51393,44,51394,44,51395,44,51396,44,51397,44,51398,44,51399,44,51400,44,51401,44,51402,44,51403,44,51404,44,51405,44,51406,44,51407,44,51408,44,51409,44,51410,44,51411,44,51412,44,51413,44,51414,44,51415,44,51416,44,51417,44,51418,44,51419,44,51420,44,51421,44,51422,44,51423,44,51424,44,51425,44,51426,44,51427,44,51428,44,51429,44,51430,44,51431,44,51432,44,51433,44,51434,44,51435,44,51436,44,51437,44,51438,44,51439,44,51440,44,51441,44,51442,44,51443,44,51444,44,51445,44,51446,44,51447,44,51448,44,51449,44,51450,44,51451,44,51452,44,51453,44,51454,44,51455,44,51456,44,51457,44,51458,44,51459,44,51460,44,51461,44,51462,44,51463,44,51464,44,51465,44,51466,44,51467,44,51468,44,51469,44,51470,44,51471,44,51472,44,51473,44,51474,44,51475,44,51476,44,51477,44,51478,44,51479,44,51480,44,51481,44,51482,44,51483,44,51484,44,51485,44,51486,44,51487,44,51488,44,51489,44,51490,44,51491,44,51492,44,51493,44,51494,44,51495,44,51496,44,51497,44,51498,44,51499,44,51500,44,51501,44,51502,44,51503,44,51504,44,51505,44,51506,44,51507,44,51508,44,51509,44,51510,44,51511,44,51512,44,51513,44,51514,44,51515,44,51516,44,51517,44,51518,44,51519,44,51520,44,51521,44,51522,44,51523,44,51524,44,51525,44,51526,44,51527,44,51528,44,51529,44,51530,44,51531,44,51532,44,51533,44,51534,44,51535,44,51536,44,51537,44,51538,44,51539,44,51540,44,51541,44,51542,44,51543,44,51544,44,51545,44,51546,44,51547,44,51548,44,51549,44,51550,44,51551,44,51552,44,51553,44,51554,44,51555,44,51556,44,51557,44,51558,44,51559,44,51560,44,51561,44,51562,44,51563,44,51564,44,51565,44,51566,44,51567,44,51568,44,51569,44,51570,44,65282,44,65283,44,65284,44,65285,44,65286,44,65287,44,65288,44,65289,44,65290,44,65291,44,65292,44,65293,44,65294,44,65295,44,65306,44,65307,44,65308,44,65309,44,65310,44,65311,44,65312,44,65313,44,65314,44,65315,44,65316,44,65317,44,65318,44,65319,44,65320,44,65321,44,65322,44,65323,44,65324,44,65325,44,65326,44,65327,44,65328,44,65329,44,65330,44,65331,44,65332,44,65333,44,65334,44,65335,44,65336,44,65337,44,65338,44,65339,44,65340,44,65341,44,65342,44,65343,44,65344,44,65345,44,65346,44,65347,44,65348,44,65349,44,65350,44,65351,44,65352,44,65353,44,65354,44,65355,44,65356,44,65357,44,65358,44,65359,44,65360,44,65361,44,65362,44,65363,44,65364,44,65365,44,65366,44,65367,44,65368,44,65369,44,65370,44,65371,44,65372,44,65373,44,65374,44,65375,44,65376,44,65377,44,65378,44,65379,44,65380,44,65381,44,65382,44,65383,44,65384,44,65385,44,65386,44,65387,44,65388,44,65389,44,65390,44,65391,44,65392,44,65393,44,65394,44,65395,44,65396,44,65397,44,65398,44,65399,44,65400,44,65401,44,65402,44,65403,44,65404,44,65405,44,65406,44,65407,44,65408,44,65409,44,65410,44,65411,44,65412,44,65413,44,65414,44,65415,44,65416,44,65417,44,65418,44,65419,44,65420,44,65421,44,65506,44,65507,44,65508,44,65509,44,65510,44,65511,44,65512,44,65513,44,65514,44,65515,44,65516,44,65517,44,65518,44,65519,44,65520,44,65521,44,65522,44,65523,44,65524,44,65525,44,65526,44,65527,44,65528,44,65529,44,65530,44,65531,44,65532,44,65533,39,44,32,39,44,39,41,32,115,97,116,105,115,102,105,101,115,32,110,111,116,40,109,97,116,99,104,101,115,40,36,115,44,32,39,94,40,63,58,91,92,100,93,41,36,39,41,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00987'(_Config) ->
   Qry = "(for $range in
            tokenize('65-90;97-122;192-214;216-246;248-305;308-318;321-328;330-382;384-451;461-496;500-501;506-535;592-680;699-705;902-902;904-906;908-908;910-929;931-974;976-982;986-986;988-988;990-990;992-992;994-1011;1025-1036;1038-1103;1105-1116;1118-1153;1168-1220;1223-1224;1227-1228;1232-1259;1262-1269;1272-1273;1329-1366;1369-1369;1377-1414;1488-1514;1520-1522;1569-1594;1601-1610;1649-1719;1722-1726;1728-1742;1744-1747;1749-1749;1765-1766;2309-2361;2365-2365;2392-2401;2437-2444;2447-2448;2451-2472;2474-2480;2482-2482;2486-2489;2524-2525;2527-2529;2544-2545;2565-2570;'||
            '2575-2576;2579-2600;2602-2608;2610-2611;2613-2614;2616-2617;2649-2652;2654-2654;2674-2676;2693-2699;2701-2701;2703-2705;2707-2728;2730-2736;2738-2739;2741-2745;2749-2749;2784-2784;2821-2828;2831-2832;2835-2856;2858-2864;2866-2867;2870-2873;2877-2877;2908-2909;2911-2913;2949-2954;2958-2960;2962-2965;2969-2970;2972-2972;2974-2975;2979-2980;2984-2986;2990-2997;2999-3001;3077-3084;3086-3088;3090-3112;3114-3123;3125-3129;3168-3169;3205-3212;3214-3216;3218-3240;3242-3251;3253-3257;3294-3294;3296-3297;3333-3340;3342-3344;3346-3368;3370-3385;3424-3425;3585-3630;3632-3632;'||
            '3634-3635;3648-3653;3713-3714;3716-3716;3719-3720;3722-3722;3725-3725;3732-3735;3737-3743;3745-3747;3749-3749;3751-3751;3754-3755;3757-3758;3760-3760;3762-3763;3773-3773;3776-3780;3904-3911;3913-3945;4256-4293;4304-4342;4352-4352;4354-4355;4357-4359;4361-4361;4363-4364;4366-4370;4412-4412;4414-4414;4416-4416;4428-4428;4430-4430;4432-4432;4436-4437;4441-4441;4447-4449;4451-4451;4453-4453;4455-4455;4457-4457;4461-4462;4466-4467;4469-4469;4510-4510;4520-4520;4523-4523;4526-4527;4535-4536;4538-4538;4540-4546;4587-4587;4592-4592;4601-4601;7680-7835;7840-7929;7936-7957;'||
            '7960-7965;7968-8005;8008-8013;8016-8023;8025-8025;8027-8027;8029-8029;8031-8061;8064-8116;8118-8124;8126-8126;8130-8132;8134-8140;8144-8147;8150-8155;8160-8172;8178-8180;8182-8188;8486-8486;8490-8491;8494-8494;8576-8578;12353-12436;12449-12538;12549-12588;44032-55203;19968-40869;12295-12295;12321-12329;48-57;1632-1641;1776-1785;2406-2415;2534-2543;2662-2671;2790-2799;2918-2927;3047-3055;3174-3183;3302-3311;3430-3439;3664-3673;3792-3801;3872-3881;768-837;864-865;1155-1158;1425-1441;1443-1465;1467-1469;1471-1471;1473-1474;1476-1476;1611-1618;1648-1648;1750-1764;1767-1768;'||
            '1770-1773;2305-2307;2364-2364;2366-2381;2385-2388;2402-2403;2433-2435;2492-2492;2494-2500;2503-2504;2507-2509;2519-2519;2530-2531;2562-2562;2620-2620;2622-2626;2631-2632;2635-2637;2672-2673;2689-2691;2748-2748;2750-2757;2759-2761;2763-2765;2817-2819;2876-2876;2878-2883;2887-2888;2891-2893;2902-2903;2946-2947;3006-3010;3014-3016;3018-3021;3031-3031;3073-3075;3134-3140;3142-3144;3146-3149;3157-3158;3202-3203;3262-3268;3270-3272;3274-3277;3285-3286;3330-3331;3390-3395;3398-3400;3402-3405;3415-3415;3633-3633;3636-3642;3655-3662;3761-3761;3764-3769;3771-3772;3784-3789;3864-3865;'||
            '3893-3893;3895-3895;3897-3897;3902-3903;3953-3972;3974-3979;3984-3989;3991-3991;3993-4013;4017-4023;4025-4025;8400-8412;8417-8417;12330-12335;12441-12442;183-183;720-721;903-903;1600-1600;3654-3654;3782-3782;12293-12293;12337-12341;12445-12446;12540-12542;58-58;95-95;45-46;65-90;97-122;192-214;216-246;248-305;308-318;321-328;330-382;384-451;461-496;500-501;506-535;592-680;699-705;902-902;904-906;908-908;910-929;931-974;976-982;986-986;988-988;990-990;992-992;994-1011;1025-1036;1038-1103;1105-1116;1118-1153;1168-1220;1223-1224;1227-1228;1232-1259;1262-1269;1272-1273;1329-1366;'||
            '1369-1369;1377-1414;1488-1514;1520-1522;1569-1594;1601-1610;1649-1719;1722-1726;1728-1742;1744-1747;1749-1749;1765-1766;2309-2361;2365-2365;2392-2401;2437-2444;2447-2448;2451-2472;2474-2480;2482-2482;2486-2489;2524-2525;2527-2529;2544-2545;2565-2570;2575-2576;2579-2600;2602-2608;2610-2611;2613-2614;2616-2617;2649-2652;2654-2654;2674-2676;2693-2699;2701-2701;2703-2705;2707-2728;2730-2736;2738-2739;2741-2745;2749-2749;2784-2784;2821-2828;2831-2832;2835-2856;2858-2864;2866-2867;2870-2873;2877-2877;2908-2909;2911-2913;2949-2954;2958-2960;2962-2965;2969-2970;2972-2972;2974-2975;'||
            '2979-2980;2984-2986;2990-2997;2999-3001;3077-3084;3086-3088;3090-3112;3114-3123;3125-3129;3168-3169;3205-3212;3214-3216;3218-3240;3242-3251;3253-3257;3294-3294;3296-3297;3333-3340;3342-3344;3346-3368;3370-3385;3424-3425;3585-3630;3632-3632;3634-3635;3648-3653;3713-3714;3716-3716;3719-3720;3722-3722;3725-3725;3732-3735;3737-3743;3745-3747;3749-3749;3751-3751;3754-3755;3757-3758;3760-3760;3762-3763;3773-3773;3776-3780;3904-3911;3913-3945;4256-4293;4304-4342;4352-4352;4354-4355;4357-4359;4361-4361;4363-4364;4366-4370;4412-4412;4414-4414;4416-4416;4428-4428;4430-4430;4432-4432;'||
            '4436-4437;4441-4441;4447-4449;4451-4451;4453-4453;4455-4455;4457-4457;4461-4462;4466-4467;4469-4469;4510-4510;4520-4520;4523-4523;4526-4527;4535-4536;4538-4538;4540-4546;4587-4587;4592-4592;4601-4601;7680-7835;7840-7929;7936-7957;7960-7965;7968-8005;8008-8013;8016-8023;8025-8025;8027-8027;8029-8029;8031-8061;8064-8116;8118-8124;8126-8126;8130-8132;8134-8140;8144-8147;8150-8155;8160-8172;8178-8180;8182-8188;8486-8486;8490-8491;8494-8494;8576-8578;12353-12436;12449-12538;12549-12588;44032-55203;19968-40869;12295-12295;12321-12329;48-57;1632-1641;1776-1785;2406-2415;2534-2543;'||
            '2662-2671;2790-2799;2918-2927;3047-3055;3174-3183;3302-3311;3430-3439;3664-3673;3792-3801;3872-3881;768-836;864-865;1155-1158;1425-1441;1443-1465;1467-1469;1471-1471;1473-1474;1476-1476;1611-1618;1648-1648;1750-1764;1767-1768;1770-1773;2305-2307;2364-2364;2366-2381;2385-2388;2402-2403;2433-2435;2492-2492;2494-2500;2503-2504;2507-2509;2519-2519;2530-2531;2562-2562;2620-2620;2622-2626;2631-2632;2635-2637;2672-2673;2689-2691;2748-2748;2750-2757;2759-2761;2763-2765;2817-2819;2876-2876;2878-2883;2887-2888;2891-2893;'||
            '2902-2903;2946-2947;3006-3010;3014-3016;3018-3021;3031-3031;3073-3075;3134-3140;3142-3144;3146-3149;3157-3158;3202-3203;3262-3268;3270-3272;3274-3277;3285-3286;3330-3331;3390-3395;3398-3400;3402-3405;3415-3415;3633-3633;3636-3642;3655-3662;3761-3761;3764-3769;3771-3772;3784-3789;3864-3865;3893-3893;3895-3895;3897-3897;3902-3903;3953-3972;3974-3979;3984-3989;3991-3991;3993-4013;4017-4023;4025-4025;8400-8412;8417-8417;12330-12335;12441-12442;183-183;720-721;903-903;1600-1600;3654-3654;3782-3782;12293-12293;12337-12341;12445-12446;12540-12542;58-58;95-95;45-46', ';')
            let $s := xs:integer(substring-before($range, '-')) 
            let $e := xs:integer(substring-after($range, '-')) 
            for $c in ($s to $e)!codepoints-to-string(.)
            where not(matches($c, '^([\\c])$')) 
            return string-to-codepoints($c)), 
            
            (for $range in tokenize('161-161', ';') 
            let $s := xs:integer(substring-before($range, '-')) 
            let $e := xs:integer(substring-after($range, '-')) 
            for $c in ($s to $e)!codepoints-to-string(.)
            where (matches($c, '^([\\c])$')) 
            return string-to-codepoints($c)) 
        ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            
        ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
're00988'(_Config) ->
   Qry = "matches('qwerty','[-[xyz]]')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00989'(_Config) ->
   Qry = "matches('qwerty','[^-[xyz]]')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00990'(_Config) ->
   Qry = "matches('$', '^\\$$') and not(matches('\\$', '^\\$$'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00991'(_Config) ->
   Qry = "matches('$', '[\\$]') and not(matches('\\$', '^[\\$]$'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00992'(_Config) ->
   Qry = "matches('$$', '(.)\\1')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00993'(_Config) ->
   Qry = "matches('$$9', '(.)\\19')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00994'(_Config) ->
   Qry = "matches('$$9', '(((((((((((.)))))))))))\\119')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00995'(_Config) ->
   Qry = "matches('$$9', '(.)\\2')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00996'(_Config) ->
   Qry = "matches('$$9', '(.)(\\2)')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00997'(_Config) ->
   Qry = "matches('$$9', '((((((((((.))))))))))(\\11)9')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
're00998'(_Config) ->
   Qry = "matches('alpha', 'alp^?ha')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're00999'(_Config) ->
   Qry = "matches('alpha', 'alp^+ha')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
're01000'(_Config) ->
   Qry = "matches('alpha', '^{2}alpha') and not(matches('zalpha', '^{2}alpha'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're01001'(_Config) ->
   Qry = "matches('alpha', 'alp$?ha')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
're01002'(_Config) ->
   Qry = "matches('alpha', 'alp${2,4}ha')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
're01003'(_Config) ->
   Qry = "matches('alpha', 'alpha$+') and not(matches('alphax', 'alpha$+'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
