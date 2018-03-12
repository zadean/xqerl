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
suite() ->
[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> ct:timetrap({seconds,60}), xqerl_module:unload(all).
init_per_suite(Config) -> 
   ok = application:ensure_started(mnesia),
   ok = application:ensure_started(xqerl_db),
   xqerl_module:one_time_init(), 
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   BaseDir = filename:join(TD, "fn")

,[{base_dir, BaseDir}|Config].
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
environment('empty',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('atomic',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/atomic.xml"), ".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{filename:join(BaseDir, "../docs/atomic.xsd"),"http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{resources, []},
{modules, []}
];
environment('atomic-xq',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/atomic.xml"), ".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{filename:join(BaseDir, "../docs/atomic.xsd"),"http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-mod',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/works-mod.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/works.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('staff',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/staff.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-and-staff',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/works.xml"), "$works",""},
{filename:join(BaseDir, "../docs/staff.xml"), "$staff",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('auction',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/auction.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.example.com/AuctionWatch","ma"},
{"http://www.w3.org/1999/xlink","xlink"},
{"http://www.example.com/auctioneers#anyzone","anyzone"},
{"http://www.example.com/auctioneers#eachbay","eachbay"},
{"http://www.example.com/auctioneers#yabadoo","yabadoo"},
{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('qname',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/QName-source.xml"), ".",""}]},
{schemas, [{filename:join(BaseDir, "../docs/QName-schema.xsd"),"http://www.example.com/QNameXSD"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.example.com/QNameXSD",""}]},
{resources, []},
{modules, []}
];
environment('math',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/math","math"}]},
{resources, []},
{modules, []}
];
environment('array',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"}]},
{resources, []},
{modules, []}
];
environment('map',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('array-and-map',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"},
{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
].
're00001'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize(',', ',') satisfies matches($s, '^(?:)$')) and (every $s in tokenize('a,#x20;,#xD;,#x9;,#xA;', ',') satisfies not(matches($s, '^(?:)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00002'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('a', ',') satisfies matches($s, '^(?:a)$')) and (every $s in tokenize('aa,b,', ',') satisfies not(matches($s, '^(?:a)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00003'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('a', ',') satisfies matches($s, '^(?:a|a)$')) and (every $s in tokenize('aa,b,', ',') satisfies not(matches($s, '^(?:a|a)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00004'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('a,b', ',') satisfies matches($s, '^(?:a|b)$')) and (every $s in tokenize('aa,bb,ab,', ',') satisfies not(matches($s, '^(?:a|b)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00005'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('ab', ',') satisfies matches($s, '^(?:ab)$')) and (every $s in tokenize('a,b,aa,bb,', ',') satisfies not(matches($s, '^(?:ab)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00005.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00006'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('a,b,c,d', ',') satisfies matches($s, '^(?:a|b|a|c|b|d|a)$')) and (every $s in tokenize('aa,ac,e', ',') satisfies not(matches($s, '^(?:a|b|a|c|b|d|a)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00006.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00007'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('       a', ',') satisfies matches($s, '^(?:       a|b      )$')) and (every $s in tokenize('abc', ',') satisfies not(matches($s, '^(?:       a|b      )$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00007.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00008'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('ac,abc', ',') satisfies matches($s, '^(?:ab?c)$')) and (every $s in tokenize('a,ab,bc,', ',') satisfies not(matches($s, '^(?:ab?c)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00008.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00009'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('ab,abc', ',') satisfies matches($s, '^(?:abc?)$')) and (every $s in tokenize('a,bc,abcc,', ',') satisfies not(matches($s, '^(?:abc?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00009.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00010'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('abc,abbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbc', ',') satisfies matches($s, '^(?:ab+c)$')) and (every $s in tokenize('ac,bbbc,abbb,', ',') satisfies not(matches($s, '^(?:ab+c)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00010.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00011'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('abc,abccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc', ',') satisfies matches($s, '^(?:abc+)$')) and (every $s in tokenize('a,ab,abcd', ',') satisfies not(matches($s, '^(?:abc+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00011.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00012'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('abc,abbbbbbbc,ac', ',') satisfies matches($s, '^(?:ab*c)$')) and (every $s in tokenize('a,ab,bc,c,abcb,', ',') satisfies not(matches($s, '^(?:ab*c)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00012.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00013'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('abc,ab,abccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc', ',') satisfies matches($s, '^(?:abc*)$')) and (every $s in tokenize('a,abcd,abbc,', ',') satisfies not(matches($s, '^(?:abc*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00013.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00014'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('b,ab,bcccccc,abc,abbbc', ',') satisfies matches($s, '^(?:a?b+c*)$')) and (every $s in tokenize('aabc,a,c,ac,', ',') satisfies not(matches($s, '^(?:a?b+c*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00014.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00015'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('abc?,abbbc??,abca??,abbbbca?', ',') satisfies matches($s, '^(?:(ab+c)a?\\?\\??)$')) and (every $s in tokenize('ac??,bc??,abc,abc???', ',') satisfies not(matches($s, '^(?:(ab+c)a?\\?\\??)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00015.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00016'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','?a')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00016.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00017'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','+a')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00017.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00018'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','*a')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00018.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00019'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','{1}a')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00019.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00020'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize(',', ',') satisfies matches($s, '^(?:a{0})$')) and (every $s in tokenize('a', ',') satisfies not(matches($s, '^(?:a{0})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00020.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00021'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','a{2,1}')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00021.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00022'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','a{1,0}')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00022.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00023'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('abab,', ',') satisfies matches($s, '^(?:((ab){2})?)$')) and (every $s in tokenize('a,ab,ababa,abababab', ',') satisfies not(matches($s, '^(?:((ab){2})?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00023.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00024'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('aa,aaaa,aaaaaaaaaaaaaaaaaaaa', ',') satisfies matches($s, '^(?:(a{2})+)$')) and (every $s in tokenize(',a,a2,aaa', ',') satisfies not(matches($s, '^(?:(a{2})+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00024.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00025'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize(',aa,aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', ',') satisfies matches($s, '^(?:(a{2})*)$')) and (every $s in tokenize('a,aaa,aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', ',') satisfies not(matches($s, '^(?:(a{2})*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00025.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00026'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('abbc', ',') satisfies matches($s, '^(?:ab{2}c)$')) and (every $s in tokenize('ac,abc,abbbc,a,', ',') satisfies not(matches($s, '^(?:ab{2}c)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00026.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00027'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('abcc', ',') satisfies matches($s, '^(?:abc{2})$')) and (every $s in tokenize('abc,abccc,', ',') satisfies not(matches($s, '^(?:abc{2})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00027.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00028'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('aaabbb,bb,bbb,bbbb', ',') satisfies matches($s, '^(?:a*b{2,4}c{0})$')) and (every $s in tokenize('ab,abbc,bbc,abbbbb,', ',') satisfies not(matches($s, '^(?:a*b{2,4}c{0})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00028.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00029'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('ab,abac,abacac', ',') satisfies matches($s, '^(?:((ab)(ac){0,2})?)$')) and (every $s in tokenize('ac,abacacac,abaca,abab,abacabac', ',') satisfies not(matches($s, '^(?:((ab)(ac){0,2})?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00029.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00030'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize(',a b,a ba b', ',') satisfies matches($s, '^(?:(a\\sb){0,2})$')) and (every $s in tokenize('a ba ba b,ab,a b a b,a  b', ',') satisfies not(matches($s, '^(?:(a\\sb){0,2})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00030.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00031'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('abab,ababab,ababababababababababababababababababababababababababababababababab', ',') satisfies matches($s, '^(?:(ab){2,})$')) and (every $s in tokenize('ab,ababa,ababaa,ababababa,abab abab,', ',') satisfies not(matches($s, '^(?:(ab){2,})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00031.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00032'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','a{,2}')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00032.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00033'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(ab){2,0}')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00033.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00034'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:(ab){0,0})$')) and (every $s in tokenize('a,ab', ',') satisfies not(matches($s, '^(?:(ab){0,0})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00034.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00035'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('abcc,abccc,abbcc,abbccc,bbcc,bbccc', ',') satisfies matches($s, '^(?:a{0,1}b{1,2}c{2,3})$')) and (every $s in tokenize('aabcc,bbbcc,acc,aabcc,abbc,abbcccc', ',') satisfies not(matches($s, '^(?:a{0,1}b{1,2}c{2,3})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00035.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00036'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize(',boy0xx,woman1y,girl1xymany,boy0xxwoman1ygirl1xymany,boy0xxwoman1ygirl1xymanyboy0xxwoman1ygirl1xymany', ',') satisfies matches($s, '^(?:(((((boy)|(girl))[0-1][x-z]{2})?)|(man|woman)[0-1]?[y|n])*)$')) and (every $s in tokenize('boy0xxwoman1ygirl1xyman,boyxx', ',') satisfies not(matches($s, '^(?:(((((boy)|(girl))[0-1][x-z]{2})?)|(man|woman)[0-1]?[y|n])*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00036.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00037'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','((a)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00037.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00038'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(a))')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00038.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00039'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','ab|(d))')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00039.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00040'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','((a*(b*)((a))*(a))))')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00040.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00041'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','\\')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00041.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00042'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','?')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00042.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00043'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','*')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00043.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00044'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','+')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00044.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00045'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00045.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00046'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty',')')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00046.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00047'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:|)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:|)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00047.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00048'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','[')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00048.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00049'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('.\\?*+{}[]()|', ',') satisfies matches($s, '^(?:\\.\\\\\\?\\*\\+\\{\\}\\[\\]\\(\\)\\|)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\.\\\\\\?\\*\\+\\{\\}\\[\\]\\(\\)\\|)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00049.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00050'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('.\\?*+{}[]()|.\\?*+{}[]()|.\\?*+{}[]()|', ',') satisfies matches($s, '^(?:(([\\.\\\\\\?\\*\\+\\{\\}\\[\\]\\(\\)\\|]?)*)+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:(([\\.\\\\\\?\\*\\+\\{\\}\\[\\]\\(\\)\\|]?)*)+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00050.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00051'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('1z', ',') satisfies matches($s, '^(?:[^2-9a-x]{2})$')) and (every $s in tokenize('1x', ',') satisfies not(matches($s, '^(?:[^2-9a-x]{2})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00051.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00052'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('abc', ',') satisfies matches($s, '^(?:[^\\s]{3})$')) and (every $s in tokenize('a c', ',') satisfies not(matches($s, '^(?:[^\\s]{3})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00052.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00053'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize(',a,ab, a', ',') satisfies matches($s, '^(?:[^@]{0,2})$')) and (every $s in tokenize('@', ',') satisfies not(matches($s, '^(?:[^@]{0,2})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00053.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00054'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[^-z]+)$')) and (every $s in tokenize('aaz,a-z', ',') satisfies not(matches($s, '^(?:[^-z]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00054.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00055'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[a-d-[b-c]])$')) and (every $s in tokenize('b,c', ',') satisfies not(matches($s, '^(?:[a-d-[b-c]])$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00055.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00056'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"XSD 1.0 regex"}.
're00056a'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[^a-d-b-c])$')) and (every $s in tokenize('a-b,c-c,ab,cc', ',') satisfies not(matches($s, '^(?:[^a-d-b-c])$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00056a.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00057'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('abcxyz}', ',') satisfies matches($s, '^(?:[a-\\}]+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:[a-\\}]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00057.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00058'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[a-b-[0-9]]+)$')) and (every $s in tokenize('a1', ',') satisfies not(matches($s, '^(?:[a-b-[0-9]]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00058.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00059'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[a-c-[^a-c]])$')) and (every $s in tokenize('d', ',') satisfies not(matches($s, '^(?:[a-c-[^a-c]])$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00059.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00060'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[a-z-[^a]])$')) and (every $s in tokenize('b', ',') satisfies not(matches($s, '^(?:[a-z-[^a]])$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00060.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00061'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('Ā', ',') satisfies matches($s, '^(?:[^\\p{IsBasicLatin}]+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:[^\\p{IsBasicLatin}]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00061.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00062'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[^\\p{IsBasicLatin}]*)$')) and (every $s in tokenize('a', ',') satisfies not(matches($s, '^(?:[^\\p{IsBasicLatin}]*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00062.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00063'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('a', ',') satisfies matches($s, '^(?:[^\\P{IsBasicLatin}])$')) and (every $s in tokenize('Ā', ',') satisfies not(matches($s, '^(?:[^\\P{IsBasicLatin}])$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00063.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00064'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[^\\?])$')) and (every $s in tokenize('?', ',') satisfies not(matches($s, '^(?:[^\\?])$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00064.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00065'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('a+*abc', ',') satisfies matches($s, '^(?:([^\\?])*)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:([^\\?])*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00065.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00066'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('a*a', ',') satisfies matches($s, '^(?:\\c[^\\d]\\c)$')) and (every $s in tokenize('aa', ',') satisfies not(matches($s, '^(?:\\c[^\\d]\\c)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00066.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00067'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\c[^\\s]\\c)$')) and (every $s in tokenize('a c,az,a
c,a	r', ',') satisfies not(matches($s, '^(?:\\c[^\\s]\\c)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00067.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00068'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[^\\^a])$')) and (every $s in tokenize('^,a', ',') satisfies not(matches($s, '^(?:[^\\^a])$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00068.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00069'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('abc', ',') satisfies matches($s, '^(?:[a-abc]{3})$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:[a-abc]{3})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00069.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00070'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('}-', ',') satisfies matches($s, '^(?:[a-\\}-]+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:[a-\\}-]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00070.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00071'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','[a--b]')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00071.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00072'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','[^[a-b]]')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00072.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00073'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[a])$')) and (every $s in tokenize('b,', ',') satisfies not(matches($s, '^(?:[a])$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00073.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00074'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('123', ',') satisfies matches($s, '^(?:[1-3]{1,4})$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:[1-3]{1,4})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00074.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00075'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('a', ',') satisfies matches($s, '^(?:[a-a])$')) and (every $s in tokenize('b', ',') satisfies not(matches($s, '^(?:[a-a])$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00075.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00076'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('1234567890:;<=>?@Azaz', ',') satisfies matches($s, '^(?:[0-z]*)$')) and (every $s in tokenize('{,/', ',') satisfies not(matches($s, '^(?:[0-z]*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00076.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00077'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('
', ',') satisfies matches($s, '^(?:[\\n])$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:[\\n])$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00077.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00078'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('	', ',') satisfies matches($s, '^(?:[\\t])$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:[\\t])$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00078.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00079'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('\\|.?*+(){}-[]^', ',') satisfies matches($s, '^(?:[\\\\\\|\\.\\?\\*\\+\\(\\)\\{\\}\\-\\[\\]\\^]*)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:[\\\\\\|\\.\\?\\*\\+\\(\\)\\{\\}\\-\\[\\]\\^]*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00079.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00080'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[^a-z^])$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:[^a-z^])$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00080.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00081'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\\\-\\{^])$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:[\\\\-\\{^])$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00081.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00082'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('?a?,?b?,?c?', ',') satisfies matches($s, '^(?:[\\C\\?a-c\\?]+)$')) and (every $s in tokenize('?d?', ',') satisfies not(matches($s, '^(?:[\\C\\?a-c\\?]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00082.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00083'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('?', ',') satisfies matches($s, '^(?:[\\c\\?a-c\\?]+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:[\\c\\?a-c\\?]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00083.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00084'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\D\\?a-c\\?]+)$')) and (every $s in tokenize('?1?', ',') satisfies not(matches($s, '^(?:[\\D\\?a-c\\?]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00084.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00085'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\S\\?a-c\\?]+)$')) and (every $s in tokenize('? ?,?	?', ',') satisfies not(matches($s, '^(?:[\\S\\?a-c\\?]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00085.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00086'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"XSD 1.0 regex"}.
're00086a'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize(',a-1x-7,c-4z-9,a-1z-8a-1z-9,a1z-9,a-1z8,a-1,z-9', ',') satisfies matches($s, '^(?:[a-c-1-4x-z-7-9]*)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:[a-c-1-4x-z-7-9]*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00086a.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00087'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','[a-\\\\]')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00087.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00088'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','[a-\\[]')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00088.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00089'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('a*a****aaaaa*', ',') satisfies matches($s, '^(?:[\\*a]*)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:[\\*a]*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00089.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00090'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','[a-;]')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00090.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00091'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('1]', ',') satisfies matches($s, '^(?:[1-\\]]+)$')) and (every $s in tokenize('0,^', ',') satisfies not(matches($s, '^(?:[1-\\]]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00091.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00092'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('=,>', ',') satisfies matches($s, '^(?:[=->])$')) and (every $s in tokenize('\\?', ',') satisfies not(matches($s, '^(?:[=->])$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00092.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00093'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','[>-=]')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00093.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00094'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('@', ',') satisfies matches($s, '^(?:[@])$')) and (every $s in tokenize('a', ',') satisfies not(matches($s, '^(?:[@])$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00094.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00095'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('࿿', ',') satisfies matches($s, '^(?:[࿿])$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:[࿿])$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00095.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00096'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('𐀀', ',') satisfies matches($s, '^(?:[𐀀])$')) and (every $s in tokenize('𐀁', ',') satisfies not(matches($s, '^(?:[𐀀])$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00096.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00097'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','[\\]')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00097.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00098'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('\\,[,],\\[,\\[],[],[\\\\,\\]\\,[][', ',') satisfies matches($s, '^(?:[\\\\\\[\\]]{0,3})$')) and (every $s in tokenize('\\[][,\\]\\],[][]', ',') satisfies not(matches($s, '^(?:[\\\\\\[\\]]{0,3})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00098.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00099'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('-', ',') satisfies matches($s, '^(?:[-])$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:[-])$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00099.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00100'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('a--aa---', ',') satisfies matches($s, '^(?:[-a]+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:[-a]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00100.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00101'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('a--aa---', ',') satisfies matches($s, '^(?:[a-]*)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:[a-]*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00101.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00102'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('a-x', ',') satisfies matches($s, '^(?:[a-a-x-x]+)$')) and (every $s in tokenize('j,a-b', ',') satisfies not(matches($s, '^(?:[a-a-x-x]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00102.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00102a'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"XSD 1.0 regex"}.
're00103'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('\\|.-^?*+[]{}()*[[]{}}))
		

*()', ',') satisfies matches($s, '^(?:[\\n\\r\\t\\\\\\|\\.\\-\\^\\?\\*\\+\\{\\}\\[\\]\\(\\)]*)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:[\\n\\r\\t\\\\\\|\\.\\-\\^\\?\\*\\+\\{\\}\\[\\]\\(\\)]*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00103.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00104'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('a**,aa*,a', ',') satisfies matches($s, '^(?:[a\\*]*)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:[a\\*]*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00104.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00105'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('a?,a?a?a?,a,a??,aa?', ',') satisfies matches($s, '^(?:[(a\\?)?]+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:[(a\\?)?]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00105.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00106'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('\\t', ',') satisfies matches($s, '^(?:\\\\t)$')) and (every $s in tokenize('t,\\\\t,	', ',') satisfies not(matches($s, '^(?:\\\\t)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00106.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00107'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('\\n', ',') satisfies matches($s, '^(?:\\\\n)$')) and (every $s in tokenize('n,\\\\n,
', ',') satisfies not(matches($s, '^(?:\\\\n)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00107.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00108'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('\\r', ',') satisfies matches($s, '^(?:\\\\r)$')) and (every $s in tokenize('r,\\\\r,', ',') satisfies not(matches($s, '^(?:\\\\r)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00108.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00109'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('
', ',') satisfies matches($s, '^(?:\\n)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\n)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00109.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00110'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('	', ',') satisfies matches($s, '^(?:\\t)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\t)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00110.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00111'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('\\', ',') satisfies matches($s, '^(?:\\\\)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\\\)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00111.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00112'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('|', ',') satisfies matches($s, '^(?:\\|)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\|)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00112.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00113'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('.', ',') satisfies matches($s, '^(?:\\.)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\.)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00113.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00114'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('-', ',') satisfies matches($s, '^(?:\\-)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\-)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00114.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00115'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('^', ',') satisfies matches($s, '^(?:\\^)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\^)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00115.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00116'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('?', ',') satisfies matches($s, '^(?:\\?)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00116.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00117'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('*', ',') satisfies matches($s, '^(?:\\*)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00117.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00118'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('+', ',') satisfies matches($s, '^(?:\\+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00118.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00119'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('{', ',') satisfies matches($s, '^(?:\\{)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\{)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00119.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00120'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('}', ',') satisfies matches($s, '^(?:\\})$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00120.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00121'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('(', ',') satisfies matches($s, '^(?:\\()$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\()$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00121.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00122'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize(')', ',') satisfies matches($s, '^(?:\\))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\))$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00122.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00123'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('[', ',') satisfies matches($s, '^(?:\\[)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\[)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00123.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00124'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize(']', ',') satisfies matches($s, '^(?:\\])$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\])$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00124.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00125'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\n\\\\\\r\\|\\t\\.\\-\\^\\?\\*\\+\\{\\}\\(\\)\\[\\])$')) and (every $s in tokenize('
\\|	.-^?*+{}()[,\\|	.-^?*+{}()[],
\\|	-^?*+{}()[]', ',') satisfies not(matches($s, '^(?:\\n\\\\\\r\\|\\t\\.\\-\\^\\?\\*\\+\\{\\}\\(\\)\\[\\])$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00125.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00126'(Config) ->
   BaseDir = ?config(base_dir, Config),
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
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00126.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00127'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"XP30+"}.
're00127a'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
        matches('&#xD;&#xD;a&#xD;&#xD;b&#xD;&#xD;',         '^\\r\\ra\\r\\rb\\r\\r$'),
        matches('&#xD;&#xD;a&#xD;&#xD;b&#xD;&#xD;',         '^\\r\\ra\\r\\rb\\r\\r$'),
        matches('&#xD;&#xD;a&#xD;&#xD;b&#xD;',              '^(?:\\r\\ra\\r\\rb\\r\\r)$'),
        matches('&#xD;a&#xD;&#xD;b&#xD;&#xD;',              '^(?:\\r\\ra\\r\\rb\\r\\r)$'),
        matches('&#xD;&#xD;a&#xD;&#xD;&#xD;&#xD;',          '^(?:\\r\\ra\\r\\rb\\r\\r)$'),
        matches('&#xD;&#xD;a&#xD;&#xA;&#xD;b&#xD;&#xD;',    '^(?:\\r\\ra\\r\\rb\\r\\r)$')
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00127a.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"true(), true(), false(), false(), false(), false()") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00128'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\t\\ta\\t\\tb\\t\\t)$')) and (every $s in tokenize('		a		b	,	a		b		,		a				,		a			b		', ',') satisfies not(matches($s, '^(?:\\t\\ta\\t\\tb\\t\\t)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00128.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00129'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"XP30+"}.
're00129a'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('a&#xD;&#xA;b', '^(?:a\\r\\nb)$'), matches('ab', '^(?:a\\r\\nb)$')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00129a.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"true(), false()") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00130'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"XP30+"}.
're00130a'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('&#xA;&#xD;a&#xA;&#xD;b', ',') satisfies (matches($s, '^(?:\\n\\ra\\n\\rb)$'))) and
         (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\n\\ra\\n\\rb)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00130a.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00131'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('	a	b	c	', ',') satisfies matches($s, '^(?:\\ta\\tb\\tc\\t)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\ta\\tb\\tc\\t)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00131.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00132'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('
a
b
c
', ',') satisfies matches($s, '^(?:\\na\\nb\\nc\\n)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\na\\nb\\nc\\n)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00132.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00133'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('	a 

 	b, a  b, a  b ,	a 

 b', ',') satisfies matches($s, '^(?:(\\t|\\s)a(\\r\\n|\\r|\\n|\\s)+(\\s|\\t)b(\\s|\\r\\n|\\r|\\n)*)$')) and (every $s in tokenize(' a b, a b ', ',') satisfies not(matches($s, '^(?:(\\t|\\s)a(\\r\\n|\\r|\\n|\\s)+(\\s|\\t)b(\\s|\\r\\n|\\r|\\n)*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00133.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00134'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('\\c', ',') satisfies matches($s, '^(?:\\\\c)$')) and (every $s in tokenize('\\p{_xmlC},\\\\c,\\\\', ',') satisfies not(matches($s, '^(?:\\\\c)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00134.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00135'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('\\.,\\s,\\S,\\i,\\I,\\c,\\C,\\d,\\D,\\w,\\W', ';') satisfies matches($s, '^(?:\\\\.,\\\\s,\\\\S,\\\\i,\\\\I,\\\\c,\\\\C,\\\\d,\\\\D,\\\\w,\\\\W)$')) and (every $s in tokenize('', ';') satisfies not(matches($s, '^(?:\\\\.,\\\\s,\\\\S,\\\\i,\\\\I,\\\\c,\\\\C,\\\\d,\\\\D,\\\\w,\\\\W)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00135.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00136'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('\\.abcd,\\sssss,\\SSSSSS,\\iiiiiii,\\,\\c,\\CCCCCC,\\ddd,\\D,\\wwwwwww,\\WWW', ';') satisfies matches($s, '^(?:\\\\.*,\\\\s*,\\\\S*,\\\\i*,\\\\I?,\\\\c+,\\\\C+,\\\\d{0,3},\\\\D{1,1000},\\\\w*,\\\\W+)$')) and (every $s in tokenize('', ';') satisfies not(matches($s, '^(?:\\\\.*,\\\\s*,\\\\S*,\\\\i*,\\\\I?,\\\\c+,\\\\C+,\\\\d{0,3},\\\\D{1,1000},\\\\w*,\\\\W+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00136.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00137'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('aX', ',') satisfies matches($s, '^(?:[\\p{L}*]{0,2})$')) and (every $s in tokenize('aBC', ',') satisfies not(matches($s, '^(?:[\\p{L}*]{0,2})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00137.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00138'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:(\\p{Ll}\\p{Cc}\\p{Nd})*)$')) and (every $s in tokenize(' ', ',') satisfies not(matches($s, '^(?:(\\p{Ll}\\p{Cc}\\p{Nd})*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00138.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00139'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{L}*)$')) and (every $s in tokenize('⃝', ',') satisfies not(matches($s, '^(?:\\p{L}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00139.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00140'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('A𝞨', ',') satisfies matches($s, '^(?:\\p{Lu}*)$')) and (every $s in tokenize('a', ',') satisfies not(matches($s, '^(?:\\p{Lu}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00140.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00141'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('a𝟉', ',') satisfies matches($s, '^(?:\\p{Ll}*)$')) and (every $s in tokenize('ǅ', ',') satisfies not(matches($s, '^(?:\\p{Ll}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00141.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00142'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('ǅῼ', ',') satisfies matches($s, '^(?:\\p{Lt}*)$')) and (every $s in tokenize('ʰ', ',') satisfies not(matches($s, '^(?:\\p{Lt}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00142.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00143'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('ʰﾟ', ',') satisfies matches($s, '^(?:\\p{Lm}*)$')) and (every $s in tokenize('א', ',') satisfies not(matches($s, '^(?:\\p{Lm}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00143.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00144'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('א𪘀', ',') satisfies matches($s, '^(?:\\p{Lo}*)$')) and (every $s in tokenize('ً', ',') satisfies not(matches($s, '^(?:\\p{Lo}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00144.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00145'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('ً𝆭ः𝅲ः𝅲⃝⃝⃠', ',') satisfies matches($s, '^(?:\\p{M}*)$')) and (every $s in tokenize('ǅ', ',') satisfies not(matches($s, '^(?:\\p{M}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00145.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00146'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('ً𝆭', ',') satisfies matches($s, '^(?:\\p{Mn}*)$')) and (every $s in tokenize('ः', ',') satisfies not(matches($s, '^(?:\\p{Mn}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00146.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00147'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('ः𝅲', ',') satisfies matches($s, '^(?:\\p{Mc}*)$')) and (every $s in tokenize('⃝', ',') satisfies not(matches($s, '^(?:\\p{Mc}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00147.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00148'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('⃝⃠', ',') satisfies matches($s, '^(?:\\p{Me}*)$')) and (every $s in tokenize('０', ',') satisfies not(matches($s, '^(?:\\p{Me}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00148.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00149'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('０𝟿𐍊𐍊〥²²𐌣', ',') satisfies matches($s, '^(?:\\p{N}*)$')) and (every $s in tokenize('ः', ',') satisfies not(matches($s, '^(?:\\p{N}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00149.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00150'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('０𝟿', ',') satisfies matches($s, '^(?:\\p{Nd}*)$')) and (every $s in tokenize('𐍊', ',') satisfies not(matches($s, '^(?:\\p{Nd}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00150.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00151'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('𐍊〥', ',') satisfies matches($s, '^(?:\\p{Nl}*)$')) and (every $s in tokenize('²', ',') satisfies not(matches($s, '^(?:\\p{Nl}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00151.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00152'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('²𐌣', ',') satisfies matches($s, '^(?:\\p{No}*)$')) and (every $s in tokenize('‿', ',') satisfies not(matches($s, '^(?:\\p{No}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00152.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00153'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('‿･〜〜－〝〝｢〞〞｣««‹»»›¿¿､', ',') satisfies matches($s, '^(?:\\p{P}*)$')) and (every $s in tokenize('²', ',') satisfies not(matches($s, '^(?:\\p{P}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00153.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00154'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{Pc}*)$')) and (every $s in tokenize('〜', ',') satisfies not(matches($s, '^(?:\\p{Pc}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00154.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00155'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('〜－', ',') satisfies matches($s, '^(?:\\p{Pd}*)$')) and (every $s in tokenize('〝', ',') satisfies not(matches($s, '^(?:\\p{Pd}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00155.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00156'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('〝｢', ',') satisfies matches($s, '^(?:\\p{Ps}*)$')) and (every $s in tokenize('〞', ',') satisfies not(matches($s, '^(?:\\p{Ps}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00156.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00157'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('〞｣', ',') satisfies matches($s, '^(?:\\p{Pe}*)$')) and (every $s in tokenize('«', ',') satisfies not(matches($s, '^(?:\\p{Pe}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00157.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00158'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('«‹', ',') satisfies matches($s, '^(?:\\p{Pi}*)$')) and (every $s in tokenize('»', ',') satisfies not(matches($s, '^(?:\\p{Pi}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00158.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00159'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('»›', ',') satisfies matches($s, '^(?:\\p{Pf}*)$')) and (every $s in tokenize('¿', ',') satisfies not(matches($s, '^(?:\\p{Pf}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00159.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00160'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('¿､', ',') satisfies matches($s, '^(?:\\p{Po}*)$')) and (every $s in tokenize(' ', ',') satisfies not(matches($s, '^(?:\\p{Po}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00160.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00161'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize(' 　    ', ',') satisfies matches($s, '^(?:\\p{Z}*)$')) and (every $s in tokenize('¿', ',') satisfies not(matches($s, '^(?:\\p{Z}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00161.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00162'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize(' 　', ',') satisfies matches($s, '^(?:\\p{Zs}*)$')) and (every $s in tokenize(' ', ',') satisfies not(matches($s, '^(?:\\p{Zs}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00162.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00163'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize(' ', ',') satisfies matches($s, '^(?:\\p{Zl}*)$')) and (every $s in tokenize(' ', ',') satisfies not(matches($s, '^(?:\\p{Zl}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00163.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00164'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize(' ', ',') satisfies matches($s, '^(?:\\p{Zp}*)$')) and (every $s in tokenize('⁄', ',') satisfies not(matches($s, '^(?:\\p{Zp}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00164.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00165'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('⁄￢₠₠￦゛゛￣㆐㆐𝇝', ',') satisfies matches($s, '^(?:\\p{S}*)$')) and (every $s in tokenize(' ', ',') satisfies not(matches($s, '^(?:\\p{S}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00165.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00166'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('⁄￢', ',') satisfies matches($s, '^(?:\\p{Sm}*)$')) and (every $s in tokenize('₠', ',') satisfies not(matches($s, '^(?:\\p{Sm}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00166.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00167'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('₠￦', ',') satisfies matches($s, '^(?:\\p{Sc}*)$')) and (every $s in tokenize('゛', ',') satisfies not(matches($s, '^(?:\\p{Sc}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00167.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00168'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('゛￣', ',') satisfies matches($s, '^(?:\\p{Sk}*)$')) and (every $s in tokenize('㆐', ',') satisfies not(matches($s, '^(?:\\p{Sk}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00168.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00169'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('㆐𝇝', ',') satisfies matches($s, '^(?:\\p{So}*)$')) and (every $s in tokenize('	', ',') satisfies not(matches($s, '^(?:\\p{So}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00169.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00170'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{C}*)$')) and (every $s in tokenize('₠', ',') satisfies not(matches($s, '^(?:\\p{C}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00170.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00171'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('	', ',') satisfies matches($s, '^(?:\\p{Cc}*)$')) and (every $s in tokenize('܏', ',') satisfies not(matches($s, '^(?:\\p{Cc}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00171.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00172'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('܏󠁸', ',') satisfies matches($s, '^(?:\\p{Cf}*)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{Cf}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00172.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00173'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('􀀀󰀀󿿽􏿽', ',') satisfies matches($s, '^(?:(\\p{Co})*)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:(\\p{Co})*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00173.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00174'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{Co}*)$')) and (every $s in tokenize('⁄', ',') satisfies not(matches($s, '^(?:\\p{Co}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00174.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00175'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{Cn}*)$')) and (every $s in tokenize('	', ',') satisfies not(matches($s, '^(?:\\p{Cn}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00175.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00176'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('_,⃝', ',') satisfies matches($s, '^(?:\\P{L}*)$')) and (every $s in tokenize('aAbB,A𝞨aa𝟉ǅǅῼʰʰﾟאא𪘀', ',') satisfies not(matches($s, '^(?:\\P{L}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00176.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00177'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize(',#$', ',') satisfies matches($s, '^(?:[\\P{L}*]{0,2})$')) and (every $s in tokenize('!$#,A', ',') satisfies not(matches($s, '^(?:[\\P{L}*]{0,2})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00177.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00178'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('a', ',') satisfies matches($s, '^(?:\\P{Lu}*)$')) and (every $s in tokenize('A𝞨', ',') satisfies not(matches($s, '^(?:\\P{Lu}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00178.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00179'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('ǅ', ',') satisfies matches($s, '^(?:\\P{Ll}*)$')) and (every $s in tokenize('a𝟉', ',') satisfies not(matches($s, '^(?:\\P{Ll}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00179.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00180'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('ʰ', ',') satisfies matches($s, '^(?:\\P{Lt}*)$')) and (every $s in tokenize('ǅῼ', ',') satisfies not(matches($s, '^(?:\\P{Lt}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00180.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00181'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('א', ',') satisfies matches($s, '^(?:\\P{Lm}*)$')) and (every $s in tokenize('ʰﾟ', ',') satisfies not(matches($s, '^(?:\\P{Lm}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00181.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00182'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('ً', ',') satisfies matches($s, '^(?:\\P{Lo}*)$')) and (every $s in tokenize('א𪘀', ',') satisfies not(matches($s, '^(?:\\P{Lo}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00182.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00183'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('ǅ', ',') satisfies matches($s, '^(?:\\P{M}*)$')) and (every $s in tokenize('ً𝆭ः𝅲ः𝅲⃝⃝⃠', ',') satisfies not(matches($s, '^(?:\\P{M}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00183.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00184'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('ः𝅲', ',') satisfies matches($s, '^(?:\\P{Mn}*)$')) and (every $s in tokenize('ً𝆭', ',') satisfies not(matches($s, '^(?:\\P{Mn}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00184.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00185'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('⃝', ',') satisfies matches($s, '^(?:\\P{Mc}*)$')) and (every $s in tokenize('ः𝅲', ',') satisfies not(matches($s, '^(?:\\P{Mc}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00185.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00186'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('０', ',') satisfies matches($s, '^(?:\\P{Me}*)$')) and (every $s in tokenize('⃝⃠', ',') satisfies not(matches($s, '^(?:\\P{Me}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00186.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00187'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('ः', ',') satisfies matches($s, '^(?:\\P{N}*)$')) and (every $s in tokenize('０𝟿𐍊𐍊〥²²𐌣', ',') satisfies not(matches($s, '^(?:\\P{N}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00187.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00188'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('𐍊', ',') satisfies matches($s, '^(?:\\P{Nd}*)$')) and (every $s in tokenize('０𝟿', ',') satisfies not(matches($s, '^(?:\\P{Nd}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00188.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00189'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('²', ',') satisfies matches($s, '^(?:\\P{Nl}*)$')) and (every $s in tokenize('𐍊〥', ',') satisfies not(matches($s, '^(?:\\P{Nl}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00189.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00190'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('‿', ',') satisfies matches($s, '^(?:\\P{No}*)$')) and (every $s in tokenize('²𐌣', ',') satisfies not(matches($s, '^(?:\\P{No}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00190.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00191'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('²', ',') satisfies matches($s, '^(?:\\P{P}*)$')) and (every $s in tokenize('‿･〜〜－〝〝｢〞〞｣««‹»»›¿¿､', ',') satisfies not(matches($s, '^(?:\\P{P}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00191.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00192'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('〜', ',') satisfies matches($s, '^(?:\\P{Pc}*)$')) and (every $s in tokenize('‿･', ',') satisfies not(matches($s, '^(?:\\P{Pc}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00192.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00193'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('〝', ',') satisfies matches($s, '^(?:\\P{Pd}*)$')) and (every $s in tokenize('〜－', ',') satisfies not(matches($s, '^(?:\\P{Pd}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00193.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00194'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('〞', ',') satisfies matches($s, '^(?:\\P{Ps}*)$')) and (every $s in tokenize('〝｢', ',') satisfies not(matches($s, '^(?:\\P{Ps}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00194.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00195'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('«', ',') satisfies matches($s, '^(?:\\P{Pe}*)$')) and (every $s in tokenize('〞｣', ',') satisfies not(matches($s, '^(?:\\P{Pe}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00195.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00196'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('»', ',') satisfies matches($s, '^(?:\\P{Pi}*)$')) and (every $s in tokenize('«‹', ',') satisfies not(matches($s, '^(?:\\P{Pi}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00196.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00197'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('¿', ',') satisfies matches($s, '^(?:\\P{Pf}*)$')) and (every $s in tokenize('»›', ',') satisfies not(matches($s, '^(?:\\P{Pf}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00197.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00198'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize(' ', ',') satisfies matches($s, '^(?:\\P{Po}*)$')) and (every $s in tokenize('¿､', ',') satisfies not(matches($s, '^(?:\\P{Po}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00198.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00199'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('¿', ',') satisfies matches($s, '^(?:\\P{Z}*)$')) and (every $s in tokenize(' 　    ', ',') satisfies not(matches($s, '^(?:\\P{Z}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00199.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00200'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize(' ', ',') satisfies matches($s, '^(?:\\P{Zs}*)$')) and (every $s in tokenize(' 　', ',') satisfies not(matches($s, '^(?:\\P{Zs}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00200.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00201'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize(' ', ',') satisfies matches($s, '^(?:\\P{Zl}*)$')) and (every $s in tokenize(' ', ',') satisfies not(matches($s, '^(?:\\P{Zl}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00201.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00202'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('⁄', ',') satisfies matches($s, '^(?:\\P{Zp}*)$')) and (every $s in tokenize(' ', ',') satisfies not(matches($s, '^(?:\\P{Zp}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00202.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00203'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize(' ', ',') satisfies matches($s, '^(?:\\P{S}*)$')) and (every $s in tokenize('⁄￢₠₠￦゛゛￣㆐㆐𝇝', ',') satisfies not(matches($s, '^(?:\\P{S}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00203.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00204'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('₠', ',') satisfies matches($s, '^(?:\\P{Sm}*)$')) and (every $s in tokenize('⁄￢', ',') satisfies not(matches($s, '^(?:\\P{Sm}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00204.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00205'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('゛', ',') satisfies matches($s, '^(?:\\P{Sc}*)$')) and (every $s in tokenize('₠￦', ',') satisfies not(matches($s, '^(?:\\P{Sc}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00205.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00206'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('㆐', ',') satisfies matches($s, '^(?:\\P{Sk}*)$')) and (every $s in tokenize('゛￣', ',') satisfies not(matches($s, '^(?:\\P{Sk}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00206.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00207'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('	', ',') satisfies matches($s, '^(?:\\P{So}*)$')) and (every $s in tokenize('㆐𝇝', ',') satisfies not(matches($s, '^(?:\\P{So}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00207.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00208'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('₠', ',') satisfies matches($s, '^(?:\\P{C}*)$')) and (every $s in tokenize('	܏܏󠁸􀀀󰀀󿿽􏿽', ',') satisfies not(matches($s, '^(?:\\P{C}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00208.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00209'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('܏', ',') satisfies matches($s, '^(?:\\P{Cc}*)$')) and (every $s in tokenize('	', ',') satisfies not(matches($s, '^(?:\\P{Cc}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00209.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00210'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\P{Cf}*)$')) and (every $s in tokenize('܏󠁸', ',') satisfies not(matches($s, '^(?:\\P{Cf}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00210.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00211'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('⁄', ',') satisfies matches($s, '^(?:\\P{Co}*)$')) and (every $s in tokenize('􀀀󰀀󿿽􏿽', ',') satisfies not(matches($s, '^(?:\\P{Co}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00211.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00212'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','\\p{\\\\L}')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00212.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00213'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('\\a', ',') satisfies matches($s, '^(?:\\\\\\p{L}*)$')) and (every $s in tokenize('a', ',') satisfies not(matches($s, '^(?:\\\\\\p{L}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00213.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00214'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','\\p{Is}')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00214.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00215'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','\\P{Is}')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00215.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00216'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','\\p{IsaA0-a9}')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00216.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00217'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('	
 	
 !\"#$%''''()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~', '') satisfies matches($s, '^(?:\\p{IsBasicLatin}+)$')) and (every $s in tokenize('', '') satisfies not(matches($s, '^(?:\\p{IsBasicLatin}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00217.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00218'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('ÿ, ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿ', ',') satisfies matches($s, '^(?:\\p{IsLatin-1Supplement}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsLatin-1Supplement}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00218.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00219'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('Āſ,ĀāĂăĄąĆćĈĉĊċČčĎďĐđĒēĔĕĖėĘęĚěĜĝĞğĠġĢģĤĥĦħĨĩĪīĬĭĮįİıĲĳĴĵĶķĸĹĺĻļĽľĿŀŁłŃńŅņŇňŉŊŋŌōŎŏŐőŒœŔŕŖŗŘřŚśŜŝŞşŠšŢţŤťŦŧŨũŪūŬŭŮůŰűŲųŴŵŶŷŸŹźŻżŽžſ', ',') satisfies matches($s, '^(?:\\p{IsLatinExtended-A}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsLatinExtended-A}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00219.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00220'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('ƀɏ,ƀƁƂƃƄƅƆƇƈƉƊƋƌƍƎƏƐƑƒƓƔƕƖƗƘƙƚƛƜƝƞƟƠơƢƣƤƥƦƧƨƩƪƫƬƭƮƯưƱƲƳƴƵƶƷƸƹƺƻƼƽƾƿǀǁǂǃǄǅǆǇǈǉǊǋǌǍǎǏǐǑǒǓǔǕǖǗǘǙǚǛǜǝǞǟǠǡǢǣǤǥǦǧǨǩǪǫǬǭǮǯǰǱǲǳǴǵǶǷǸǹǺǻǼǽǾǿȀȁȂȃȄȅȆȇȈȉȊȋȌȍȎȏȐȑȒȓȔȕȖȗȘșȚțȜȝȞȟȠȡȢȣȤȥȦȧȨȩȪȫȬȭȮȯȰȱȲȳȴȵȶȷȸȹȺȻȼȽȾȿɀɁɂɃɄɅɆɇɈɉɊɋɌɍɎɏ', ',') satisfies matches($s, '^(?:\\p{IsLatinExtended-B}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsLatinExtended-B}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00220.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00221'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('ɐʯ,ɐɑɒɓɔɕɖɗɘəɚɛɜɝɞɟɠɡɢɣɤɥɦɧɨɩɪɫɬɭɮɯɰɱɲɳɴɵɶɷɸɹɺɻɼɽɾɿʀʁʂʃʄʅʆʇʈʉʊʋʌʍʎʏʐʑʒʓʔʕʖʗʘʙʚʛʜʝʞʟʠʡʢʣʤʥʦʧʨʩʪʫʬʭʮʯ', ',') satisfies matches($s, '^(?:\\p{IsIPAExtensions}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsIPAExtensions}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00221.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00222'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('ʰ˿,ʰʱʲʳʴʵʶʷʸʹʺʻʼʽʾʿˀˁ˂˃˄˅ˆˇˈˉˊˋˌˍˎˏːˑ˒˓˔˕˖˗˘˙˚˛˜˝˞˟ˠˡˢˣˤ˥˦˧˨˩˪˫ˬ˭ˮ˯˰˱˲˳˴˵˶˷˸˹˺˻˼˽˾˿', ',') satisfies matches($s, '^(?:\\p{IsSpacingModifierLetters}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsSpacingModifierLetters}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00222.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00223'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('԰֏,԰ԱԲԳԴԵԶԷԸԹԺԻԼԽԾԿՀՁՂՃՄՅՆՇՈՉՊՋՌՍՎՏՐՑՒՓՔՕՖ՗՘ՙ՚՛՜՝՞՟ՠաբգդեզէըթժիլխծկհձղճմյնշոչպջռսվտրցւփքօֆևֈ։֊֋֌֍֎֏', ',') satisfies matches($s, '^(?:\\p{IsArmenian}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsArmenian}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00223.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00224'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('֐׿,֐ְֱֲֳִֵֶַָֹֺֻּֽ֑֖֛֢֣֤֥֦֧֪֚֭֮֒֓֔֕֗֘֙֜֝֞֟֠֡֨֩֫֬֯־ֿ׀ׁׂ׃ׅׄ׆ׇ׈׉׊׋׌׍׎׏אבגדהוזחטיךכלםמןנסעףפץצקרשת׫׬׭׮ׯװױײ׳״׵׶׷׸׹׺׻׼׽׾׿', ',') satisfies matches($s, '^(?:\\p{IsHebrew}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsHebrew}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00224.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00225'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('؀ۿ,؀؁؂؃؄؅؆؇؈؉؊؋،؍؎؏ؘؙؚؐؑؒؓؔؕؖؗ؛؜؝؞؟ؠءآأؤإئابةتثجحخدذرزسشصضطظعغػؼؽؾؿـفقكلمنهوىيًٌٍَُِّْٕٖٜٟٓٔٗ٘ٙٚٛٝٞ٠١٢٣٤٥٦٧٨٩٪٫٬٭ٮٯٰٱٲٳٴٵٶٷٸٹٺٻټٽپٿڀځڂڃڄڅچڇڈډڊڋڌڍڎڏڐڑڒړڔڕږڗژڙښڛڜڝڞڟڠڡڢڣڤڥڦڧڨکڪګڬڭڮگڰڱڲڳڴڵڶڷڸڹںڻڼڽھڿۀہۂۃۄۅۆۇۈۉۊۋیۍێۏېۑےۓ۔ەۖۗۘۙۚۛۜ۝۞ۣ۟۠ۡۢۤۥۦۧۨ۩۪ۭ۫۬ۮۯ۰۱۲۳۴۵۶۷۸۹ۺۻۼ۽۾ۿ', ',') satisfies matches($s, '^(?:\\p{IsArabic}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsArabic}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00225.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00226'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('܀ݏ,܀܁܂܃܄܅܆܇܈܉܊܋܌܍܎܏ܐܑܒܓܔܕܖܗܘܙܚܛܜܝܞܟܠܡܢܣܤܥܦܧܨܩܪܫܬܭܮܯܱܴܷܸܹܻܼܾ݂݄݆݈ܰܲܳܵܶܺܽܿ݀݁݃݅݇݉݊݋݌ݍݎݏ', ',') satisfies matches($s, '^(?:\\p{IsSyriac}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsSyriac}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00226.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00227'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('ހ޿,ހށނރބޅކއވމފދތލގޏސޑޒޓޔޕޖޗޘޙޚޛޜޝޞޟޠޡޢޣޤޥަާިީުޫެޭޮޯްޱ޲޳޴޵޶޷޸޹޺޻޼޽޾޿', ',') satisfies matches($s, '^(?:\\p{IsThaana}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsThaana}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00227.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00228'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('ऀॿ,ऀँंःऄअआइईउऊऋऌऍऎएऐऑऒओऔकखगघङचछजझञटठडढणतथदधनऩपफबभमयरऱलळऴवशषसहऺऻ़ऽािीुूृॄॅॆेैॉॊोौ्ॎॏॐ॒॑॓॔ॕॖॗक़ख़ग़ज़ड़ढ़फ़य़ॠॡॢॣ।॥०१२३४५६७८९॰ॱॲॳॴॵॶॷॸॹॺॻॼॽॾॿ', ',') satisfies matches($s, '^(?:\\p{IsDevanagari}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsDevanagari}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00228.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00229'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('ঀ৿,ঀঁংঃ঄অআইঈউঊঋঌ঍঎এঐ঑঒ওঔকখগঘঙচছজঝঞটঠডঢণতথদধন঩পফবভমযর঱ল঳঴঵শষসহ঺঻়ঽািীুূৃৄ৅৆েৈ৉৊োৌ্ৎ৏৐৑৒৓৔৕৖ৗ৘৙৚৛ড়ঢ়৞য়ৠৡৢৣ৤৥০১২৩৪৫৬৭৮৯ৰৱ৲৳৴৵৶৷৸৹৺৻ৼ৽৾৿', ',') satisfies matches($s, '^(?:\\p{IsBengali}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsBengali}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00229.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00230'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('਀੿,਀ਁਂਃ਄ਅਆਇਈਉਊ਋਌਍਎ਏਐ਑਒ਓਔਕਖਗਘਙਚਛਜਝਞਟਠਡਢਣਤਥਦਧਨ਩ਪਫਬਭਮਯਰ਱ਲਲ਼਴ਵਸ਼਷ਸਹ਺਻਼਽ਾਿੀੁੂ੃੄੅੆ੇੈ੉੊ੋੌ੍੎੏੐ੑ੒੓੔੕੖੗੘ਖ਼ਗ਼ਜ਼ੜ੝ਫ਼੟੠੡੢੣੤੥੦੧੨੩੪੫੬੭੮੯ੰੱੲੳੴੵ੶੷੸੹੺੻੼੽੾੿', ',') satisfies matches($s, '^(?:\\p{IsGurmukhi}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsGurmukhi}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00230.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00231'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('઀૿,઀ઁંઃ઄અઆઇઈઉઊઋઌઍ઎એઐઑ઒ઓઔકખગઘઙચછજઝઞટઠડઢણતથદધન઩પફબભમયર઱લળ઴વશષસહ઺઻઼ઽાિીુૂૃૄૅ૆ેૈૉ૊ોૌ્૎૏ૐ૑૒૓૔૕૖૗૘૙૚૛૜૝૞૟ૠૡૢૣ૤૥૦૧૨૩૪૫૬૭૮૯૰૱૲૳૴૵૶૷૸ૹૺૻૼ૽૾૿', ',') satisfies matches($s, '^(?:\\p{IsGujarati}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsGujarati}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00231.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00232'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('଀୿,଀ଁଂଃ଄ଅଆଇଈଉଊଋଌ଍଎ଏଐ଑଒ଓଔକଖଗଘଙଚଛଜଝଞଟଠଡଢଣତଥଦଧନ଩ପଫବଭମଯର଱ଲଳ଴ଵଶଷସହ଺଻଼ଽାିୀୁୂୃୄ୅୆େୈ୉୊ୋୌ୍୎୏୐୑୒୓୔୕ୖୗ୘୙୚୛ଡ଼ଢ଼୞ୟୠୡୢୣ୤୥୦୧୨୩୪୫୬୭୮୯୰ୱ୲୳୴୵୶୷୸୹୺୻୼୽୾୿', ',') satisfies matches($s, '^(?:\\p{IsOriya}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsOriya}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00232.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00233'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('஀௿,஀஁ஂஃ஄அஆஇஈஉஊ஋஌஍எஏஐ஑ஒஓஔக஖஗஘ஙச஛ஜ஝ஞட஠஡஢ணத஥஦஧நனப஫஬஭மயரறலளழவஶஷஸஹ஺஻஼஽ாிீுூ௃௄௅ெேை௉ொோௌ்௎௏ௐ௑௒௓௔௕௖ௗ௘௙௚௛௜௝௞௟௠௡௢௣௤௥௦௧௨௩௪௫௬௭௮௯௰௱௲௳௴௵௶௷௸௹௺௻௼௽௾௿', ',') satisfies matches($s, '^(?:\\p{IsTamil}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsTamil}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00233.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00234'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('ఀ౿,ఀఁంఃఄఅఆఇఈఉఊఋఌ఍ఎఏఐ఑ఒఓఔకఖగఘఙచఛజఝఞటఠడఢణతథదధన఩పఫబభమయరఱలళఴవశషసహ఺఻఼ఽాిీుూృౄ౅ెేై౉ొోౌ్౎౏౐౑౒౓౔ౕౖ౗ౘౙౚ౛౜ౝ౞౟ౠౡౢౣ౤౥౦౧౨౩౪౫౬౭౮౯౰౱౲౳౴౵౶౷౸౹౺౻౼౽౾౿', ',') satisfies matches($s, '^(?:\\p{IsTelugu}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsTelugu}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00234.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00235'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('ಀ೿,ಀಁಂಃ಄ಅಆಇಈಉಊಋಌ಍ಎಏಐ಑ಒಓಔಕಖಗಘಙಚಛಜಝಞಟಠಡಢಣತಥದಧನ಩ಪಫಬಭಮಯರಱಲಳ಴ವಶಷಸಹ಺಻಼ಽಾಿೀುೂೃೄ೅ೆೇೈ೉ೊೋೌ್೎೏೐೑೒೓೔ೕೖ೗೘೙೚೛೜ೝೞ೟ೠೡೢೣ೤೥೦೧೨೩೪೫೬೭೮೯೰ೱೲೳ೴೵೶೷೸೹೺೻೼೽೾೿', ',') satisfies matches($s, '^(?:\\p{IsKannada}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsKannada}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00235.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00236'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('ഀൿ,ഀഁംഃഄഅആഇഈഉഊഋഌ഍എഏഐ഑ഒഓഔകഖഗഘങചഛജഝഞടഠഡഢണതഥദധനഩപഫബഭമയരറലളഴവശഷസഹഺ഻഼ഽാിീുൂൃൄ൅െേൈ൉ൊോൌ്ൎ൏൐൑൒൓ൔൕൖൗ൘൙൚൛൜൝൞ൟൠൡൢൣ൤൥൦൧൨൩൪൫൬൭൮൯൰൱൲൳൴൵൶൷൸൹ൺൻർൽൾൿ', ',') satisfies matches($s, '^(?:\\p{IsMalayalam}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsMalayalam}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00236.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00237'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('඀෿,඀ඁංඃ඄අආඇඈඉඊඋඌඍඎඏඐඑඒඓඔඕඖ඗඘඙කඛගඝඞඟචඡජඣඤඥඦටඨඩඪණඬතථදධන඲ඳපඵබභමඹයර඼ල඾඿වශෂසහළෆ෇෈෉්෋෌෍෎ාැෑිීු෕ූ෗ෘෙේෛොෝෞෟ෠෡෢෣෤෥෦෧෨෩෪෫෬෭෮෯෰෱ෲෳ෴෵෶෷෸෹෺෻෼෽෾෿', ',') satisfies matches($s, '^(?:\\p{IsSinhala}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsSinhala}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00237.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00238'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('฀๿,฀กขฃคฅฆงจฉชซฌญฎฏฐฑฒณดตถทธนบปผฝพฟภมยรฤลฦวศษสหฬอฮฯะัาำิีึืฺุู฻฼฽฾฿เแโใไๅๆ็่้๊๋์ํ๎๏๐๑๒๓๔๕๖๗๘๙๚๛๜๝๞๟๠๡๢๣๤๥๦๧๨๩๪๫๬๭๮๯๰๱๲๳๴๵๶๷๸๹๺๻๼๽๾๿', ',') satisfies matches($s, '^(?:\\p{IsThai}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsThai}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00238.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00239'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('຀໿,຀ກຂ຃ຄ຅ຆງຈຉຊ຋ຌຍຎຏຐຑຒຓດຕຖທຘນບປຜຝພຟຠມຢຣ຤ລ຦ວຨຩສຫຬອຮຯະັາຳິີຶື຺ຸູົຼຽ຾຿ເແໂໃໄ໅ໆ໇່້໊໋໌ໍ໎໏໐໑໒໓໔໕໖໗໘໙໚໛ໜໝໞໟ໠໡໢໣໤໥໦໧໨໩໪໫໬໭໮໯໰໱໲໳໴໵໶໷໸໹໺໻໼໽໾໿', ',') satisfies matches($s, '^(?:\\p{IsLao}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsLao}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00239.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00240'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('ༀ࿿,ༀ༁༂༃༄༅༆༇༈༉༊་༌།༎༏༐༑༒༓༔༕༖༗༘༙༚༛༜༝༞༟༠༡༢༣༤༥༦༧༨༩༪༫༬༭༮༯༰༱༲༳༴༵༶༷༸༹༺༻༼༽༾༿ཀཁགགྷངཅཆཇ཈ཉཊཋཌཌྷཎཏཐདདྷནཔཕབབྷམཙཚཛཛྷཝཞཟའཡརལཤཥསཧཨཀྵཪཫཬ཭཮཯཰ཱཱཱིིུུྲྀཷླྀཹེཻོཽཾཿ྄ཱྀྀྂྃ྅྆྇ྈྉྊྋྌྍྎྏྐྑྒྒྷྔྕྖྗ྘ྙྚྛྜྜྷྞྟྠྡྡྷྣྤྥྦྦྷྨྩྪྫྫྷྭྮྯྰྱྲླྴྵྶྷྸྐྵྺྻྼ྽྾྿࿀࿁࿂࿃࿄࿅࿆࿇࿈࿉࿊࿋࿌࿍࿎࿏࿐࿑࿒࿓࿔࿕࿖࿗࿘࿙࿚࿛࿜࿝࿞࿟࿠࿡࿢࿣࿤࿥࿦࿧࿨࿩࿪࿫࿬࿭࿮࿯࿰࿱࿲࿳࿴࿵࿶࿷࿸࿹࿺࿻࿼࿽࿾࿿', ',') satisfies matches($s, '^(?:\\p{IsTibetan}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsTibetan}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00240.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00241'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('က႟,ကခဂဃငစဆဇဈဉညဋဌဍဎဏတထဒဓနပဖဗဘမယရလဝသဟဠအဢဣဤဥဦဧဨဩဪါာိီုူေဲဳဴဵံ့း္်ျြွှဿ၀၁၂၃၄၅၆၇၈၉၊။၌၍၎၏ၐၑၒၓၔၕၖၗၘၙၚၛၜၝၞၟၠၡၢၣၤၥၦၧၨၩၪၫၬၭၮၯၰၱၲၳၴၵၶၷၸၹၺၻၼၽၾၿႀႁႂႃႄႅႆႇႈႉႊႋႌႍႎႏ႐႑႒႓႔႕႖႗႘႙ႚႛႜႝ႞႟', ',') satisfies matches($s, '^(?:\\p{IsMyanmar}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsMyanmar}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00241.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00242'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('Ⴀჿ,ႠႡႢႣႤႥႦႧႨႩႪႫႬႭႮႯႰႱႲႳႴႵႶႷႸႹႺႻႼႽႾႿჀჁჂჃჄჅ჆Ⴧ჈჉჊჋჌Ⴭ჎჏აბგდევზთიკლმნოპჟრსტუფქღყშჩცძწჭხჯჰჱჲჳჴჵჶჷჸჹჺ჻ჼჽჾჿ', ',') satisfies matches($s, '^(?:\\p{IsGeorgian}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsGeorgian}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00242.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00243'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('ᄀᇿ,ᄀᄁᄂᄃᄄᄅᄆᄇᄈᄉᄊᄋᄌᄍᄎᄏᄐᄑᄒᄓᄔᄕᄖᄗᄘᄙᄚᄛᄜᄝᄞᄟᄠᄡᄢᄣᄤᄥᄦᄧᄨᄩᄪᄫᄬᄭᄮᄯᄰᄱᄲᄳᄴᄵᄶᄷᄸᄹᄺᄻᄼᄽᄾᄿᅀᅁᅂᅃᅄᅅᅆᅇᅈᅉᅊᅋᅌᅍᅎᅏᅐᅑᅒᅓᅔᅕᅖᅗᅘᅙᅚᅛᅜᅝᅞᅟᅠᅡᅢᅣᅤᅥᅦᅧᅨᅩᅪᅫᅬᅭᅮᅯᅰᅱᅲᅳᅴᅵᅶᅷᅸᅹᅺᅻᅼᅽᅾᅿᆀᆁᆂᆃᆄᆅᆆᆇᆈᆉᆊᆋᆌᆍᆎᆏᆐᆑᆒᆓᆔᆕᆖᆗᆘᆙᆚᆛᆜᆝᆞᆟᆠᆡᆢᆣᆤᆥᆦᆧᆨᆩᆪᆫᆬᆭᆮᆯᆰᆱᆲᆳᆴᆵᆶᆷᆸᆹᆺᆻᆼᆽᆾᆿᇀᇁᇂᇃᇄᇅᇆᇇᇈᇉᇊᇋᇌᇍᇎᇏᇐᇑᇒᇓᇔᇕᇖᇗᇘᇙᇚᇛᇜᇝᇞᇟᇠᇡᇢᇣᇤᇥᇦᇧᇨᇩᇪᇫᇬᇭᇮᇯᇰᇱᇲᇳᇴᇵᇶᇷᇸᇹᇺᇻᇼᇽᇾᇿ', ',') satisfies matches($s, '^(?:\\p{IsHangulJamo}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsHangulJamo}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00243.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00244'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('ሀ፿,ሀሁሂሃሄህሆሇለሉሊላሌልሎሏሐሑሒሓሔሕሖሗመሙሚማሜምሞሟሠሡሢሣሤሥሦሧረሩሪራሬርሮሯሰሱሲሳሴስሶሷሸሹሺሻሼሽሾሿቀቁቂቃቄቅቆቇቈ቉ቊቋቌቍ቎቏ቐቑቒቓቔቕቖ቗ቘ቙ቚቛቜቝ቞቟በቡቢባቤብቦቧቨቩቪቫቬቭቮቯተቱቲታቴትቶቷቸቹቺቻቼችቾቿኀኁኂኃኄኅኆኇኈ኉ኊኋኌኍ኎኏ነኑኒናኔንኖኗኘኙኚኛኜኝኞኟአኡኢኣኤእኦኧከኩኪካኬክኮኯኰ኱ኲኳኴኵ኶኷ኸኹኺኻኼኽኾ኿ዀ዁ዂዃዄዅ዆዇ወዉዊዋዌውዎዏዐዑዒዓዔዕዖ዗ዘዙዚዛዜዝዞዟዠዡዢዣዤዥዦዧየዩዪያዬይዮዯደዱዲዳዴድዶዷዸዹዺዻዼዽዾዿጀጁጂጃጄጅጆጇገጉጊጋጌግጎጏጐ጑ጒጓጔጕ጖጗ጘጙጚጛጜጝጞጟጠጡጢጣጤጥጦጧጨጩጪጫጬጭጮጯጰጱጲጳጴጵጶጷጸጹጺጻጼጽጾጿፀፁፂፃፄፅፆፇፈፉፊፋፌፍፎፏፐፑፒፓፔፕፖፗፘፙፚ፛፜፝፞፟፠፡።፣፤፥፦፧፨፩፪፫፬፭፮፯፰፱፲፳፴፵፶፷፸፹፺፻፼፽፾፿', ',') satisfies matches($s, '^(?:\\p{IsEthiopic}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsEthiopic}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00244.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00245'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('Ꭰ᏿,ᎠᎡᎢᎣᎤᎥᎦᎧᎨᎩᎪᎫᎬᎭᎮᎯᎰᎱᎲᎳᎴᎵᎶᎷᎸᎹᎺᎻᎼᎽᎾᎿᏀᏁᏂᏃᏄᏅᏆᏇᏈᏉᏊᏋᏌᏍᏎᏏᏐᏑᏒᏓᏔᏕᏖᏗᏘᏙᏚᏛᏜᏝᏞᏟᏠᏡᏢᏣᏤᏥᏦᏧᏨᏩᏪᏫᏬᏭᏮᏯᏰᏱᏲᏳᏴᏵ᏶᏷ᏸᏹᏺᏻᏼᏽ᏾᏿', ',') satisfies matches($s, '^(?:\\p{IsCherokee}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsCherokee}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00245.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00246'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('᐀ᙿ,᐀ᐁᐂᐃᐄᐅᐆᐇᐈᐉᐊᐋᐌᐍᐎᐏᐐᐑᐒᐓᐔᐕᐖᐗᐘᐙᐚᐛᐜᐝᐞᐟᐠᐡᐢᐣᐤᐥᐦᐧᐨᐩᐪᐫᐬᐭᐮᐯᐰᐱᐲᐳᐴᐵᐶᐷᐸᐹᐺᐻᐼᐽᐾᐿᑀᑁᑂᑃᑄᑅᑆᑇᑈᑉᑊᑋᑌᑍᑎᑏᑐᑑᑒᑓᑔᑕᑖᑗᑘᑙᑚᑛᑜᑝᑞᑟᑠᑡᑢᑣᑤᑥᑦᑧᑨᑩᑪᑫᑬᑭᑮᑯᑰᑱᑲᑳᑴᑵᑶᑷᑸᑹᑺᑻᑼᑽᑾᑿᒀᒁᒂᒃᒄᒅᒆᒇᒈᒉᒊᒋᒌᒍᒎᒏᒐᒑᒒᒓᒔᒕᒖᒗᒘᒙᒚᒛᒜᒝᒞᒟᒠᒡᒢᒣᒤᒥᒦᒧᒨᒩᒪᒫᒬᒭᒮᒯᒰᒱᒲᒳᒴᒵᒶᒷᒸᒹᒺᒻᒼᒽᒾᒿᓀᓁᓂᓃᓄᓅᓆᓇᓈᓉᓊᓋᓌᓍᓎᓏᓐᓑᓒᓓᓔᓕᓖᓗᓘᓙᓚᓛᓜᓝᓞᓟᓠᓡᓢᓣᓤᓥᓦᓧᓨᓩᓪᓫᓬᓭᓮᓯᓰᓱᓲᓳᓴᓵᓶᓷᓸᓹᓺᓻᓼᓽᓾᓿᔀᔁᔂᔃᔄᔅᔆᔇᔈᔉᔊᔋᔌᔍᔎᔏᔐᔑᔒᔓᔔᔕᔖᔗᔘᔙᔚᔛᔜᔝᔞᔟᔠᔡᔢᔣᔤᔥᔦᔧᔨᔩᔪᔫᔬᔭᔮᔯᔰᔱᔲᔳᔴᔵᔶᔷᔸᔹᔺᔻᔼᔽᔾᔿᕀᕁᕂᕃᕄᕅᕆᕇᕈᕉᕊᕋᕌᕍᕎᕏᕐᕑᕒᕓᕔᕕᕖᕗᕘᕙᕚᕛᕜᕝᕞᕟᕠᕡᕢᕣᕤᕥᕦᕧᕨᕩᕪᕫᕬᕭᕮᕯᕰᕱᕲᕳᕴᕵᕶᕷᕸᕹᕺᕻᕼᕽᕾᕿᖀᖁᖂᖃᖄᖅᖆᖇᖈᖉᖊᖋᖌᖍᖎᖏᖐᖑᖒᖓᖔᖕᖖᖗᖘᖙᖚᖛᖜᖝᖞᖟᖠᖡᖢᖣᖤᖥᖦᖧᖨᖩᖪᖫᖬᖭᖮᖯᖰᖱᖲᖳᖴᖵᖶᖷᖸᖹᖺᖻᖼᖽᖾᖿᗀᗁᗂᗃᗄᗅᗆᗇᗈᗉᗊᗋᗌᗍᗎᗏᗐᗑᗒᗓᗔᗕᗖᗗᗘᗙᗚᗛᗜᗝᗞᗟᗠᗡᗢᗣᗤᗥᗦᗧᗨᗩᗪᗫᗬᗭᗮᗯᗰᗱᗲᗳᗴᗵᗶᗷᗸᗹᗺᗻᗼᗽᗾᗿᘀᘁᘂᘃᘄᘅᘆᘇᘈᘉᘊᘋᘌᘍᘎᘏᘐᘑᘒᘓᘔᘕᘖᘗᘘᘙᘚᘛᘜᘝᘞᘟᘠᘡᘢᘣᘤᘥᘦᘧᘨᘩᘪᘫᘬᘭᘮᘯᘰᘱᘲᘳᘴᘵᘶᘷᘸᘹᘺᘻᘼᘽᘾᘿᙀᙁᙂᙃᙄᙅᙆᙇᙈᙉᙊᙋᙌᙍᙎᙏᙐᙑᙒᙓᙔᙕᙖᙗᙘᙙᙚᙛᙜᙝᙞᙟᙠᙡᙢᙣᙤᙥᙦᙧᙨᙩᙪᙫᙬ᙭᙮ᙯᙰᙱᙲᙳᙴᙵᙶᙷᙸᙹᙺᙻᙼᙽᙾᙿ', ',') satisfies matches($s, '^(?:\\p{IsUnifiedCanadianAboriginalSyllabics}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsUnifiedCanadianAboriginalSyllabics}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00246.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00247'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize(' ᚟, ᚁᚂᚃᚄᚅᚆᚇᚈᚉᚊᚋᚌᚍᚎᚏᚐᚑᚒᚓᚔᚕᚖᚗᚘᚙᚚ᚛᚜᚝᚞᚟', ',') satisfies matches($s, '^(?:\\p{IsOgham}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsOgham}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00247.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00248'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('ᚠ᛿,ᚠᚡᚢᚣᚤᚥᚦᚧᚨᚩᚪᚫᚬᚭᚮᚯᚰᚱᚲᚳᚴᚵᚶᚷᚸᚹᚺᚻᚼᚽᚾᚿᛀᛁᛂᛃᛄᛅᛆᛇᛈᛉᛊᛋᛌᛍᛎᛏᛐᛑᛒᛓᛔᛕᛖᛗᛘᛙᛚᛛᛜᛝᛞᛟᛠᛡᛢᛣᛤᛥᛦᛧᛨᛩᛪ᛫᛬᛭ᛮᛯᛰᛱᛲᛳᛴᛵᛶᛷᛸ᛹᛺᛻᛼᛽᛾᛿', ',') satisfies matches($s, '^(?:\\p{IsRunic}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsRunic}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00248.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00249'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('ក៿,កខគឃងចឆជឈញដឋឌឍណតថទធនបផពភមយរលវឝឞសហឡអឣឤឥឦឧឨឩឪឫឬឭឮឯឰឱឲឳ឴឵ាិីឹឺុូួើឿៀេែៃោៅំះៈ៉៊់៌៍៎៏័៑្៓។៕៖ៗ៘៙៚៛ៜ៝៞៟០១២៣៤៥៦៧៨៩៪៫៬៭៮៯៰៱៲៳៴៵៶៷៸៹៺៻៼៽៾៿', ',') satisfies matches($s, '^(?:\\p{IsKhmer}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsKhmer}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00249.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00250'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('᠀᢯,᠀᠁᠂᠃᠄᠅᠆᠇᠈᠉᠊᠋᠌᠍᠎᠏᠐᠑᠒᠓᠔᠕᠖᠗᠘᠙᠚᠛᠜᠝᠞᠟ᠠᠡᠢᠣᠤᠥᠦᠧᠨᠩᠪᠫᠬᠭᠮᠯᠰᠱᠲᠳᠴᠵᠶᠷᠸᠹᠺᠻᠼᠽᠾᠿᡀᡁᡂᡃᡄᡅᡆᡇᡈᡉᡊᡋᡌᡍᡎᡏᡐᡑᡒᡓᡔᡕᡖᡗᡘᡙᡚᡛᡜᡝᡞᡟᡠᡡᡢᡣᡤᡥᡦᡧᡨᡩᡪᡫᡬᡭᡮᡯᡰᡱᡲᡳᡴᡵᡶᡷᡸ᡹᡺᡻᡼᡽᡾᡿ᢀᢁᢂᢃᢄᢅᢆᢇᢈᢉᢊᢋᢌᢍᢎᢏᢐᢑᢒᢓᢔᢕᢖᢗᢘᢙᢚᢛᢜᢝᢞᢟᢠᢡᢢᢣᢤᢥᢦᢧᢨᢩᢪ᢫᢬᢭᢮᢯', ',') satisfies matches($s, '^(?:\\p{IsMongolian}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsMongolian}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00250.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00251'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('Ḁỿ,ḀḁḂḃḄḅḆḇḈḉḊḋḌḍḎḏḐḑḒḓḔḕḖḗḘḙḚḛḜḝḞḟḠḡḢḣḤḥḦḧḨḩḪḫḬḭḮḯḰḱḲḳḴḵḶḷḸḹḺḻḼḽḾḿṀṁṂṃṄṅṆṇṈṉṊṋṌṍṎṏṐṑṒṓṔṕṖṗṘṙṚṛṜṝṞṟṠṡṢṣṤṥṦṧṨṩṪṫṬṭṮṯṰṱṲṳṴṵṶṷṸṹṺṻṼṽṾṿẀẁẂẃẄẅẆẇẈẉẊẋẌẍẎẏẐẑẒẓẔẕẖẗẘẙẚẛẜẝẞẟẠạẢảẤấẦầẨẩẪẫẬậẮắẰằẲẳẴẵẶặẸẹẺẻẼẽẾếỀềỂểỄễỆệỈỉỊịỌọỎỏỐốỒồỔổỖỗỘộỚớỜờỞởỠỡỢợỤụỦủỨứỪừỬửỮữỰựỲỳỴỵỶỷỸỹỺỻỼỽỾỿ', ',') satisfies matches($s, '^(?:\\p{IsLatinExtendedAdditional}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsLatinExtendedAdditional}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00251.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00252'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('ἀ῿,ἀἁἂἃἄἅἆἇἈἉἊἋἌἍἎἏἐἑἒἓἔἕ἖἗ἘἙἚἛἜἝ἞἟ἠἡἢἣἤἥἦἧἨἩἪἫἬἭἮἯἰἱἲἳἴἵἶἷἸἹἺἻἼἽἾἿὀὁὂὃὄὅ὆὇ὈὉὊὋὌὍ὎὏ὐὑὒὓὔὕὖὗ὘Ὑ὚Ὓ὜Ὕ὞ὟὠὡὢὣὤὥὦὧὨὩὪὫὬὭὮὯὰάὲέὴήὶίὸόὺύὼώ὾὿ᾀᾁᾂᾃᾄᾅᾆᾇᾈᾉᾊᾋᾌᾍᾎᾏᾐᾑᾒᾓᾔᾕᾖᾗᾘᾙᾚᾛᾜᾝᾞᾟᾠᾡᾢᾣᾤᾥᾦᾧᾨᾩᾪᾫᾬᾭᾮᾯᾰᾱᾲᾳᾴ᾵ᾶᾷᾸᾹᾺΆᾼ᾽ι᾿῀῁ῂῃῄ῅ῆῇῈΈῊΉῌ῍῎῏ῐῑῒΐ῔῕ῖῗῘῙῚΊ῜῝῞῟ῠῡῢΰῤῥῦῧῨῩῪΎῬ῭΅`῰῱ῲῳῴ῵ῶῷῸΌῺΏῼ´῾῿', ',') satisfies matches($s, '^(?:\\p{IsGreekExtended}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsGreekExtended}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00252.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00253'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize(' ⁯,           ​‌‍‎‏‐‑‒–—―‖‗‘’‚‛“”„‟†‡•‣․‥…‧  ‪‫‬‭‮ ‰‱′″‴‵‶‷‸‹›※‼‽‾‿⁀⁁⁂⁃⁄⁅⁆⁇⁈⁉⁊⁋⁌⁍⁎⁏⁐⁑⁒⁓⁔⁕⁖⁗⁘⁙⁚⁛⁜⁝⁞ ⁠⁡⁢⁣⁤⁥⁦⁧⁨⁩⁪⁫⁬⁭⁮⁯', ',') satisfies matches($s, '^(?:\\p{IsGeneralPunctuation}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsGeneralPunctuation}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00253.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00254'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('⁰₟,⁰ⁱ⁲⁳⁴⁵⁶⁷⁸⁹⁺⁻⁼⁽⁾ⁿ₀₁₂₃₄₅₆₇₈₉₊₋₌₍₎₏ₐₑₒₓₔₕₖₗₘₙₚₛₜ₝₞₟', ',') satisfies matches($s, '^(?:\\p{IsSuperscriptsandSubscripts}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsSuperscriptsandSubscripts}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00254.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00255'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('₠⃏,₠₡₢₣₤₥₦₧₨₩₪₫€₭₮₯₰₱₲₳₴₵₶₷₸₹₺₻₼₽₾₿⃀⃁⃂⃃⃄⃅⃆⃇⃈⃉⃊⃋⃌⃍⃎⃏', ',') satisfies matches($s, '^(?:\\p{IsCurrencySymbols}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsCurrencySymbols}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00255.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00256'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('⃐⃿', ',') satisfies matches($s, '^(?:\\p{IsCombiningMarksforSymbols}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsCombiningMarksforSymbols}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00256.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00257'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('℀⅏,℀℁ℂ℃℄℅℆ℇ℈℉ℊℋℌℍℎℏℐℑℒℓ℔ℕ№℗℘ℙℚℛℜℝ℞℟℠℡™℣ℤ℥Ω℧ℨ℩KÅℬℭ℮ℯℰℱℲℳℴℵℶℷℸℹ℺℻ℼℽℾℿ⅀⅁⅂⅃⅄ⅅⅆⅇⅈⅉ⅊⅋⅌⅍ⅎ⅏', ',') satisfies matches($s, '^(?:\\p{IsLetterlikeSymbols}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsLetterlikeSymbols}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00257.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00258'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('⅐↏,⅐⅑⅒⅓⅔⅕⅖⅗⅘⅙⅚⅛⅜⅝⅞⅟ⅠⅡⅢⅣⅤⅥⅦⅧⅨⅩⅪⅫⅬⅭⅮⅯⅰⅱⅲⅳⅴⅵⅶⅷⅸⅹⅺⅻⅼⅽⅾⅿↀↁↂↃↄↅↆↇↈ↉↊↋↌↍↎↏', ',') satisfies matches($s, '^(?:\\p{IsNumberForms}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsNumberForms}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00258.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00259'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('←⇿,←↑→↓↔↕↖↗↘↙↚↛↜↝↞↟↠↡↢↣↤↥↦↧↨↩↪↫↬↭↮↯↰↱↲↳↴↵↶↷↸↹↺↻↼↽↾↿⇀⇁⇂⇃⇄⇅⇆⇇⇈⇉⇊⇋⇌⇍⇎⇏⇐⇑⇒⇓⇔⇕⇖⇗⇘⇙⇚⇛⇜⇝⇞⇟⇠⇡⇢⇣⇤⇥⇦⇧⇨⇩⇪⇫⇬⇭⇮⇯⇰⇱⇲⇳⇴⇵⇶⇷⇸⇹⇺⇻⇼⇽⇾⇿', ',') satisfies matches($s, '^(?:\\p{IsArrows}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsArrows}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00259.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00260'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('∀⋿,∀∁∂∃∄∅∆∇∈∉∊∋∌∍∎∏∐∑−∓∔∕∖∗∘∙√∛∜∝∞∟∠∡∢∣∤∥∦∧∨∩∪∫∬∭∮∯∰∱∲∳∴∵∶∷∸∹∺∻∼∽∾∿≀≁≂≃≄≅≆≇≈≉≊≋≌≍≎≏≐≑≒≓≔≕≖≗≘≙≚≛≜≝≞≟≠≡≢≣≤≥≦≧≨≩≪≫≬≭≮≯≰≱≲≳≴≵≶≷≸≹≺≻≼≽≾≿⊀⊁⊂⊃⊄⊅⊆⊇⊈⊉⊊⊋⊌⊍⊎⊏⊐⊑⊒⊓⊔⊕⊖⊗⊘⊙⊚⊛⊜⊝⊞⊟⊠⊡⊢⊣⊤⊥⊦⊧⊨⊩⊪⊫⊬⊭⊮⊯⊰⊱⊲⊳⊴⊵⊶⊷⊸⊹⊺⊻⊼⊽⊾⊿⋀⋁⋂⋃⋄⋅⋆⋇⋈⋉⋊⋋⋌⋍⋎⋏⋐⋑⋒⋓⋔⋕⋖⋗⋘⋙⋚⋛⋜⋝⋞⋟⋠⋡⋢⋣⋤⋥⋦⋧⋨⋩⋪⋫⋬⋭⋮⋯⋰⋱⋲⋳⋴⋵⋶⋷⋸⋹⋺⋻⋼⋽⋾⋿', ',') satisfies matches($s, '^(?:\\p{IsMathematicalOperators}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsMathematicalOperators}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00260.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00261'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('⌀⏿,⌀⌁⌂⌃⌄⌅⌆⌇⌈⌉⌊⌋⌌⌍⌎⌏⌐⌑⌒⌓⌔⌕⌖⌗⌘⌙⌚⌛⌜⌝⌞⌟⌠⌡⌢⌣⌤⌥⌦⌧⌨〈〉⌫⌬⌭⌮⌯⌰⌱⌲⌳⌴⌵⌶⌷⌸⌹⌺⌻⌼⌽⌾⌿⍀⍁⍂⍃⍄⍅⍆⍇⍈⍉⍊⍋⍌⍍⍎⍏⍐⍑⍒⍓⍔⍕⍖⍗⍘⍙⍚⍛⍜⍝⍞⍟⍠⍡⍢⍣⍤⍥⍦⍧⍨⍩⍪⍫⍬⍭⍮⍯⍰⍱⍲⍳⍴⍵⍶⍷⍸⍹⍺⍻⍼⍽⍾⍿⎀⎁⎂⎃⎄⎅⎆⎇⎈⎉⎊⎋⎌⎍⎎⎏⎐⎑⎒⎓⎔⎕⎖⎗⎘⎙⎚⎛⎜⎝⎞⎟⎠⎡⎢⎣⎤⎥⎦⎧⎨⎩⎪⎫⎬⎭⎮⎯⎰⎱⎲⎳⎴⎵⎶⎷⎸⎹⎺⎻⎼⎽⎾⎿⏀⏁⏂⏃⏄⏅⏆⏇⏈⏉⏊⏋⏌⏍⏎⏏⏐⏑⏒⏓⏔⏕⏖⏗⏘⏙⏚⏛⏜⏝⏞⏟⏠⏡⏢⏣⏤⏥⏦⏧⏨⏩⏪⏫⏬⏭⏮⏯⏰⏱⏲⏳⏴⏵⏶⏷⏸⏹⏺⏻⏼⏽⏾⏿', ',') satisfies matches($s, '^(?:\\p{IsMiscellaneousTechnical}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsMiscellaneousTechnical}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00261.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00262'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('␀␿,␀␁␂␃␄␅␆␇␈␉␊␋␌␍␎␏␐␑␒␓␔␕␖␗␘␙␚␛␜␝␞␟␠␡␢␣␤␥␦␧␨␩␪␫␬␭␮␯␰␱␲␳␴␵␶␷␸␹␺␻␼␽␾␿', ',') satisfies matches($s, '^(?:\\p{IsControlPictures}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsControlPictures}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00262.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00263'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('⑀⑟,⑀⑁⑂⑃⑄⑅⑆⑇⑈⑉⑊⑋⑌⑍⑎⑏⑐⑑⑒⑓⑔⑕⑖⑗⑘⑙⑚⑛⑜⑝⑞⑟', ',') satisfies matches($s, '^(?:\\p{IsOpticalCharacterRecognition}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsOpticalCharacterRecognition}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00263.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00264'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('①⓿,①②③④⑤⑥⑦⑧⑨⑩⑪⑫⑬⑭⑮⑯⑰⑱⑲⑳⑴⑵⑶⑷⑸⑹⑺⑻⑼⑽⑾⑿⒀⒁⒂⒃⒄⒅⒆⒇⒈⒉⒊⒋⒌⒍⒎⒏⒐⒑⒒⒓⒔⒕⒖⒗⒘⒙⒚⒛⒜⒝⒞⒟⒠⒡⒢⒣⒤⒥⒦⒧⒨⒩⒪⒫⒬⒭⒮⒯⒰⒱⒲⒳⒴⒵ⒶⒷⒸⒹⒺⒻⒼⒽⒾⒿⓀⓁⓂⓃⓄⓅⓆⓇⓈⓉⓊⓋⓌⓍⓎⓏⓐⓑⓒⓓⓔⓕⓖⓗⓘⓙⓚⓛⓜⓝⓞⓟⓠⓡⓢⓣⓤⓥⓦⓧⓨⓩ⓪⓫⓬⓭⓮⓯⓰⓱⓲⓳⓴⓵⓶⓷⓸⓹⓺⓻⓼⓽⓾⓿', ',') satisfies matches($s, '^(?:\\p{IsEnclosedAlphanumerics}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsEnclosedAlphanumerics}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00264.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00265'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('─╿,─━│┃┄┅┆┇┈┉┊┋┌┍┎┏┐┑┒┓└┕┖┗┘┙┚┛├┝┞┟┠┡┢┣┤┥┦┧┨┩┪┫┬┭┮┯┰┱┲┳┴┵┶┷┸┹┺┻┼┽┾┿╀╁╂╃╄╅╆╇╈╉╊╋╌╍╎╏═║╒╓╔╕╖╗╘╙╚╛╜╝╞╟╠╡╢╣╤╥╦╧╨╩╪╫╬╭╮╯╰╱╲╳╴╵╶╷╸╹╺╻╼╽╾╿', ',') satisfies matches($s, '^(?:\\p{IsBoxDrawing}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsBoxDrawing}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00265.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00266'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('▀▟,▀▁▂▃▄▅▆▇█▉▊▋▌▍▎▏▐░▒▓▔▕▖▗▘▙▚▛▜▝▞▟', ',') satisfies matches($s, '^(?:\\p{IsBlockElements}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsBlockElements}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00266.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00267'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('■◿,■□▢▣▤▥▦▧▨▩▪▫▬▭▮▯▰▱▲△▴▵▶▷▸▹►▻▼▽▾▿◀◁◂◃◄◅◆◇◈◉◊○◌◍◎●◐◑◒◓◔◕◖◗◘◙◚◛◜◝◞◟◠◡◢◣◤◥◦◧◨◩◪◫◬◭◮◯◰◱◲◳◴◵◶◷◸◹◺◻◼◽◾◿', ',') satisfies matches($s, '^(?:\\p{IsGeometricShapes}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsGeometricShapes}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00267.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00268'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('☀⛿,☀☁☂☃☄★☆☇☈☉☊☋☌☍☎☏☐☑☒☓☔☕☖☗☘☙☚☛☜☝☞☟☠☡☢☣☤☥☦☧☨☩☪☫☬☭☮☯☰☱☲☳☴☵☶☷☸☹☺☻☼☽☾☿♀♁♂♃♄♅♆♇♈♉♊♋♌♍♎♏♐♑♒♓♔♕♖♗♘♙♚♛♜♝♞♟♠♡♢♣♤♥♦♧♨♩♪♫♬♭♮♯♰♱♲♳♴♵♶♷♸♹♺♻♼♽♾♿⚀⚁⚂⚃⚄⚅⚆⚇⚈⚉⚊⚋⚌⚍⚎⚏⚐⚑⚒⚓⚔⚕⚖⚗⚘⚙⚚⚛⚜⚝⚞⚟⚠⚡⚢⚣⚤⚥⚦⚧⚨⚩⚪⚫⚬⚭⚮⚯⚰⚱⚲⚳⚴⚵⚶⚷⚸⚹⚺⚻⚼⚽⚾⚿⛀⛁⛂⛃⛄⛅⛆⛇⛈⛉⛊⛋⛌⛍⛎⛏⛐⛑⛒⛓⛔⛕⛖⛗⛘⛙⛚⛛⛜⛝⛞⛟⛠⛡⛢⛣⛤⛥⛦⛧⛨⛩⛪⛫⛬⛭⛮⛯⛰⛱⛲⛳⛴⛵⛶⛷⛸⛹⛺⛻⛼⛽⛾⛿', ',') satisfies matches($s, '^(?:\\p{IsMiscellaneousSymbols}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsMiscellaneousSymbols}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00268.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00269'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('✀➿,✀✁✂✃✄✅✆✇✈✉✊✋✌✍✎✏✐✑✒✓✔✕✖✗✘✙✚✛✜✝✞✟✠✡✢✣✤✥✦✧✨✩✪✫✬✭✮✯✰✱✲✳✴✵✶✷✸✹✺✻✼✽✾✿❀❁❂❃❄❅❆❇❈❉❊❋❌❍❎❏❐❑❒❓❔❕❖❗❘❙❚❛❜❝❞❟❠❡❢❣❤❥❦❧❨❩❪❫❬❭❮❯❰❱❲❳❴❵❶❷❸❹❺❻❼❽❾❿➀➁➂➃➄➅➆➇➈➉➊➋➌➍➎➏➐➑➒➓➔➕➖➗➘➙➚➛➜➝➞➟➠➡➢➣➤➥➦➧➨➩➪➫➬➭➮➯➰➱➲➳➴➵➶➷➸➹➺➻➼➽➾➿', ',') satisfies matches($s, '^(?:\\p{IsDingbats}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsDingbats}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00269.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00270'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('⠀⣿,⠀⠁⠂⠃⠄⠅⠆⠇⠈⠉⠊⠋⠌⠍⠎⠏⠐⠑⠒⠓⠔⠕⠖⠗⠘⠙⠚⠛⠜⠝⠞⠟⠠⠡⠢⠣⠤⠥⠦⠧⠨⠩⠪⠫⠬⠭⠮⠯⠰⠱⠲⠳⠴⠵⠶⠷⠸⠹⠺⠻⠼⠽⠾⠿⡀⡁⡂⡃⡄⡅⡆⡇⡈⡉⡊⡋⡌⡍⡎⡏⡐⡑⡒⡓⡔⡕⡖⡗⡘⡙⡚⡛⡜⡝⡞⡟⡠⡡⡢⡣⡤⡥⡦⡧⡨⡩⡪⡫⡬⡭⡮⡯⡰⡱⡲⡳⡴⡵⡶⡷⡸⡹⡺⡻⡼⡽⡾⡿⢀⢁⢂⢃⢄⢅⢆⢇⢈⢉⢊⢋⢌⢍⢎⢏⢐⢑⢒⢓⢔⢕⢖⢗⢘⢙⢚⢛⢜⢝⢞⢟⢠⢡⢢⢣⢤⢥⢦⢧⢨⢩⢪⢫⢬⢭⢮⢯⢰⢱⢲⢳⢴⢵⢶⢷⢸⢹⢺⢻⢼⢽⢾⢿⣀⣁⣂⣃⣄⣅⣆⣇⣈⣉⣊⣋⣌⣍⣎⣏⣐⣑⣒⣓⣔⣕⣖⣗⣘⣙⣚⣛⣜⣝⣞⣟⣠⣡⣢⣣⣤⣥⣦⣧⣨⣩⣪⣫⣬⣭⣮⣯⣰⣱⣲⣳⣴⣵⣶⣷⣸⣹⣺⣻⣼⣽⣾⣿', ',') satisfies matches($s, '^(?:\\p{IsBraillePatterns}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsBraillePatterns}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00270.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00271'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('⺀⻿,⺀⺁⺂⺃⺄⺅⺆⺇⺈⺉⺊⺋⺌⺍⺎⺏⺐⺑⺒⺓⺔⺕⺖⺗⺘⺙⺚⺛⺜⺝⺞⺟⺠⺡⺢⺣⺤⺥⺦⺧⺨⺩⺪⺫⺬⺭⺮⺯⺰⺱⺲⺳⺴⺵⺶⺷⺸⺹⺺⺻⺼⺽⺾⺿⻀⻁⻂⻃⻄⻅⻆⻇⻈⻉⻊⻋⻌⻍⻎⻏⻐⻑⻒⻓⻔⻕⻖⻗⻘⻙⻚⻛⻜⻝⻞⻟⻠⻡⻢⻣⻤⻥⻦⻧⻨⻩⻪⻫⻬⻭⻮⻯⻰⻱⻲⻳⻴⻵⻶⻷⻸⻹⻺⻻⻼⻽⻾⻿', ',') satisfies matches($s, '^(?:\\p{IsCJKRadicalsSupplement}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsCJKRadicalsSupplement}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00271.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00272'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('⼀⿟,⼀⼁⼂⼃⼄⼅⼆⼇⼈⼉⼊⼋⼌⼍⼎⼏⼐⼑⼒⼓⼔⼕⼖⼗⼘⼙⼚⼛⼜⼝⼞⼟⼠⼡⼢⼣⼤⼥⼦⼧⼨⼩⼪⼫⼬⼭⼮⼯⼰⼱⼲⼳⼴⼵⼶⼷⼸⼹⼺⼻⼼⼽⼾⼿⽀⽁⽂⽃⽄⽅⽆⽇⽈⽉⽊⽋⽌⽍⽎⽏⽐⽑⽒⽓⽔⽕⽖⽗⽘⽙⽚⽛⽜⽝⽞⽟⽠⽡⽢⽣⽤⽥⽦⽧⽨⽩⽪⽫⽬⽭⽮⽯⽰⽱⽲⽳⽴⽵⽶⽷⽸⽹⽺⽻⽼⽽⽾⽿⾀⾁⾂⾃⾄⾅⾆⾇⾈⾉⾊⾋⾌⾍⾎⾏⾐⾑⾒⾓⾔⾕⾖⾗⾘⾙⾚⾛⾜⾝⾞⾟⾠⾡⾢⾣⾤⾥⾦⾧⾨⾩⾪⾫⾬⾭⾮⾯⾰⾱⾲⾳⾴⾵⾶⾷⾸⾹⾺⾻⾼⾽⾾⾿⿀⿁⿂⿃⿄⿅⿆⿇⿈⿉⿊⿋⿌⿍⿎⿏⿐⿑⿒⿓⿔⿕⿖⿗⿘⿙⿚⿛⿜⿝⿞⿟', ',') satisfies matches($s, '^(?:\\p{IsKangxiRadicals}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsKangxiRadicals}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00272.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00273'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('⿰⿿,⿰⿱⿲⿳⿴⿵⿶⿷⿸⿹⿺⿻⿼⿽⿾⿿', ',') satisfies matches($s, '^(?:\\p{IsIdeographicDescriptionCharacters}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsIdeographicDescriptionCharacters}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00273.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00274'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('　〿,　、。〃〄々〆〇〈〉《》「」『』【】〒〓〔〕〖〗〘〙〚〛〜〝〞〟〠〡〢〣〤〥〦〧〨〩〪〭〮〯〫〬〰〱〲〳〴〵〶〷〸〹〺〻〼〽〾〿', ',') satisfies matches($s, '^(?:\\p{IsCJKSymbolsandPunctuation}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsCJKSymbolsandPunctuation}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00274.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00275'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('぀ゟ,぀ぁあぃいぅうぇえぉおかがきぎくぐけげこごさざしじすずせぜそぞただちぢっつづてでとどなにぬねのはばぱひびぴふぶぷへべぺほぼぽまみむめもゃやゅゆょよらりるれろゎわゐゑをんゔゕゖ゗゘゙゚゛゜ゝゞゟ', ',') satisfies matches($s, '^(?:\\p{IsHiragana}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsHiragana}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00275.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00276'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('゠ヿ,゠ァアィイゥウェエォオカガキギクグケゲコゴサザシジスズセゼソゾタダチヂッツヅテデトドナニヌネノハバパヒビピフブプヘベペホボポマミムメモャヤュユョヨラリルレロヮワヰヱヲンヴヵヶヷヸヹヺ・ーヽヾヿ', ',') satisfies matches($s, '^(?:\\p{IsKatakana}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsKatakana}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00276.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00277'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('㄀ㄯ,㄀㄁㄂㄃㄄ㄅㄆㄇㄈㄉㄊㄋㄌㄍㄎㄏㄐㄑㄒㄓㄔㄕㄖㄗㄘㄙㄚㄛㄜㄝㄞㄟㄠㄡㄢㄣㄤㄥㄦㄧㄨㄩㄪㄫㄬㄭㄮㄯ', ',') satisfies matches($s, '^(?:\\p{IsBopomofo}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsBopomofo}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00277.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00278'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('㄰㆏,㄰ㄱㄲㄳㄴㄵㄶㄷㄸㄹㄺㄻㄼㄽㄾㄿㅀㅁㅂㅃㅄㅅㅆㅇㅈㅉㅊㅋㅌㅍㅎㅏㅐㅑㅒㅓㅔㅕㅖㅗㅘㅙㅚㅛㅜㅝㅞㅟㅠㅡㅢㅣㅤㅥㅦㅧㅨㅩㅪㅫㅬㅭㅮㅯㅰㅱㅲㅳㅴㅵㅶㅷㅸㅹㅺㅻㅼㅽㅾㅿㆀㆁㆂㆃㆄㆅㆆㆇㆈㆉㆊㆋㆌㆍㆎ㆏', ',') satisfies matches($s, '^(?:\\p{IsHangulCompatibilityJamo}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsHangulCompatibilityJamo}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00278.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00279'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('㆐㆟,㆐㆑㆒㆓㆔㆕㆖㆗㆘㆙㆚㆛㆜㆝㆞㆟', ',') satisfies matches($s, '^(?:\\p{IsKanbun}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsKanbun}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00279.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00280'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('ㆠㆿ,ㆠㆡㆢㆣㆤㆥㆦㆧㆨㆩㆪㆫㆬㆭㆮㆯㆰㆱㆲㆳㆴㆵㆶㆷㆸㆹㆺㆻㆼㆽㆾㆿ', ',') satisfies matches($s, '^(?:\\p{IsBopomofoExtended}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsBopomofoExtended}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00280.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00281'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('㈀㋿,㈀㈁㈂㈃㈄㈅㈆㈇㈈㈉㈊㈋㈌㈍㈎㈏㈐㈑㈒㈓㈔㈕㈖㈗㈘㈙㈚㈛㈜㈝㈞㈟㈠㈡㈢㈣㈤㈥㈦㈧㈨㈩㈪㈫㈬㈭㈮㈯㈰㈱㈲㈳㈴㈵㈶㈷㈸㈹㈺㈻㈼㈽㈾㈿㉀㉁㉂㉃㉄㉅㉆㉇㉈㉉㉊㉋㉌㉍㉎㉏㉐㉑㉒㉓㉔㉕㉖㉗㉘㉙㉚㉛㉜㉝㉞㉟㉠㉡㉢㉣㉤㉥㉦㉧㉨㉩㉪㉫㉬㉭㉮㉯㉰㉱㉲㉳㉴㉵㉶㉷㉸㉹㉺㉻㉼㉽㉾㉿㊀㊁㊂㊃㊄㊅㊆㊇㊈㊉㊊㊋㊌㊍㊎㊏㊐㊑㊒㊓㊔㊕㊖㊗㊘㊙㊚㊛㊜㊝㊞㊟㊠㊡㊢㊣㊤㊥㊦㊧㊨㊩㊪㊫㊬㊭㊮㊯㊰㊱㊲㊳㊴㊵㊶㊷㊸㊹㊺㊻㊼㊽㊾㊿㋀㋁㋂㋃㋄㋅㋆㋇㋈㋉㋊㋋㋌㋍㋎㋏㋐㋑㋒㋓㋔㋕㋖㋗㋘㋙㋚㋛㋜㋝㋞㋟㋠㋡㋢㋣㋤㋥㋦㋧㋨㋩㋪㋫㋬㋭㋮㋯㋰㋱㋲㋳㋴㋵㋶㋷㋸㋹㋺㋻㋼㋽㋾㋿', ',') satisfies matches($s, '^(?:\\p{IsEnclosedCJKLettersandMonths}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsEnclosedCJKLettersandMonths}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00281.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00282'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('㌀㏿,㌀㌁㌂㌃㌄㌅㌆㌇㌈㌉㌊㌋㌌㌍㌎㌏㌐㌑㌒㌓㌔㌕㌖㌗㌘㌙㌚㌛㌜㌝㌞㌟㌠㌡㌢㌣㌤㌥㌦㌧㌨㌩㌪㌫㌬㌭㌮㌯㌰㌱㌲㌳㌴㌵㌶㌷㌸㌹㌺㌻㌼㌽㌾㌿㍀㍁㍂㍃㍄㍅㍆㍇㍈㍉㍊㍋㍌㍍㍎㍏㍐㍑㍒㍓㍔㍕㍖㍗㍘㍙㍚㍛㍜㍝㍞㍟㍠㍡㍢㍣㍤㍥㍦㍧㍨㍩㍪㍫㍬㍭㍮㍯㍰㍱㍲㍳㍴㍵㍶㍷㍸㍹㍺㍻㍼㍽㍾㍿㎀㎁㎂㎃㎄㎅㎆㎇㎈㎉㎊㎋㎌㎍㎎㎏㎐㎑㎒㎓㎔㎕㎖㎗㎘㎙㎚㎛㎜㎝㎞㎟㎠㎡㎢㎣㎤㎥㎦㎧㎨㎩㎪㎫㎬㎭㎮㎯㎰㎱㎲㎳㎴㎵㎶㎷㎸㎹㎺㎻㎼㎽㎾㎿㏀㏁㏂㏃㏄㏅㏆㏇㏈㏉㏊㏋㏌㏍㏎㏏㏐㏑㏒㏓㏔㏕㏖㏗㏘㏙㏚㏛㏜㏝㏞㏟㏠㏡㏢㏣㏤㏥㏦㏧㏨㏩㏪㏫㏬㏭㏮㏯㏰㏱㏲㏳㏴㏵㏶㏷㏸㏹㏺㏻㏼㏽㏾㏿', ',') satisfies matches($s, '^(?:\\p{IsCJKCompatibility}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsCJKCompatibility}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00282.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00283'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('㐀䶵', ',') satisfies matches($s, '^(?:\\p{IsCJKUnifiedIdeographsExtensionA}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsCJKUnifiedIdeographsExtensionA}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00283.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00284'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('一鿿,一丁丂七丄丅丆万丈三上下丌不与丏丐丑丒专且丕世丗丘丙业丛东丝丞丟丠両丢丣两严並丧丨丩个丫丬中丮丯丰丱串丳临丵丶丷丸丹为主丼丽举丿乀乁乂乃乄久乆乇么义乊之乌乍乎乏乐乑乒乓乔乕乖乗乘乙乚乛乜九乞也习乡乢乣乤乥书乧乨乩乪乫乬乭乮乯买乱乲乳乴乵乶乷乸乹乺乻乼乽乾乿亀亁亂亃亄亅了亇予争亊事二亍于亏亐云互亓五井亖亗亘亙亚些亜亝亞亟亠亡亢亣交亥亦产亨亩亪享京亭亮亯亰亱亲亳亴亵亶亷亸亹人亻亼亽亾亿什仁仂仃仄仅仆仇仈仉今介仌仍从仏仐仑仒仓仔仕他仗付仙仚仛仜仝仞仟仠仡仢代令以仦仧仨仩仪仫们仭仮仯仰仱仲仳仴仵件价仸仹仺任仼份仾仿伀企伂伃伄伅伆伇伈伉伊伋伌伍伎伏伐休伒伓伔伕伖众优伙会伛伜伝伞伟传伡伢伣伤伥伦伧伨伩伪伫伬伭伮伯估伱伲伳伴伵伶伷伸伹伺伻似伽伾伿佀佁佂佃佄佅但佇佈佉佊佋佌位低住佐佑佒体佔何佖佗佘余佚佛作佝佞佟你佡佢佣佤佥佦佧佨佩佪佫佬佭佮佯佰佱佲佳佴併佶佷佸佹佺佻佼佽佾使侀侁侂侃侄侅來侇侈侉侊例侌侍侎侏侐侑侒侓侔侕侖侗侘侙侚供侜依侞侟侠価侢侣侤侥侦侧侨侩侪侫侬侭侮侯侰侱侲侳侴侵侶侷侸侹侺侻侼侽侾便俀俁係促俄俅俆俇俈俉俊俋俌俍俎俏俐俑俒俓俔俕俖俗俘俙俚俛俜保俞俟俠信俢俣俤俥俦俧俨俩俪俫俬俭修俯俰俱俲俳俴俵俶俷俸俹俺俻俼俽俾俿倀倁倂倃倄倅倆倇倈倉倊個倌倍倎倏倐們倒倓倔倕倖倗倘候倚倛倜倝倞借倠倡倢倣値倥倦倧倨倩倪倫倬倭倮倯倰倱倲倳倴倵倶倷倸倹债倻值倽倾倿偀偁偂偃偄偅偆假偈偉偊偋偌偍偎偏偐偑偒偓偔偕偖偗偘偙做偛停偝偞偟偠偡偢偣偤健偦偧偨偩偪偫偬偭偮偯偰偱偲偳側偵偶偷偸偹偺偻偼偽偾偿傀傁傂傃傄傅傆傇傈傉傊傋傌傍傎傏傐傑傒傓傔傕傖傗傘備傚傛傜傝傞傟傠傡傢傣傤傥傦傧储傩傪傫催傭傮傯傰傱傲傳傴債傶傷傸傹傺傻傼傽傾傿僀僁僂僃僄僅僆僇僈僉僊僋僌働僎像僐僑僒僓僔僕僖僗僘僙僚僛僜僝僞僟僠僡僢僣僤僥僦僧僨僩僪僫僬僭僮僯僰僱僲僳僴僵僶僷僸價僺僻僼僽僾僿儀儁儂儃億儅儆儇儈儉儊儋儌儍儎儏儐儑儒儓儔儕儖儗儘儙儚儛儜儝儞償儠儡儢儣儤儥儦儧儨儩優儫儬儭儮儯儰儱儲儳儴儵儶儷儸儹儺儻儼儽儾儿兀允兂元兄充兆兇先光兊克兌免兎兏児兑兒兓兔兕兖兗兘兙党兛兜兝兞兟兠兡兢兣兤入兦內全兩兪八公六兮兯兰共兲关兴兵其具典兹兺养兼兽兾兿冀冁冂冃冄内円冇冈冉冊冋册再冎冏冐冑冒冓冔冕冖冗冘写冚军农冝冞冟冠冡冢冣冤冥冦冧冨冩冪冫冬冭冮冯冰冱冲决冴况冶冷冸冹冺冻冼冽冾冿净凁凂凃凄凅准凇凈凉凊凋凌凍凎减凐凑凒凓凔凕凖凗凘凙凚凛凜凝凞凟几凡凢凣凤凥処凧凨凩凪凫凬凭凮凯凰凱凲凳凴凵凶凷凸凹出击凼函凾凿刀刁刂刃刄刅分切刈刉刊刋刌刍刎刏刐刑划刓刔刕刖列刘则刚创刜初刞刟删刡刢刣判別刦刧刨利刪别刬刭刮刯到刱刲刳刴刵制刷券刹刺刻刼刽刾刿剀剁剂剃剄剅剆則剈剉削剋剌前剎剏剐剑剒剓剔剕剖剗剘剙剚剛剜剝剞剟剠剡剢剣剤剥剦剧剨剩剪剫剬剭剮副剰剱割剳剴創剶剷剸剹剺剻剼剽剾剿劀劁劂劃劄劅劆劇劈劉劊劋劌劍劎劏劐劑劒劓劔劕劖劗劘劙劚力劜劝办功加务劢劣劤劥劦劧动助努劫劬劭劮劯劰励劲劳労劵劶劷劸効劺劻劼劽劾势勀勁勂勃勄勅勆勇勈勉勊勋勌勍勎勏勐勑勒勓勔動勖勗勘務勚勛勜勝勞募勠勡勢勣勤勥勦勧勨勩勪勫勬勭勮勯勰勱勲勳勴勵勶勷勸勹勺勻勼勽勾勿匀匁匂匃匄包匆匇匈匉匊匋匌匍匎匏匐匑匒匓匔匕化北匘匙匚匛匜匝匞匟匠匡匢匣匤匥匦匧匨匩匪匫匬匭匮匯匰匱匲匳匴匵匶匷匸匹区医匼匽匾匿區十卂千卄卅卆升午卉半卋卌卍华协卐卑卒卓協单卖南単卙博卛卜卝卞卟占卡卢卣卤卥卦卧卨卩卪卫卬卭卮卯印危卲即却卵卶卷卸卹卺卻卼卽卾卿厀厁厂厃厄厅历厇厈厉厊压厌厍厎厏厐厑厒厓厔厕厖厗厘厙厚厛厜厝厞原厠厡厢厣厤厥厦厧厨厩厪厫厬厭厮厯厰厱厲厳厴厵厶厷厸厹厺去厼厽厾县叀叁参參叄叅叆叇又叉及友双反収叏叐发叒叓叔叕取受变叙叚叛叜叝叞叟叠叡叢口古句另叧叨叩只叫召叭叮可台叱史右叴叵叶号司叹叺叻叼叽叾叿吀吁吂吃各吅吆吇合吉吊吋同名后吏吐向吒吓吔吕吖吗吘吙吚君吜吝吞吟吠吡吢吣吤吥否吧吨吩吪含听吭吮启吰吱吲吳吴吵吶吷吸吹吺吻吼吽吾吿呀呁呂呃呄呅呆呇呈呉告呋呌呍呎呏呐呑呒呓呔呕呖呗员呙呚呛呜呝呞呟呠呡呢呣呤呥呦呧周呩呪呫呬呭呮呯呰呱呲味呴呵呶呷呸呹呺呻呼命呾呿咀咁咂咃咄咅咆咇咈咉咊咋和咍咎咏咐咑咒咓咔咕咖咗咘咙咚咛咜咝咞咟咠咡咢咣咤咥咦咧咨咩咪咫咬咭咮咯咰咱咲咳咴咵咶咷咸咹咺咻咼咽咾咿哀品哂哃哄哅哆哇哈哉哊哋哌响哎哏哐哑哒哓哔哕哖哗哘哙哚哛哜哝哞哟哠員哢哣哤哥哦哧哨哩哪哫哬哭哮哯哰哱哲哳哴哵哶哷哸哹哺哻哼哽哾哿唀唁唂唃唄唅唆唇唈唉唊唋唌唍唎唏唐唑唒唓唔唕唖唗唘唙唚唛唜唝唞唟唠唡唢唣唤唥唦唧唨唩唪唫唬唭售唯唰唱唲唳唴唵唶唷唸唹唺唻唼唽唾唿啀啁啂啃啄啅商啇啈啉啊啋啌啍啎問啐啑啒啓啔啕啖啗啘啙啚啛啜啝啞啟啠啡啢啣啤啥啦啧啨啩啪啫啬啭啮啯啰啱啲啳啴啵啶啷啸啹啺啻啼啽啾啿喀喁喂喃善喅喆喇喈喉喊喋喌喍喎喏喐喑喒喓喔喕喖喗喘喙喚喛喜喝喞喟喠喡喢喣喤喥喦喧喨喩喪喫喬喭單喯喰喱喲喳喴喵営喷喸喹喺喻喼喽喾喿嗀嗁嗂嗃嗄嗅嗆嗇嗈嗉嗊嗋嗌嗍嗎嗏嗐嗑嗒嗓嗔嗕嗖嗗嗘嗙嗚嗛嗜嗝嗞嗟嗠嗡嗢嗣嗤嗥嗦嗧嗨嗩嗪嗫嗬嗭嗮嗯嗰嗱嗲嗳嗴嗵嗶嗷嗸嗹嗺嗻嗼嗽嗾嗿嘀嘁嘂嘃嘄嘅嘆嘇嘈嘉嘊嘋嘌嘍嘎嘏嘐嘑嘒嘓嘔嘕嘖嘗嘘嘙嘚嘛嘜嘝嘞嘟嘠嘡嘢嘣嘤嘥嘦嘧嘨嘩嘪嘫嘬嘭嘮嘯嘰嘱嘲嘳嘴嘵嘶嘷嘸嘹嘺嘻嘼嘽嘾嘿噀噁噂噃噄噅噆噇噈噉噊噋噌噍噎噏噐噑噒噓噔噕噖噗噘噙噚噛噜噝噞噟噠噡噢噣噤噥噦噧器噩噪噫噬噭噮噯噰噱噲噳噴噵噶噷噸噹噺噻噼噽噾噿嚀嚁嚂嚃嚄嚅嚆嚇嚈嚉嚊嚋嚌嚍嚎嚏嚐嚑嚒嚓嚔嚕嚖嚗嚘嚙嚚嚛嚜嚝嚞嚟嚠嚡嚢嚣嚤嚥嚦嚧嚨嚩嚪嚫嚬嚭嚮嚯嚰嚱嚲嚳嚴嚵嚶嚷嚸嚹嚺嚻嚼嚽嚾嚿囀囁囂囃囄囅囆囇囈囉囊囋囌囍囎囏囐囑囒囓囔囕囖囗囘囙囚四囜囝回囟因囡团団囤囥囦囧囨囩囪囫囬园囮囯困囱囲図围囵囶囷囸囹固囻囼国图囿圀圁圂圃圄圅圆圇圈圉圊國圌圍圎圏圐圑園圓圔圕圖圗團圙圚圛圜圝圞土圠圡圢圣圤圥圦圧在圩圪圫圬圭圮圯地圱圲圳圴圵圶圷圸圹场圻圼圽圾圿址坁坂坃坄坅坆均坈坉坊坋坌坍坎坏坐坑坒坓坔坕坖块坘坙坚坛坜坝坞坟坠坡坢坣坤坥坦坧坨坩坪坫坬坭坮坯坰坱坲坳坴坵坶坷坸坹坺坻坼坽坾坿垀垁垂垃垄垅垆垇垈垉垊型垌垍垎垏垐垑垒垓垔垕垖垗垘垙垚垛垜垝垞垟垠垡垢垣垤垥垦垧垨垩垪垫垬垭垮垯垰垱垲垳垴垵垶垷垸垹垺垻垼垽垾垿埀埁埂埃埄埅埆埇埈埉埊埋埌埍城埏埐埑埒埓埔埕埖埗埘埙埚埛埜埝埞域埠埡埢埣埤埥埦埧埨埩埪埫埬埭埮埯埰埱埲埳埴埵埶執埸培基埻埼埽埾埿堀堁堂堃堄堅堆堇堈堉堊堋堌堍堎堏堐堑堒堓堔堕堖堗堘堙堚堛堜堝堞堟堠堡堢堣堤堥堦堧堨堩堪堫堬堭堮堯堰報堲堳場堵堶堷堸堹堺堻堼堽堾堿塀塁塂塃塄塅塆塇塈塉塊塋塌塍塎塏塐塑塒塓塔塕塖塗塘塙塚塛塜塝塞塟塠塡塢塣塤塥塦塧塨塩塪填塬塭塮塯塰塱塲塳塴塵塶塷塸塹塺塻塼塽塾塿墀墁墂境墄墅墆墇墈墉墊墋墌墍墎墏墐墑墒墓墔墕墖増墘墙墚墛墜墝增墟墠墡墢墣墤墥墦墧墨墩墪墫墬墭墮墯墰墱墲墳墴墵墶墷墸墹墺墻墼墽墾墿壀壁壂壃壄壅壆壇壈壉壊壋壌壍壎壏壐壑壒壓壔壕壖壗壘壙壚壛壜壝壞壟壠壡壢壣壤壥壦壧壨壩壪士壬壭壮壯声壱売壳壴壵壶壷壸壹壺壻壼壽壾壿夀夁夂夃处夅夆备夈変夊夋夌复夎夏夐夑夒夓夔夕外夗夘夙多夛夜夝夞够夠夡夢夣夤夥夦大夨天太夫夬夭央夯夰失夲夳头夵夶夷夸夹夺夻夼夽夾夿奀奁奂奃奄奅奆奇奈奉奊奋奌奍奎奏奐契奒奓奔奕奖套奘奙奚奛奜奝奞奟奠奡奢奣奤奥奦奧奨奩奪奫奬奭奮奯奰奱奲女奴奵奶奷奸她奺奻奼好奾奿妀妁如妃妄妅妆妇妈妉妊妋妌妍妎妏妐妑妒妓妔妕妖妗妘妙妚妛妜妝妞妟妠妡妢妣妤妥妦妧妨妩妪妫妬妭妮妯妰妱妲妳妴妵妶妷妸妹妺妻妼妽妾妿姀姁姂姃姄姅姆姇姈姉姊始姌姍姎姏姐姑姒姓委姕姖姗姘姙姚姛姜姝姞姟姠姡姢姣姤姥姦姧姨姩姪姫姬姭姮姯姰姱姲姳姴姵姶姷姸姹姺姻姼姽姾姿娀威娂娃娄娅娆娇娈娉娊娋娌娍娎娏娐娑娒娓娔娕娖娗娘娙娚娛娜娝娞娟娠娡娢娣娤娥娦娧娨娩娪娫娬娭娮娯娰娱娲娳娴娵娶娷娸娹娺娻娼娽娾娿婀婁婂婃婄婅婆婇婈婉婊婋婌婍婎婏婐婑婒婓婔婕婖婗婘婙婚婛婜婝婞婟婠婡婢婣婤婥婦婧婨婩婪婫婬婭婮婯婰婱婲婳婴婵婶婷婸婹婺婻婼婽婾婿媀媁媂媃媄媅媆媇媈媉媊媋媌媍媎媏媐媑媒媓媔媕媖媗媘媙媚媛媜媝媞媟媠媡媢媣媤媥媦媧媨媩媪媫媬媭媮媯媰媱媲媳媴媵媶媷媸媹媺媻媼媽媾媿嫀嫁嫂嫃嫄嫅嫆嫇嫈嫉嫊嫋嫌嫍嫎嫏嫐嫑嫒嫓嫔嫕嫖嫗嫘嫙嫚嫛嫜嫝嫞嫟嫠嫡嫢嫣嫤嫥嫦嫧嫨嫩嫪嫫嫬嫭嫮嫯嫰嫱嫲嫳嫴嫵嫶嫷嫸嫹嫺嫻嫼嫽嫾嫿嬀嬁嬂嬃嬄嬅嬆嬇嬈嬉嬊嬋嬌嬍嬎嬏嬐嬑嬒嬓嬔嬕嬖嬗嬘嬙嬚嬛嬜嬝嬞嬟嬠嬡嬢嬣嬤嬥嬦嬧嬨嬩嬪嬫嬬嬭嬮嬯嬰嬱嬲嬳嬴嬵嬶嬷嬸嬹嬺嬻嬼嬽嬾嬿孀孁孂孃孄孅孆孇孈孉孊孋孌孍孎孏子孑孒孓孔孕孖字存孙孚孛孜孝孞孟孠孡孢季孤孥学孧孨孩孪孫孬孭孮孯孰孱孲孳孴孵孶孷學孹孺孻孼孽孾孿宀宁宂它宄宅宆宇守安宊宋完宍宎宏宐宑宒宓宔宕宖宗官宙定宛宜宝实実宠审客宣室宥宦宧宨宩宪宫宬宭宮宯宰宱宲害宴宵家宷宸容宺宻宼宽宾宿寀寁寂寃寄寅密寇寈寉寊寋富寍寎寏寐寑寒寓寔寕寖寗寘寙寚寛寜寝寞察寠寡寢寣寤寥實寧寨審寪寫寬寭寮寯寰寱寲寳寴寵寶寷寸对寺寻导寽対寿尀封専尃射尅将將專尉尊尋尌對導小尐少尒尓尔尕尖尗尘尙尚尛尜尝尞尟尠尡尢尣尤尥尦尧尨尩尪尫尬尭尮尯尰就尲尳尴尵尶尷尸尹尺尻尼尽尾尿局屁层屃屄居屆屇屈屉届屋屌屍屎屏屐屑屒屓屔展屖屗屘屙屚屛屜屝属屟屠屡屢屣層履屦屧屨屩屪屫屬屭屮屯屰山屲屳屴屵屶屷屸屹屺屻屼屽屾屿岀岁岂岃岄岅岆岇岈岉岊岋岌岍岎岏岐岑岒岓岔岕岖岗岘岙岚岛岜岝岞岟岠岡岢岣岤岥岦岧岨岩岪岫岬岭岮岯岰岱岲岳岴岵岶岷岸岹岺岻岼岽岾岿峀峁峂峃峄峅峆峇峈峉峊峋峌峍峎峏峐峑峒峓峔峕峖峗峘峙峚峛峜峝峞峟峠峡峢峣峤峥峦峧峨峩峪峫峬峭峮峯峰峱峲峳峴峵島峷峸峹峺峻峼峽峾峿崀崁崂崃崄崅崆崇崈崉崊崋崌崍崎崏崐崑崒崓崔崕崖崗崘崙崚崛崜崝崞崟崠崡崢崣崤崥崦崧崨崩崪崫崬崭崮崯崰崱崲崳崴崵崶崷崸崹崺崻崼崽崾崿嵀嵁嵂嵃嵄嵅嵆嵇嵈嵉嵊嵋嵌嵍嵎嵏嵐嵑嵒嵓嵔嵕嵖嵗嵘嵙嵚嵛嵜嵝嵞嵟嵠嵡嵢嵣嵤嵥嵦嵧嵨嵩嵪嵫嵬嵭嵮嵯嵰嵱嵲嵳嵴嵵嵶嵷嵸嵹嵺嵻嵼嵽嵾嵿嶀嶁嶂嶃嶄嶅嶆嶇嶈嶉嶊嶋嶌嶍嶎嶏嶐嶑嶒嶓嶔嶕嶖嶗嶘嶙嶚嶛嶜嶝嶞嶟嶠嶡嶢嶣嶤嶥嶦嶧嶨嶩嶪嶫嶬嶭嶮嶯嶰嶱嶲嶳嶴嶵嶶嶷嶸嶹嶺嶻嶼嶽嶾嶿巀巁巂巃巄巅巆巇巈巉巊巋巌巍巎巏巐巑巒巓巔巕巖巗巘巙巚巛巜川州巟巠巡巢巣巤工左巧巨巩巪巫巬巭差巯巰己已巳巴巵巶巷巸巹巺巻巼巽巾巿帀币市布帄帅帆帇师帉帊帋希帍帎帏帐帑帒帓帔帕帖帗帘帙帚帛帜帝帞帟帠帡帢帣帤帥带帧帨帩帪師帬席帮帯帰帱帲帳帴帵帶帷常帹帺帻帼帽帾帿幀幁幂幃幄幅幆幇幈幉幊幋幌幍幎幏幐幑幒幓幔幕幖幗幘幙幚幛幜幝幞幟幠幡幢幣幤幥幦幧幨幩幪幫幬幭幮幯幰幱干平年幵并幷幸幹幺幻幼幽幾广庀庁庂広庄庅庆庇庈庉床庋庌庍庎序庐庑庒库应底庖店庘庙庚庛府庝庞废庠庡庢庣庤庥度座庨庩庪庫庬庭庮庯庰庱庲庳庴庵庶康庸庹庺庻庼庽庾庿廀廁廂廃廄廅廆廇廈廉廊廋廌廍廎廏廐廑廒廓廔廕廖廗廘廙廚廛廜廝廞廟廠廡廢廣廤廥廦廧廨廩廪廫廬廭廮廯廰廱廲廳廴廵延廷廸廹建廻廼廽廾廿开弁异弃弄弅弆弇弈弉弊弋弌弍弎式弐弑弒弓弔引弖弗弘弙弚弛弜弝弞弟张弡弢弣弤弥弦弧弨弩弪弫弬弭弮弯弰弱弲弳弴張弶強弸弹强弻弼弽弾弿彀彁彂彃彄彅彆彇彈彉彊彋彌彍彎彏彐彑归当彔录彖彗彘彙彚彛彜彝彞彟彠彡形彣彤彥彦彧彨彩彪彫彬彭彮彯彰影彲彳彴彵彶彷彸役彺彻彼彽彾彿往征徂徃径待徆徇很徉徊律後徍徎徏徐徑徒従徔徕徖得徘徙徚徛徜徝從徟徠御徢徣徤徥徦徧徨復循徫徬徭微徯徰徱徲徳徴徵徶德徸徹徺徻徼徽徾徿忀忁忂心忄必忆忇忈忉忊忋忌忍忎忏忐忑忒忓忔忕忖志忘忙忚忛応忝忞忟忠忡忢忣忤忥忦忧忨忩忪快忬忭忮忯忰忱忲忳忴念忶忷忸忹忺忻忼忽忾忿怀态怂怃怄怅怆怇怈怉怊怋怌怍怎怏怐怑怒怓怔怕怖怗怘怙怚怛怜思怞怟怠怡怢怣怤急怦性怨怩怪怫怬怭怮怯怰怱怲怳怴怵怶怷怸怹怺总怼怽怾怿恀恁恂恃恄恅恆恇恈恉恊恋恌恍恎恏恐恑恒恓恔恕恖恗恘恙恚恛恜恝恞恟恠恡恢恣恤恥恦恧恨恩恪恫恬恭恮息恰恱恲恳恴恵恶恷恸恹恺恻恼恽恾恿悀悁悂悃悄悅悆悇悈悉悊悋悌悍悎悏悐悑悒悓悔悕悖悗悘悙悚悛悜悝悞悟悠悡悢患悤悥悦悧您悩悪悫悬悭悮悯悰悱悲悳悴悵悶悷悸悹悺悻悼悽悾悿惀惁惂惃惄情惆惇惈惉惊惋惌惍惎惏惐惑惒惓惔惕惖惗惘惙惚惛惜惝惞惟惠惡惢惣惤惥惦惧惨惩惪惫惬惭惮惯惰惱惲想惴惵惶惷惸惹惺惻惼惽惾惿愀愁愂愃愄愅愆愇愈愉愊愋愌愍愎意愐愑愒愓愔愕愖愗愘愙愚愛愜愝愞感愠愡愢愣愤愥愦愧愨愩愪愫愬愭愮愯愰愱愲愳愴愵愶愷愸愹愺愻愼愽愾愿慀慁慂慃慄慅慆慇慈慉慊態慌慍慎慏慐慑慒慓慔慕慖慗慘慙慚慛慜慝慞慟慠慡慢慣慤慥慦慧慨慩慪慫慬慭慮慯慰慱慲慳慴慵慶慷慸慹慺慻慼慽慾慿憀憁憂憃憄憅憆憇憈憉憊憋憌憍憎憏憐憑憒憓憔憕憖憗憘憙憚憛憜憝憞憟憠憡憢憣憤憥憦憧憨憩憪憫憬憭憮憯憰憱憲憳憴憵憶憷憸憹憺憻憼憽憾憿懀懁懂懃懄懅懆懇懈應懊懋懌懍懎懏懐懑懒懓懔懕懖懗懘懙懚懛懜懝懞懟懠懡懢懣懤懥懦懧懨懩懪懫懬懭懮懯懰懱懲懳懴懵懶懷懸懹懺懻懼懽懾懿戀戁戂戃戄戅戆戇戈戉戊戋戌戍戎戏成我戒戓戔戕或戗战戙戚戛戜戝戞戟戠戡戢戣戤戥戦戧戨戩截戫戬戭戮戯戰戱戲戳戴戵戶户戸戹戺戻戼戽戾房所扁扂扃扄扅扆扇扈扉扊手扌才扎扏扐扑扒打扔払扖扗托扙扚扛扜扝扞扟扠扡扢扣扤扥扦执扨扩扪扫扬扭扮扯扰扱扲扳扴扵扶扷扸批扺扻扼扽找承技抁抂抃抄抅抆抇抈抉把抋抌抍抎抏抐抑抒抓抔投抖抗折抙抚抛抜抝択抟抠抡抢抣护报抦抧抨抩抪披抬抭抮抯抰抱抲抳抴抵抶抷抸抹抺抻押抽抾抿拀拁拂拃拄担拆拇拈拉拊拋拌拍拎拏拐拑拒拓拔拕拖拗拘拙拚招拜拝拞拟拠拡拢拣拤拥拦拧拨择拪拫括拭拮拯拰拱拲拳拴拵拶拷拸拹拺拻拼拽拾拿挀持挂挃挄挅挆指挈按挊挋挌挍挎挏挐挑挒挓挔挕挖挗挘挙挚挛挜挝挞挟挠挡挢挣挤挥挦挧挨挩挪挫挬挭挮振挰挱挲挳挴挵挶挷挸挹挺挻挼挽挾挿捀捁捂捃捄捅捆捇捈捉捊捋捌捍捎捏捐捑捒捓捔捕捖捗捘捙捚捛捜捝捞损捠捡换捣捤捥捦捧捨捩捪捫捬捭据捯捰捱捲捳捴捵捶捷捸捹捺捻捼捽捾捿掀掁掂掃掄掅掆掇授掉掊掋掌掍掎掏掐掑排掓掔掕掖掗掘掙掚掛掜掝掞掟掠採探掣掤接掦控推掩措掫掬掭掮掯掰掱掲掳掴掵掶掷掸掹掺掻掼掽掾掿揀揁揂揃揄揅揆揇揈揉揊揋揌揍揎描提揑插揓揔揕揖揗揘揙揚換揜揝揞揟揠握揢揣揤揥揦揧揨揩揪揫揬揭揮揯揰揱揲揳援揵揶揷揸揹揺揻揼揽揾揿搀搁搂搃搄搅搆搇搈搉搊搋搌損搎搏搐搑搒搓搔搕搖搗搘搙搚搛搜搝搞搟搠搡搢搣搤搥搦搧搨搩搪搫搬搭搮搯搰搱搲搳搴搵搶搷搸搹携搻搼搽搾搿摀摁摂摃摄摅摆摇摈摉摊摋摌摍摎摏摐摑摒摓摔摕摖摗摘摙摚摛摜摝摞摟摠摡摢摣摤摥摦摧摨摩摪摫摬摭摮摯摰摱摲摳摴摵摶摷摸摹摺摻摼摽摾摿撀撁撂撃撄撅撆撇撈撉撊撋撌撍撎撏撐撑撒撓撔撕撖撗撘撙撚撛撜撝撞撟撠撡撢撣撤撥撦撧撨撩撪撫撬播撮撯撰撱撲撳撴撵撶撷撸撹撺撻撼撽撾撿擀擁擂擃擄擅擆擇擈擉擊擋擌操擎擏擐擑擒擓擔擕擖擗擘擙據擛擜擝擞擟擠擡擢擣擤擥擦擧擨擩擪擫擬擭擮擯擰擱擲擳擴擵擶擷擸擹擺擻擼擽擾擿攀攁攂攃攄攅攆攇攈攉攊攋攌攍攎攏攐攑攒攓攔攕攖攗攘攙攚攛攜攝攞攟攠攡攢攣攤攥攦攧攨攩攪攫攬攭攮支攰攱攲攳攴攵收攷攸改攺攻攼攽放政敀敁敂敃敄故敆敇效敉敊敋敌敍敎敏敐救敒敓敔敕敖敗敘教敚敛敜敝敞敟敠敡敢散敤敥敦敧敨敩敪敫敬敭敮敯数敱敲敳整敵敶敷數敹敺敻敼敽敾敿斀斁斂斃斄斅斆文斈斉斊斋斌斍斎斏斐斑斒斓斔斕斖斗斘料斚斛斜斝斞斟斠斡斢斣斤斥斦斧斨斩斪斫斬断斮斯新斱斲斳斴斵斶斷斸方斺斻於施斾斿旀旁旂旃旄旅旆旇旈旉旊旋旌旍旎族旐旑旒旓旔旕旖旗旘旙旚旛旜旝旞旟无旡既旣旤日旦旧旨早旪旫旬旭旮旯旰旱旲旳旴旵时旷旸旹旺旻旼旽旾旿昀昁昂昃昄昅昆昇昈昉昊昋昌昍明昏昐昑昒易昔昕昖昗昘昙昚昛昜昝昞星映昡昢昣昤春昦昧昨昩昪昫昬昭昮是昰昱昲昳昴昵昶昷昸昹昺昻昼昽显昿晀晁時晃晄晅晆晇晈晉晊晋晌晍晎晏晐晑晒晓晔晕晖晗晘晙晚晛晜晝晞晟晠晡晢晣晤晥晦晧晨晩晪晫晬晭普景晰晱晲晳晴晵晶晷晸晹智晻晼晽晾晿暀暁暂暃暄暅暆暇暈暉暊暋暌暍暎暏暐暑暒暓暔暕暖暗暘暙暚暛暜暝暞暟暠暡暢暣暤暥暦暧暨暩暪暫暬暭暮暯暰暱暲暳暴暵暶暷暸暹暺暻暼暽暾暿曀曁曂曃曄曅曆曇曈曉曊曋曌曍曎曏曐曑曒曓曔曕曖曗曘曙曚曛曜曝曞曟曠曡曢曣曤曥曦曧曨曩曪曫曬曭曮曯曰曱曲曳更曵曶曷書曹曺曻曼曽曾替最朁朂會朄朅朆朇月有朊朋朌服朎朏朐朑朒朓朔朕朖朗朘朙朚望朜朝朞期朠朡朢朣朤朥朦朧木朩未末本札朮术朰朱朲朳朴朵朶朷朸朹机朻朼朽朾朿杀杁杂权杄杅杆杇杈杉杊杋杌杍李杏材村杒杓杔杕杖杗杘杙杚杛杜杝杞束杠条杢杣杤来杦杧杨杩杪杫杬杭杮杯杰東杲杳杴杵杶杷杸杹杺杻杼杽松板枀极枂枃构枅枆枇枈枉枊枋枌枍枎枏析枑枒枓枔枕枖林枘枙枚枛果枝枞枟枠枡枢枣枤枥枦枧枨枩枪枫枬枭枮枯枰枱枲枳枴枵架枷枸枹枺枻枼枽枾枿柀柁柂柃柄柅柆柇柈柉柊柋柌柍柎柏某柑柒染柔柕柖柗柘柙柚柛柜柝柞柟柠柡柢柣柤查柦柧柨柩柪柫柬柭柮柯柰柱柲柳柴柵柶柷柸柹柺査柼柽柾柿栀栁栂栃栄栅栆标栈栉栊栋栌栍栎栏栐树栒栓栔栕栖栗栘栙栚栛栜栝栞栟栠校栢栣栤栥栦栧栨栩株栫栬栭栮栯栰栱栲栳栴栵栶样核根栺栻格栽栾栿桀桁桂桃桄桅框桇案桉桊桋桌桍桎桏桐桑桒桓桔桕桖桗桘桙桚桛桜桝桞桟桠桡桢档桤桥桦桧桨桩桪桫桬桭桮桯桰桱桲桳桴桵桶桷桸桹桺桻桼桽桾桿梀梁梂梃梄梅梆梇梈梉梊梋梌梍梎梏梐梑梒梓梔梕梖梗梘梙梚梛梜條梞梟梠梡梢梣梤梥梦梧梨梩梪梫梬梭梮梯械梱梲梳梴梵梶梷梸梹梺梻梼梽梾梿检棁棂棃棄棅棆棇棈棉棊棋棌棍棎棏棐棑棒棓棔棕棖棗棘棙棚棛棜棝棞棟棠棡棢棣棤棥棦棧棨棩棪棫棬棭森棯棰棱棲棳棴棵棶棷棸棹棺棻棼棽棾棿椀椁椂椃椄椅椆椇椈椉椊椋椌植椎椏椐椑椒椓椔椕椖椗椘椙椚椛検椝椞椟椠椡椢椣椤椥椦椧椨椩椪椫椬椭椮椯椰椱椲椳椴椵椶椷椸椹椺椻椼椽椾椿楀楁楂楃楄楅楆楇楈楉楊楋楌楍楎楏楐楑楒楓楔楕楖楗楘楙楚楛楜楝楞楟楠楡楢楣楤楥楦楧楨楩楪楫楬業楮楯楰楱楲楳楴極楶楷楸楹楺楻楼楽楾楿榀榁概榃榄榅榆榇榈榉榊榋榌榍榎榏榐榑榒榓榔榕榖榗榘榙榚榛榜榝榞榟榠榡榢榣榤榥榦榧榨榩榪榫榬榭榮榯榰榱榲榳榴榵榶榷榸榹榺榻榼榽榾榿槀槁槂槃槄槅槆槇槈槉槊構槌槍槎槏槐槑槒槓槔槕槖槗様槙槚槛槜槝槞槟槠槡槢槣槤槥槦槧槨槩槪槫槬槭槮槯槰槱槲槳槴槵槶槷槸槹槺槻槼槽槾槿樀樁樂樃樄樅樆樇樈樉樊樋樌樍樎樏樐樑樒樓樔樕樖樗樘標樚樛樜樝樞樟樠模樢樣樤樥樦樧樨権横樫樬樭樮樯樰樱樲樳樴樵樶樷樸樹樺樻樼樽樾樿橀橁橂橃橄橅橆橇橈橉橊橋橌橍橎橏橐橑橒橓橔橕橖橗橘橙橚橛橜橝橞機橠橡橢橣橤橥橦橧橨橩橪橫橬橭橮橯橰橱橲橳橴橵橶橷橸橹橺橻橼橽橾橿檀檁檂檃檄檅檆檇檈檉檊檋檌檍檎檏檐檑檒檓檔檕檖檗檘檙檚檛檜檝檞檟檠檡檢檣檤檥檦檧檨檩檪檫檬檭檮檯檰檱檲檳檴檵檶檷檸檹檺檻檼檽檾檿櫀櫁櫂櫃櫄櫅櫆櫇櫈櫉櫊櫋櫌櫍櫎櫏櫐櫑櫒櫓櫔櫕櫖櫗櫘櫙櫚櫛櫜櫝櫞櫟櫠櫡櫢櫣櫤櫥櫦櫧櫨櫩櫪櫫櫬櫭櫮櫯櫰櫱櫲櫳櫴櫵櫶櫷櫸櫹櫺櫻櫼櫽櫾櫿欀欁欂欃欄欅欆欇欈欉權欋欌欍欎欏欐欑欒欓欔欕欖欗欘欙欚欛欜欝欞欟欠次欢欣欤欥欦欧欨欩欪欫欬欭欮欯欰欱欲欳欴欵欶欷欸欹欺欻欼欽款欿歀歁歂歃歄歅歆歇歈歉歊歋歌歍歎歏歐歑歒歓歔歕歖歗歘歙歚歛歜歝歞歟歠歡止正此步武歧歨歩歪歫歬歭歮歯歰歱歲歳歴歵歶歷歸歹歺死歼歽歾歿殀殁殂殃殄殅殆殇殈殉殊残殌殍殎殏殐殑殒殓殔殕殖殗殘殙殚殛殜殝殞殟殠殡殢殣殤殥殦殧殨殩殪殫殬殭殮殯殰殱殲殳殴段殶殷殸殹殺殻殼殽殾殿毀毁毂毃毄毅毆毇毈毉毊毋毌母毎每毐毑毒毓比毕毖毗毘毙毚毛毜毝毞毟毠毡毢毣毤毥毦毧毨毩毪毫毬毭毮毯毰毱毲毳毴毵毶毷毸毹毺毻毼毽毾毿氀氁氂氃氄氅氆氇氈氉氊氋氌氍氎氏氐民氒氓气氕氖気氘氙氚氛氜氝氞氟氠氡氢氣氤氥氦氧氨氩氪氫氬氭氮氯氰氱氲氳水氵氶氷永氹氺氻氼氽氾氿汀汁求汃汄汅汆汇汈汉汊汋汌汍汎汏汐汑汒汓汔汕汖汗汘汙汚汛汜汝汞江池污汢汣汤汥汦汧汨汩汪汫汬汭汮汯汰汱汲汳汴汵汶汷汸汹決汻汼汽汾汿沀沁沂沃沄沅沆沇沈沉沊沋沌沍沎沏沐沑沒沓沔沕沖沗沘沙沚沛沜沝沞沟沠没沢沣沤沥沦沧沨沩沪沫沬沭沮沯沰沱沲河沴沵沶沷沸油沺治沼沽沾沿泀況泂泃泄泅泆泇泈泉泊泋泌泍泎泏泐泑泒泓泔法泖泗泘泙泚泛泜泝泞泟泠泡波泣泤泥泦泧注泩泪泫泬泭泮泯泰泱泲泳泴泵泶泷泸泹泺泻泼泽泾泿洀洁洂洃洄洅洆洇洈洉洊洋洌洍洎洏洐洑洒洓洔洕洖洗洘洙洚洛洜洝洞洟洠洡洢洣洤津洦洧洨洩洪洫洬洭洮洯洰洱洲洳洴洵洶洷洸洹洺活洼洽派洿浀流浂浃浄浅浆浇浈浉浊测浌浍济浏浐浑浒浓浔浕浖浗浘浙浚浛浜浝浞浟浠浡浢浣浤浥浦浧浨浩浪浫浬浭浮浯浰浱浲浳浴浵浶海浸浹浺浻浼浽浾浿涀涁涂涃涄涅涆涇消涉涊涋涌涍涎涏涐涑涒涓涔涕涖涗涘涙涚涛涜涝涞涟涠涡涢涣涤涥润涧涨涩涪涫涬涭涮涯涰涱液涳涴涵涶涷涸涹涺涻涼涽涾涿淀淁淂淃淄淅淆淇淈淉淊淋淌淍淎淏淐淑淒淓淔淕淖淗淘淙淚淛淜淝淞淟淠淡淢淣淤淥淦淧淨淩淪淫淬淭淮淯淰深淲淳淴淵淶混淸淹淺添淼淽淾淿渀渁渂渃渄清渆渇済渉渊渋渌渍渎渏渐渑渒渓渔渕渖渗渘渙渚減渜渝渞渟渠渡渢渣渤渥渦渧渨温渪渫測渭渮港渰渱渲渳渴渵渶渷游渹渺渻渼渽渾渿湀湁湂湃湄湅湆湇湈湉湊湋湌湍湎湏湐湑湒湓湔湕湖湗湘湙湚湛湜湝湞湟湠湡湢湣湤湥湦湧湨湩湪湫湬湭湮湯湰湱湲湳湴湵湶湷湸湹湺湻湼湽湾湿満溁溂溃溄溅溆溇溈溉溊溋溌溍溎溏源溑溒溓溔溕準溗溘溙溚溛溜溝溞溟溠溡溢溣溤溥溦溧溨溩溪溫溬溭溮溯溰溱溲溳溴溵溶溷溸溹溺溻溼溽溾溿滀滁滂滃滄滅滆滇滈滉滊滋滌滍滎滏滐滑滒滓滔滕滖滗滘滙滚滛滜滝滞滟滠满滢滣滤滥滦滧滨滩滪滫滬滭滮滯滰滱滲滳滴滵滶滷滸滹滺滻滼滽滾滿漀漁漂漃漄漅漆漇漈漉漊漋漌漍漎漏漐漑漒漓演漕漖漗漘漙漚漛漜漝漞漟漠漡漢漣漤漥漦漧漨漩漪漫漬漭漮漯漰漱漲漳漴漵漶漷漸漹漺漻漼漽漾漿潀潁潂潃潄潅潆潇潈潉潊潋潌潍潎潏潐潑潒潓潔潕潖潗潘潙潚潛潜潝潞潟潠潡潢潣潤潥潦潧潨潩潪潫潬潭潮潯潰潱潲潳潴潵潶潷潸潹潺潻潼潽潾潿澀澁澂澃澄澅澆澇澈澉澊澋澌澍澎澏澐澑澒澓澔澕澖澗澘澙澚澛澜澝澞澟澠澡澢澣澤澥澦澧澨澩澪澫澬澭澮澯澰澱澲澳澴澵澶澷澸澹澺澻澼澽澾澿激濁濂濃濄濅濆濇濈濉濊濋濌濍濎濏濐濑濒濓濔濕濖濗濘濙濚濛濜濝濞濟濠濡濢濣濤濥濦濧濨濩濪濫濬濭濮濯濰濱濲濳濴濵濶濷濸濹濺濻濼濽濾濿瀀瀁瀂瀃瀄瀅瀆瀇瀈瀉瀊瀋瀌瀍瀎瀏瀐瀑瀒瀓瀔瀕瀖瀗瀘瀙瀚瀛瀜瀝瀞瀟瀠瀡瀢瀣瀤瀥瀦瀧瀨瀩瀪瀫瀬瀭瀮瀯瀰瀱瀲瀳瀴瀵瀶瀷瀸瀹瀺瀻瀼瀽瀾瀿灀灁灂灃灄灅灆灇灈灉灊灋灌灍灎灏灐灑灒灓灔灕灖灗灘灙灚灛灜灝灞灟灠灡灢灣灤灥灦灧灨灩灪火灬灭灮灯灰灱灲灳灴灵灶灷灸灹灺灻灼災灾灿炀炁炂炃炄炅炆炇炈炉炊炋炌炍炎炏炐炑炒炓炔炕炖炗炘炙炚炛炜炝炞炟炠炡炢炣炤炥炦炧炨炩炪炫炬炭炮炯炰炱炲炳炴炵炶炷炸点為炻炼炽炾炿烀烁烂烃烄烅烆烇烈烉烊烋烌烍烎烏烐烑烒烓烔烕烖烗烘烙烚烛烜烝烞烟烠烡烢烣烤烥烦烧烨烩烪烫烬热烮烯烰烱烲烳烴烵烶烷烸烹烺烻烼烽烾烿焀焁焂焃焄焅焆焇焈焉焊焋焌焍焎焏焐焑焒焓焔焕焖焗焘焙焚焛焜焝焞焟焠無焢焣焤焥焦焧焨焩焪焫焬焭焮焯焰焱焲焳焴焵然焷焸焹焺焻焼焽焾焿煀煁煂煃煄煅煆煇煈煉煊煋煌煍煎煏煐煑煒煓煔煕煖煗煘煙煚煛煜煝煞煟煠煡煢煣煤煥煦照煨煩煪煫煬煭煮煯煰煱煲煳煴煵煶煷煸煹煺煻煼煽煾煿熀熁熂熃熄熅熆熇熈熉熊熋熌熍熎熏熐熑熒熓熔熕熖熗熘熙熚熛熜熝熞熟熠熡熢熣熤熥熦熧熨熩熪熫熬熭熮熯熰熱熲熳熴熵熶熷熸熹熺熻熼熽熾熿燀燁燂燃燄燅燆燇燈燉燊燋燌燍燎燏燐燑燒燓燔燕燖燗燘燙燚燛燜燝燞營燠燡燢燣燤燥燦燧燨燩燪燫燬燭燮燯燰燱燲燳燴燵燶燷燸燹燺燻燼燽燾燿爀爁爂爃爄爅爆爇爈爉爊爋爌爍爎爏爐爑爒爓爔爕爖爗爘爙爚爛爜爝爞爟爠爡爢爣爤爥爦爧爨爩爪爫爬爭爮爯爰爱爲爳爴爵父爷爸爹爺爻爼爽爾爿牀牁牂牃牄牅牆片版牉牊牋牌牍牎牏牐牑牒牓牔牕牖牗牘牙牚牛牜牝牞牟牠牡牢牣牤牥牦牧牨物牪牫牬牭牮牯牰牱牲牳牴牵牶牷牸特牺牻牼牽牾牿犀犁犂犃犄犅犆犇犈犉犊犋犌犍犎犏犐犑犒犓犔犕犖犗犘犙犚犛犜犝犞犟犠犡犢犣犤犥犦犧犨犩犪犫犬犭犮犯犰犱犲犳犴犵状犷犸犹犺犻犼犽犾犿狀狁狂狃狄狅狆狇狈狉狊狋狌狍狎狏狐狑狒狓狔狕狖狗狘狙狚狛狜狝狞狟狠狡狢狣狤狥狦狧狨狩狪狫独狭狮狯狰狱狲狳狴狵狶狷狸狹狺狻狼狽狾狿猀猁猂猃猄猅猆猇猈猉猊猋猌猍猎猏猐猑猒猓猔猕猖猗猘猙猚猛猜猝猞猟猠猡猢猣猤猥猦猧猨猩猪猫猬猭献猯猰猱猲猳猴猵猶猷猸猹猺猻猼猽猾猿獀獁獂獃獄獅獆獇獈獉獊獋獌獍獎獏獐獑獒獓獔獕獖獗獘獙獚獛獜獝獞獟獠獡獢獣獤獥獦獧獨獩獪獫獬獭獮獯獰獱獲獳獴獵獶獷獸獹獺獻獼獽獾獿玀玁玂玃玄玅玆率玈玉玊王玌玍玎玏玐玑玒玓玔玕玖玗玘玙玚玛玜玝玞玟玠玡玢玣玤玥玦玧玨玩玪玫玬玭玮环现玱玲玳玴玵玶玷玸玹玺玻玼玽玾玿珀珁珂珃珄珅珆珇珈珉珊珋珌珍珎珏珐珑珒珓珔珕珖珗珘珙珚珛珜珝珞珟珠珡珢珣珤珥珦珧珨珩珪珫珬班珮珯珰珱珲珳珴珵珶珷珸珹珺珻珼珽現珿琀琁琂球琄琅理琇琈琉琊琋琌琍琎琏琐琑琒琓琔琕琖琗琘琙琚琛琜琝琞琟琠琡琢琣琤琥琦琧琨琩琪琫琬琭琮琯琰琱琲琳琴琵琶琷琸琹琺琻琼琽琾琿瑀瑁瑂瑃瑄瑅瑆瑇瑈瑉瑊瑋瑌瑍瑎瑏瑐瑑瑒瑓瑔瑕瑖瑗瑘瑙瑚瑛瑜瑝瑞瑟瑠瑡瑢瑣瑤瑥瑦瑧瑨瑩瑪瑫瑬瑭瑮瑯瑰瑱瑲瑳瑴瑵瑶瑷瑸瑹瑺瑻瑼瑽瑾瑿璀璁璂璃璄璅璆璇璈璉璊璋璌璍璎璏璐璑璒璓璔璕璖璗璘璙璚璛璜璝璞璟璠璡璢璣璤璥璦璧璨璩璪璫璬璭璮璯環璱璲璳璴璵璶璷璸璹璺璻璼璽璾璿瓀瓁瓂瓃瓄瓅瓆瓇瓈瓉瓊瓋瓌瓍瓎瓏瓐瓑瓒瓓瓔瓕瓖瓗瓘瓙瓚瓛瓜瓝瓞瓟瓠瓡瓢瓣瓤瓥瓦瓧瓨瓩瓪瓫瓬瓭瓮瓯瓰瓱瓲瓳瓴瓵瓶瓷瓸瓹瓺瓻瓼瓽瓾瓿甀甁甂甃甄甅甆甇甈甉甊甋甌甍甎甏甐甑甒甓甔甕甖甗甘甙甚甛甜甝甞生甠甡產産甤甥甦甧用甩甪甫甬甭甮甯田由甲申甴电甶男甸甹町画甼甽甾甿畀畁畂畃畄畅畆畇畈畉畊畋界畍畎畏畐畑畒畓畔畕畖畗畘留畚畛畜畝畞畟畠畡畢畣畤略畦畧畨畩番畫畬畭畮畯異畱畲畳畴畵當畷畸畹畺畻畼畽畾畿疀疁疂疃疄疅疆疇疈疉疊疋疌疍疎疏疐疑疒疓疔疕疖疗疘疙疚疛疜疝疞疟疠疡疢疣疤疥疦疧疨疩疪疫疬疭疮疯疰疱疲疳疴疵疶疷疸疹疺疻疼疽疾疿痀痁痂痃痄病痆症痈痉痊痋痌痍痎痏痐痑痒痓痔痕痖痗痘痙痚痛痜痝痞痟痠痡痢痣痤痥痦痧痨痩痪痫痬痭痮痯痰痱痲痳痴痵痶痷痸痹痺痻痼痽痾痿瘀瘁瘂瘃瘄瘅瘆瘇瘈瘉瘊瘋瘌瘍瘎瘏瘐瘑瘒瘓瘔瘕瘖瘗瘘瘙瘚瘛瘜瘝瘞瘟瘠瘡瘢瘣瘤瘥瘦瘧瘨瘩瘪瘫瘬瘭瘮瘯瘰瘱瘲瘳瘴瘵瘶瘷瘸瘹瘺瘻瘼瘽瘾瘿癀癁療癃癄癅癆癇癈癉癊癋癌癍癎癏癐癑癒癓癔癕癖癗癘癙癚癛癜癝癞癟癠癡癢癣癤癥癦癧癨癩癪癫癬癭癮癯癰癱癲癳癴癵癶癷癸癹発登發白百癿皀皁皂皃的皅皆皇皈皉皊皋皌皍皎皏皐皑皒皓皔皕皖皗皘皙皚皛皜皝皞皟皠皡皢皣皤皥皦皧皨皩皪皫皬皭皮皯皰皱皲皳皴皵皶皷皸皹皺皻皼皽皾皿盀盁盂盃盄盅盆盇盈盉益盋盌盍盎盏盐监盒盓盔盕盖盗盘盙盚盛盜盝盞盟盠盡盢監盤盥盦盧盨盩盪盫盬盭目盯盰盱盲盳直盵盶盷相盹盺盻盼盽盾盿眀省眂眃眄眅眆眇眈眉眊看県眍眎眏眐眑眒眓眔眕眖眗眘眙眚眛眜眝眞真眠眡眢眣眤眥眦眧眨眩眪眫眬眭眮眯眰眱眲眳眴眵眶眷眸眹眺眻眼眽眾眿着睁睂睃睄睅睆睇睈睉睊睋睌睍睎睏睐睑睒睓睔睕睖睗睘睙睚睛睜睝睞睟睠睡睢督睤睥睦睧睨睩睪睫睬睭睮睯睰睱睲睳睴睵睶睷睸睹睺睻睼睽睾睿瞀瞁瞂瞃瞄瞅瞆瞇瞈瞉瞊瞋瞌瞍瞎瞏瞐瞑瞒瞓瞔瞕瞖瞗瞘瞙瞚瞛瞜瞝瞞瞟瞠瞡瞢瞣瞤瞥瞦瞧瞨瞩瞪瞫瞬瞭瞮瞯瞰瞱瞲瞳瞴瞵瞶瞷瞸瞹瞺瞻瞼瞽瞾瞿矀矁矂矃矄矅矆矇矈矉矊矋矌矍矎矏矐矑矒矓矔矕矖矗矘矙矚矛矜矝矞矟矠矡矢矣矤知矦矧矨矩矪矫矬短矮矯矰矱矲石矴矵矶矷矸矹矺矻矼矽矾矿砀码砂砃砄砅砆砇砈砉砊砋砌砍砎砏砐砑砒砓研砕砖砗砘砙砚砛砜砝砞砟砠砡砢砣砤砥砦砧砨砩砪砫砬砭砮砯砰砱砲砳破砵砶砷砸砹砺砻砼砽砾砿础硁硂硃硄硅硆硇硈硉硊硋硌硍硎硏硐硑硒硓硔硕硖硗硘硙硚硛硜硝硞硟硠硡硢硣硤硥硦硧硨硩硪硫硬硭确硯硰硱硲硳硴硵硶硷硸硹硺硻硼硽硾硿碀碁碂碃碄碅碆碇碈碉碊碋碌碍碎碏碐碑碒碓碔碕碖碗碘碙碚碛碜碝碞碟碠碡碢碣碤碥碦碧碨碩碪碫碬碭碮碯碰碱碲碳碴碵碶碷碸碹確碻碼碽碾碿磀磁磂磃磄磅磆磇磈磉磊磋磌磍磎磏磐磑磒磓磔磕磖磗磘磙磚磛磜磝磞磟磠磡磢磣磤磥磦磧磨磩磪磫磬磭磮磯磰磱磲磳磴磵磶磷磸磹磺磻磼磽磾磿礀礁礂礃礄礅礆礇礈礉礊礋礌礍礎礏礐礑礒礓礔礕礖礗礘礙礚礛礜礝礞礟礠礡礢礣礤礥礦礧礨礩礪礫礬礭礮礯礰礱礲礳礴礵礶礷礸礹示礻礼礽社礿祀祁祂祃祄祅祆祇祈祉祊祋祌祍祎祏祐祑祒祓祔祕祖祗祘祙祚祛祜祝神祟祠祡祢祣祤祥祦祧票祩祪祫祬祭祮祯祰祱祲祳祴祵祶祷祸祹祺祻祼祽祾祿禀禁禂禃禄禅禆禇禈禉禊禋禌禍禎福禐禑禒禓禔禕禖禗禘禙禚禛禜禝禞禟禠禡禢禣禤禥禦禧禨禩禪禫禬禭禮禯禰禱禲禳禴禵禶禷禸禹禺离禼禽禾禿秀私秂秃秄秅秆秇秈秉秊秋秌种秎秏秐科秒秓秔秕秖秗秘秙秚秛秜秝秞租秠秡秢秣秤秥秦秧秨秩秪秫秬秭秮积称秱秲秳秴秵秶秷秸秹秺移秼秽秾秿稀稁稂稃稄稅稆稇稈稉稊程稌稍税稏稐稑稒稓稔稕稖稗稘稙稚稛稜稝稞稟稠稡稢稣稤稥稦稧稨稩稪稫稬稭種稯稰稱稲稳稴稵稶稷稸稹稺稻稼稽稾稿穀穁穂穃穄穅穆穇穈穉穊穋穌積穎穏穐穑穒穓穔穕穖穗穘穙穚穛穜穝穞穟穠穡穢穣穤穥穦穧穨穩穪穫穬穭穮穯穰穱穲穳穴穵究穷穸穹空穻穼穽穾穿窀突窂窃窄窅窆窇窈窉窊窋窌窍窎窏窐窑窒窓窔窕窖窗窘窙窚窛窜窝窞窟窠窡窢窣窤窥窦窧窨窩窪窫窬窭窮窯窰窱窲窳窴窵窶窷窸窹窺窻窼窽窾窿竀竁竂竃竄竅竆竇竈竉竊立竌竍竎竏竐竑竒竓竔竕竖竗竘站竚竛竜竝竞竟章竡竢竣竤童竦竧竨竩竪竫竬竭竮端竰竱竲竳竴竵競竷竸竹竺竻竼竽竾竿笀笁笂笃笄笅笆笇笈笉笊笋笌笍笎笏笐笑笒笓笔笕笖笗笘笙笚笛笜笝笞笟笠笡笢笣笤笥符笧笨笩笪笫第笭笮笯笰笱笲笳笴笵笶笷笸笹笺笻笼笽笾笿筀筁筂筃筄筅筆筇筈等筊筋筌筍筎筏筐筑筒筓答筕策筗筘筙筚筛筜筝筞筟筠筡筢筣筤筥筦筧筨筩筪筫筬筭筮筯筰筱筲筳筴筵筶筷筸筹筺筻筼筽签筿简箁箂箃箄箅箆箇箈箉箊箋箌箍箎箏箐箑箒箓箔箕箖算箘箙箚箛箜箝箞箟箠管箢箣箤箥箦箧箨箩箪箫箬箭箮箯箰箱箲箳箴箵箶箷箸箹箺箻箼箽箾箿節篁篂篃範篅篆篇篈築篊篋篌篍篎篏篐篑篒篓篔篕篖篗篘篙篚篛篜篝篞篟篠篡篢篣篤篥篦篧篨篩篪篫篬篭篮篯篰篱篲篳篴篵篶篷篸篹篺篻篼篽篾篿簀簁簂簃簄簅簆簇簈簉簊簋簌簍簎簏簐簑簒簓簔簕簖簗簘簙簚簛簜簝簞簟簠簡簢簣簤簥簦簧簨簩簪簫簬簭簮簯簰簱簲簳簴簵簶簷簸簹簺簻簼簽簾簿籀籁籂籃籄籅籆籇籈籉籊籋籌籍籎籏籐籑籒籓籔籕籖籗籘籙籚籛籜籝籞籟籠籡籢籣籤籥籦籧籨籩籪籫籬籭籮籯籰籱籲米籴籵籶籷籸籹籺类籼籽籾籿粀粁粂粃粄粅粆粇粈粉粊粋粌粍粎粏粐粑粒粓粔粕粖粗粘粙粚粛粜粝粞粟粠粡粢粣粤粥粦粧粨粩粪粫粬粭粮粯粰粱粲粳粴粵粶粷粸粹粺粻粼粽精粿糀糁糂糃糄糅糆糇糈糉糊糋糌糍糎糏糐糑糒糓糔糕糖糗糘糙糚糛糜糝糞糟糠糡糢糣糤糥糦糧糨糩糪糫糬糭糮糯糰糱糲糳糴糵糶糷糸糹糺系糼糽糾糿紀紁紂紃約紅紆紇紈紉紊紋紌納紎紏紐紑紒紓純紕紖紗紘紙級紛紜紝紞紟素紡索紣紤紥紦紧紨紩紪紫紬紭紮累細紱紲紳紴紵紶紷紸紹紺紻紼紽紾紿絀絁終絃組絅絆絇絈絉絊絋経絍絎絏結絑絒絓絔絕絖絗絘絙絚絛絜絝絞絟絠絡絢絣絤絥給絧絨絩絪絫絬絭絮絯絰統絲絳絴絵絶絷絸絹絺絻絼絽絾絿綀綁綂綃綄綅綆綇綈綉綊綋綌綍綎綏綐綑綒經綔綕綖綗綘継続綛綜綝綞綟綠綡綢綣綤綥綦綧綨綩綪綫綬維綮綯綰綱網綳綴綵綶綷綸綹綺綻綼綽綾綿緀緁緂緃緄緅緆緇緈緉緊緋緌緍緎総緐緑緒緓緔緕緖緗緘緙線緛緜緝緞緟締緡緢緣緤緥緦緧編緩緪緫緬緭緮緯緰緱緲緳練緵緶緷緸緹緺緻緼緽緾緿縀縁縂縃縄縅縆縇縈縉縊縋縌縍縎縏縐縑縒縓縔縕縖縗縘縙縚縛縜縝縞縟縠縡縢縣縤縥縦縧縨縩縪縫縬縭縮縯縰縱縲縳縴縵縶縷縸縹縺縻縼總績縿繀繁繂繃繄繅繆繇繈繉繊繋繌繍繎繏繐繑繒繓織繕繖繗繘繙繚繛繜繝繞繟繠繡繢繣繤繥繦繧繨繩繪繫繬繭繮繯繰繱繲繳繴繵繶繷繸繹繺繻繼繽繾繿纀纁纂纃纄纅纆纇纈纉纊纋續纍纎纏纐纑纒纓纔纕纖纗纘纙纚纛纜纝纞纟纠纡红纣纤纥约级纨纩纪纫纬纭纮纯纰纱纲纳纴纵纶纷纸纹纺纻纼纽纾线绀绁绂练组绅细织终绉绊绋绌绍绎经绐绑绒结绔绕绖绗绘给绚绛络绝绞统绠绡绢绣绤绥绦继绨绩绪绫绬续绮绯绰绱绲绳维绵绶绷绸绹绺绻综绽绾绿缀缁缂缃缄缅缆缇缈缉缊缋缌缍缎缏缐缑缒缓缔缕编缗缘缙缚缛缜缝缞缟缠缡缢缣缤缥缦缧缨缩缪缫缬缭缮缯缰缱缲缳缴缵缶缷缸缹缺缻缼缽缾缿罀罁罂罃罄罅罆罇罈罉罊罋罌罍罎罏罐网罒罓罔罕罖罗罘罙罚罛罜罝罞罟罠罡罢罣罤罥罦罧罨罩罪罫罬罭置罯罰罱署罳罴罵罶罷罸罹罺罻罼罽罾罿羀羁羂羃羄羅羆羇羈羉羊羋羌羍美羏羐羑羒羓羔羕羖羗羘羙羚羛羜羝羞羟羠羡羢羣群羥羦羧羨義羪羫羬羭羮羯羰羱羲羳羴羵羶羷羸羹羺羻羼羽羾羿翀翁翂翃翄翅翆翇翈翉翊翋翌翍翎翏翐翑習翓翔翕翖翗翘翙翚翛翜翝翞翟翠翡翢翣翤翥翦翧翨翩翪翫翬翭翮翯翰翱翲翳翴翵翶翷翸翹翺翻翼翽翾翿耀老耂考耄者耆耇耈耉耊耋而耍耎耏耐耑耒耓耔耕耖耗耘耙耚耛耜耝耞耟耠耡耢耣耤耥耦耧耨耩耪耫耬耭耮耯耰耱耲耳耴耵耶耷耸耹耺耻耼耽耾耿聀聁聂聃聄聅聆聇聈聉聊聋职聍聎聏聐聑聒聓联聕聖聗聘聙聚聛聜聝聞聟聠聡聢聣聤聥聦聧聨聩聪聫聬聭聮聯聰聱聲聳聴聵聶職聸聹聺聻聼聽聾聿肀肁肂肃肄肅肆肇肈肉肊肋肌肍肎肏肐肑肒肓肔肕肖肗肘肙肚肛肜肝肞肟肠股肢肣肤肥肦肧肨肩肪肫肬肭肮肯肰肱育肳肴肵肶肷肸肹肺肻肼肽肾肿胀胁胂胃胄胅胆胇胈胉胊胋背胍胎胏胐胑胒胓胔胕胖胗胘胙胚胛胜胝胞胟胠胡胢胣胤胥胦胧胨胩胪胫胬胭胮胯胰胱胲胳胴胵胶胷胸胹胺胻胼能胾胿脀脁脂脃脄脅脆脇脈脉脊脋脌脍脎脏脐脑脒脓脔脕脖脗脘脙脚脛脜脝脞脟脠脡脢脣脤脥脦脧脨脩脪脫脬脭脮脯脰脱脲脳脴脵脶脷脸脹脺脻脼脽脾脿腀腁腂腃腄腅腆腇腈腉腊腋腌腍腎腏腐腑腒腓腔腕腖腗腘腙腚腛腜腝腞腟腠腡腢腣腤腥腦腧腨腩腪腫腬腭腮腯腰腱腲腳腴腵腶腷腸腹腺腻腼腽腾腿膀膁膂膃膄膅膆膇膈膉膊膋膌膍膎膏膐膑膒膓膔膕膖膗膘膙膚膛膜膝膞膟膠膡膢膣膤膥膦膧膨膩膪膫膬膭膮膯膰膱膲膳膴膵膶膷膸膹膺膻膼膽膾膿臀臁臂臃臄臅臆臇臈臉臊臋臌臍臎臏臐臑臒臓臔臕臖臗臘臙臚臛臜臝臞臟臠臡臢臣臤臥臦臧臨臩自臫臬臭臮臯臰臱臲至致臵臶臷臸臹臺臻臼臽臾臿舀舁舂舃舄舅舆與興舉舊舋舌舍舎舏舐舑舒舓舔舕舖舗舘舙舚舛舜舝舞舟舠舡舢舣舤舥舦舧舨舩航舫般舭舮舯舰舱舲舳舴舵舶舷舸船舺舻舼舽舾舿艀艁艂艃艄艅艆艇艈艉艊艋艌艍艎艏艐艑艒艓艔艕艖艗艘艙艚艛艜艝艞艟艠艡艢艣艤艥艦艧艨艩艪艫艬艭艮良艰艱色艳艴艵艶艷艸艹艺艻艼艽艾艿芀芁节芃芄芅芆芇芈芉芊芋芌芍芎芏芐芑芒芓芔芕芖芗芘芙芚芛芜芝芞芟芠芡芢芣芤芥芦芧芨芩芪芫芬芭芮芯芰花芲芳芴芵芶芷芸芹芺芻芼芽芾芿苀苁苂苃苄苅苆苇苈苉苊苋苌苍苎苏苐苑苒苓苔苕苖苗苘苙苚苛苜苝苞苟苠苡苢苣苤若苦苧苨苩苪苫苬苭苮苯苰英苲苳苴苵苶苷苸苹苺苻苼苽苾苿茀茁茂范茄茅茆茇茈茉茊茋茌茍茎茏茐茑茒茓茔茕茖茗茘茙茚茛茜茝茞茟茠茡茢茣茤茥茦茧茨茩茪茫茬茭茮茯茰茱茲茳茴茵茶茷茸茹茺茻茼茽茾茿荀荁荂荃荄荅荆荇荈草荊荋荌荍荎荏荐荑荒荓荔荕荖荗荘荙荚荛荜荝荞荟荠荡荢荣荤荥荦荧荨荩荪荫荬荭荮药荰荱荲荳荴荵荶荷荸荹荺荻荼荽荾荿莀莁莂莃莄莅莆莇莈莉莊莋莌莍莎莏莐莑莒莓莔莕莖莗莘莙莚莛莜莝莞莟莠莡莢莣莤莥莦莧莨莩莪莫莬莭莮莯莰莱莲莳莴莵莶获莸莹莺莻莼莽莾莿菀菁菂菃菄菅菆菇菈菉菊菋菌菍菎菏菐菑菒菓菔菕菖菗菘菙菚菛菜菝菞菟菠菡菢菣菤菥菦菧菨菩菪菫菬菭菮華菰菱菲菳菴菵菶菷菸菹菺菻菼菽菾菿萀萁萂萃萄萅萆萇萈萉萊萋萌萍萎萏萐萑萒萓萔萕萖萗萘萙萚萛萜萝萞萟萠萡萢萣萤营萦萧萨萩萪萫萬萭萮萯萰萱萲萳萴萵萶萷萸萹萺萻萼落萾萿葀葁葂葃葄葅葆葇葈葉葊葋葌葍葎葏葐葑葒葓葔葕葖著葘葙葚葛葜葝葞葟葠葡葢董葤葥葦葧葨葩葪葫葬葭葮葯葰葱葲葳葴葵葶葷葸葹葺葻葼葽葾葿蒀蒁蒂蒃蒄蒅蒆蒇蒈蒉蒊蒋蒌蒍蒎蒏蒐蒑蒒蒓蒔蒕蒖蒗蒘蒙蒚蒛蒜蒝蒞蒟蒠蒡蒢蒣蒤蒥蒦蒧蒨蒩蒪蒫蒬蒭蒮蒯蒰蒱蒲蒳蒴蒵蒶蒷蒸蒹蒺蒻蒼蒽蒾蒿蓀蓁蓂蓃蓄蓅蓆蓇蓈蓉蓊蓋蓌蓍蓎蓏蓐蓑蓒蓓蓔蓕蓖蓗蓘蓙蓚蓛蓜蓝蓞蓟蓠蓡蓢蓣蓤蓥蓦蓧蓨蓩蓪蓫蓬蓭蓮蓯蓰蓱蓲蓳蓴蓵蓶蓷蓸蓹蓺蓻蓼蓽蓾蓿蔀蔁蔂蔃蔄蔅蔆蔇蔈蔉蔊蔋蔌蔍蔎蔏蔐蔑蔒蔓蔔蔕蔖蔗蔘蔙蔚蔛蔜蔝蔞蔟蔠蔡蔢蔣蔤蔥蔦蔧蔨蔩蔪蔫蔬蔭蔮蔯蔰蔱蔲蔳蔴蔵蔶蔷蔸蔹蔺蔻蔼蔽蔾蔿蕀蕁蕂蕃蕄蕅蕆蕇蕈蕉蕊蕋蕌蕍蕎蕏蕐蕑蕒蕓蕔蕕蕖蕗蕘蕙蕚蕛蕜蕝蕞蕟蕠蕡蕢蕣蕤蕥蕦蕧蕨蕩蕪蕫蕬蕭蕮蕯蕰蕱蕲蕳蕴蕵蕶蕷蕸蕹蕺蕻蕼蕽蕾蕿薀薁薂薃薄薅薆薇薈薉薊薋薌薍薎薏薐薑薒薓薔薕薖薗薘薙薚薛薜薝薞薟薠薡薢薣薤薥薦薧薨薩薪薫薬薭薮薯薰薱薲薳薴薵薶薷薸薹薺薻薼薽薾薿藀藁藂藃藄藅藆藇藈藉藊藋藌藍藎藏藐藑藒藓藔藕藖藗藘藙藚藛藜藝藞藟藠藡藢藣藤藥藦藧藨藩藪藫藬藭藮藯藰藱藲藳藴藵藶藷藸藹藺藻藼藽藾藿蘀蘁蘂蘃蘄蘅蘆蘇蘈蘉蘊蘋蘌蘍蘎蘏蘐蘑蘒蘓蘔蘕蘖蘗蘘蘙蘚蘛蘜蘝蘞蘟蘠蘡蘢蘣蘤蘥蘦蘧蘨蘩蘪蘫蘬蘭蘮蘯蘰蘱蘲蘳蘴蘵蘶蘷蘸蘹蘺蘻蘼蘽蘾蘿虀虁虂虃虄虅虆虇虈虉虊虋虌虍虎虏虐虑虒虓虔處虖虗虘虙虚虛虜虝虞號虠虡虢虣虤虥虦虧虨虩虪虫虬虭虮虯虰虱虲虳虴虵虶虷虸虹虺虻虼虽虾虿蚀蚁蚂蚃蚄蚅蚆蚇蚈蚉蚊蚋蚌蚍蚎蚏蚐蚑蚒蚓蚔蚕蚖蚗蚘蚙蚚蚛蚜蚝蚞蚟蚠蚡蚢蚣蚤蚥蚦蚧蚨蚩蚪蚫蚬蚭蚮蚯蚰蚱蚲蚳蚴蚵蚶蚷蚸蚹蚺蚻蚼蚽蚾蚿蛀蛁蛂蛃蛄蛅蛆蛇蛈蛉蛊蛋蛌蛍蛎蛏蛐蛑蛒蛓蛔蛕蛖蛗蛘蛙蛚蛛蛜蛝蛞蛟蛠蛡蛢蛣蛤蛥蛦蛧蛨蛩蛪蛫蛬蛭蛮蛯蛰蛱蛲蛳蛴蛵蛶蛷蛸蛹蛺蛻蛼蛽蛾蛿蜀蜁蜂蜃蜄蜅蜆蜇蜈蜉蜊蜋蜌蜍蜎蜏蜐蜑蜒蜓蜔蜕蜖蜗蜘蜙蜚蜛蜜蜝蜞蜟蜠蜡蜢蜣蜤蜥蜦蜧蜨蜩蜪蜫蜬蜭蜮蜯蜰蜱蜲蜳蜴蜵蜶蜷蜸蜹蜺蜻蜼蜽蜾蜿蝀蝁蝂蝃蝄蝅蝆蝇蝈蝉蝊蝋蝌蝍蝎蝏蝐蝑蝒蝓蝔蝕蝖蝗蝘蝙蝚蝛蝜蝝蝞蝟蝠蝡蝢蝣蝤蝥蝦蝧蝨蝩蝪蝫蝬蝭蝮蝯蝰蝱蝲蝳蝴蝵蝶蝷蝸蝹蝺蝻蝼蝽蝾蝿螀螁螂螃螄螅螆螇螈螉螊螋螌融螎螏螐螑螒螓螔螕螖螗螘螙螚螛螜螝螞螟螠螡螢螣螤螥螦螧螨螩螪螫螬螭螮螯螰螱螲螳螴螵螶螷螸螹螺螻螼螽螾螿蟀蟁蟂蟃蟄蟅蟆蟇蟈蟉蟊蟋蟌蟍蟎蟏蟐蟑蟒蟓蟔蟕蟖蟗蟘蟙蟚蟛蟜蟝蟞蟟蟠蟡蟢蟣蟤蟥蟦蟧蟨蟩蟪蟫蟬蟭蟮蟯蟰蟱蟲蟳蟴蟵蟶蟷蟸蟹蟺蟻蟼蟽蟾蟿蠀蠁蠂蠃蠄蠅蠆蠇蠈蠉蠊蠋蠌蠍蠎蠏蠐蠑蠒蠓蠔蠕蠖蠗蠘蠙蠚蠛蠜蠝蠞蠟蠠蠡蠢蠣蠤蠥蠦蠧蠨蠩蠪蠫蠬蠭蠮蠯蠰蠱蠲蠳蠴蠵蠶蠷蠸蠹蠺蠻蠼蠽蠾蠿血衁衂衃衄衅衆衇衈衉衊衋行衍衎衏衐衑衒術衔衕衖街衘衙衚衛衜衝衞衟衠衡衢衣衤补衦衧表衩衪衫衬衭衮衯衰衱衲衳衴衵衶衷衸衹衺衻衼衽衾衿袀袁袂袃袄袅袆袇袈袉袊袋袌袍袎袏袐袑袒袓袔袕袖袗袘袙袚袛袜袝袞袟袠袡袢袣袤袥袦袧袨袩袪被袬袭袮袯袰袱袲袳袴袵袶袷袸袹袺袻袼袽袾袿裀裁裂裃裄装裆裇裈裉裊裋裌裍裎裏裐裑裒裓裔裕裖裗裘裙裚裛補裝裞裟裠裡裢裣裤裥裦裧裨裩裪裫裬裭裮裯裰裱裲裳裴裵裶裷裸裹裺裻裼製裾裿褀褁褂褃褄褅褆複褈褉褊褋褌褍褎褏褐褑褒褓褔褕褖褗褘褙褚褛褜褝褞褟褠褡褢褣褤褥褦褧褨褩褪褫褬褭褮褯褰褱褲褳褴褵褶褷褸褹褺褻褼褽褾褿襀襁襂襃襄襅襆襇襈襉襊襋襌襍襎襏襐襑襒襓襔襕襖襗襘襙襚襛襜襝襞襟襠襡襢襣襤襥襦襧襨襩襪襫襬襭襮襯襰襱襲襳襴襵襶襷襸襹襺襻襼襽襾西覀要覂覃覄覅覆覇覈覉覊見覌覍覎規覐覑覒覓覔覕視覗覘覙覚覛覜覝覞覟覠覡覢覣覤覥覦覧覨覩親覫覬覭覮覯覰覱覲観覴覵覶覷覸覹覺覻覼覽覾覿觀见观觃规觅视觇览觉觊觋觌觍觎觏觐觑角觓觔觕觖觗觘觙觚觛觜觝觞觟觠觡觢解觤觥触觧觨觩觪觫觬觭觮觯觰觱觲觳觴觵觶觷觸觹觺觻觼觽觾觿言訁訂訃訄訅訆訇計訉訊訋訌訍討訏訐訑訒訓訔訕訖託記訙訚訛訜訝訞訟訠訡訢訣訤訥訦訧訨訩訪訫訬設訮訯訰許訲訳訴訵訶訷訸訹診註証訽訾訿詀詁詂詃詄詅詆詇詈詉詊詋詌詍詎詏詐詑詒詓詔評詖詗詘詙詚詛詜詝詞詟詠詡詢詣詤詥試詧詨詩詪詫詬詭詮詯詰話該詳詴詵詶詷詸詹詺詻詼詽詾詿誀誁誂誃誄誅誆誇誈誉誊誋誌認誎誏誐誑誒誓誔誕誖誗誘誙誚誛誜誝語誟誠誡誢誣誤誥誦誧誨誩說誫説読誮誯誰誱課誳誴誵誶誷誸誹誺誻誼誽誾調諀諁諂諃諄諅諆談諈諉諊請諌諍諎諏諐諑諒諓諔諕論諗諘諙諚諛諜諝諞諟諠諡諢諣諤諥諦諧諨諩諪諫諬諭諮諯諰諱諲諳諴諵諶諷諸諹諺諻諼諽諾諿謀謁謂謃謄謅謆謇謈謉謊謋謌謍謎謏謐謑謒謓謔謕謖謗謘謙謚講謜謝謞謟謠謡謢謣謤謥謦謧謨謩謪謫謬謭謮謯謰謱謲謳謴謵謶謷謸謹謺謻謼謽謾謿譀譁譂譃譄譅譆譇譈證譊譋譌譍譎譏譐譑譒譓譔譕譖譗識譙譚譛譜譝譞譟譠譡譢譣譤譥警譧譨譩譪譫譬譭譮譯議譱譲譳譴譵譶護譸譹譺譻譼譽譾譿讀讁讂讃讄讅讆讇讈讉變讋讌讍讎讏讐讑讒讓讔讕讖讗讘讙讚讛讜讝讞讟讠计订讣认讥讦讧讨让讪讫讬训议讯记讱讲讳讴讵讶讷许讹论讻讼讽设访诀证诂诃评诅识诇诈诉诊诋诌词诎诏诐译诒诓诔试诖诗诘诙诚诛诜话诞诟诠诡询诣诤该详诧诨诩诪诫诬语诮误诰诱诲诳说诵诶请诸诹诺读诼诽课诿谀谁谂调谄谅谆谇谈谉谊谋谌谍谎谏谐谑谒谓谔谕谖谗谘谙谚谛谜谝谞谟谠谡谢谣谤谥谦谧谨谩谪谫谬谭谮谯谰谱谲谳谴谵谶谷谸谹谺谻谼谽谾谿豀豁豂豃豄豅豆豇豈豉豊豋豌豍豎豏豐豑豒豓豔豕豖豗豘豙豚豛豜豝豞豟豠象豢豣豤豥豦豧豨豩豪豫豬豭豮豯豰豱豲豳豴豵豶豷豸豹豺豻豼豽豾豿貀貁貂貃貄貅貆貇貈貉貊貋貌貍貎貏貐貑貒貓貔貕貖貗貘貙貚貛貜貝貞貟負財貢貣貤貥貦貧貨販貪貫責貭貮貯貰貱貲貳貴貵貶買貸貹貺費貼貽貾貿賀賁賂賃賄賅賆資賈賉賊賋賌賍賎賏賐賑賒賓賔賕賖賗賘賙賚賛賜賝賞賟賠賡賢賣賤賥賦賧賨賩質賫賬賭賮賯賰賱賲賳賴賵賶賷賸賹賺賻購賽賾賿贀贁贂贃贄贅贆贇贈贉贊贋贌贍贎贏贐贑贒贓贔贕贖贗贘贙贚贛贜贝贞负贠贡财责贤败账货质贩贪贫贬购贮贯贰贱贲贳贴贵贶贷贸费贺贻贼贽贾贿赀赁赂赃资赅赆赇赈赉赊赋赌赍赎赏赐赑赒赓赔赕赖赗赘赙赚赛赜赝赞赟赠赡赢赣赤赥赦赧赨赩赪赫赬赭赮赯走赱赲赳赴赵赶起赸赹赺赻赼赽赾赿趀趁趂趃趄超趆趇趈趉越趋趌趍趎趏趐趑趒趓趔趕趖趗趘趙趚趛趜趝趞趟趠趡趢趣趤趥趦趧趨趩趪趫趬趭趮趯趰趱趲足趴趵趶趷趸趹趺趻趼趽趾趿跀跁跂跃跄跅跆跇跈跉跊跋跌跍跎跏跐跑跒跓跔跕跖跗跘跙跚跛跜距跞跟跠跡跢跣跤跥跦跧跨跩跪跫跬跭跮路跰跱跲跳跴践跶跷跸跹跺跻跼跽跾跿踀踁踂踃踄踅踆踇踈踉踊踋踌踍踎踏踐踑踒踓踔踕踖踗踘踙踚踛踜踝踞踟踠踡踢踣踤踥踦踧踨踩踪踫踬踭踮踯踰踱踲踳踴踵踶踷踸踹踺踻踼踽踾踿蹀蹁蹂蹃蹄蹅蹆蹇蹈蹉蹊蹋蹌蹍蹎蹏蹐蹑蹒蹓蹔蹕蹖蹗蹘蹙蹚蹛蹜蹝蹞蹟蹠蹡蹢蹣蹤蹥蹦蹧蹨蹩蹪蹫蹬蹭蹮蹯蹰蹱蹲蹳蹴蹵蹶蹷蹸蹹蹺蹻蹼蹽蹾蹿躀躁躂躃躄躅躆躇躈躉躊躋躌躍躎躏躐躑躒躓躔躕躖躗躘躙躚躛躜躝躞躟躠躡躢躣躤躥躦躧躨躩躪身躬躭躮躯躰躱躲躳躴躵躶躷躸躹躺躻躼躽躾躿軀軁軂軃軄軅軆軇軈軉車軋軌軍軎軏軐軑軒軓軔軕軖軗軘軙軚軛軜軝軞軟軠軡転軣軤軥軦軧軨軩軪軫軬軭軮軯軰軱軲軳軴軵軶軷軸軹軺軻軼軽軾軿輀輁輂較輄輅輆輇輈載輊輋輌輍輎輏輐輑輒輓輔輕輖輗輘輙輚輛輜輝輞輟輠輡輢輣輤輥輦輧輨輩輪輫輬輭輮輯輰輱輲輳輴輵輶輷輸輹輺輻輼輽輾輿轀轁轂轃轄轅轆轇轈轉轊轋轌轍轎轏轐轑轒轓轔轕轖轗轘轙轚轛轜轝轞轟轠轡轢轣轤轥车轧轨轩轪轫转轭轮软轰轱轲轳轴轵轶轷轸轹轺轻轼载轾轿辀辁辂较辄辅辆辇辈辉辊辋辌辍辎辏辐辑辒输辔辕辖辗辘辙辚辛辜辝辞辟辠辡辢辣辤辥辦辧辨辩辪辫辬辭辮辯辰辱農辳辴辵辶辷辸边辺辻込辽达辿迀迁迂迃迄迅迆过迈迉迊迋迌迍迎迏运近迒迓返迕迖迗还这迚进远违连迟迠迡迢迣迤迥迦迧迨迩迪迫迬迭迮迯述迱迲迳迴迵迶迷迸迹迺迻迼追迾迿退送适逃逄逅逆逇逈选逊逋逌逍逎透逐逑递逓途逕逖逗逘這通逛逜逝逞速造逡逢連逤逥逦逧逨逩逪逫逬逭逮逯逰週進逳逴逵逶逷逸逹逺逻逼逽逾逿遀遁遂遃遄遅遆遇遈遉遊運遌遍過遏遐遑遒道達違遖遗遘遙遚遛遜遝遞遟遠遡遢遣遤遥遦遧遨適遪遫遬遭遮遯遰遱遲遳遴遵遶遷選遹遺遻遼遽遾避邀邁邂邃還邅邆邇邈邉邊邋邌邍邎邏邐邑邒邓邔邕邖邗邘邙邚邛邜邝邞邟邠邡邢那邤邥邦邧邨邩邪邫邬邭邮邯邰邱邲邳邴邵邶邷邸邹邺邻邼邽邾邿郀郁郂郃郄郅郆郇郈郉郊郋郌郍郎郏郐郑郒郓郔郕郖郗郘郙郚郛郜郝郞郟郠郡郢郣郤郥郦郧部郩郪郫郬郭郮郯郰郱郲郳郴郵郶郷郸郹郺郻郼都郾郿鄀鄁鄂鄃鄄鄅鄆鄇鄈鄉鄊鄋鄌鄍鄎鄏鄐鄑鄒鄓鄔鄕鄖鄗鄘鄙鄚鄛鄜鄝鄞鄟鄠鄡鄢鄣鄤鄥鄦鄧鄨鄩鄪鄫鄬鄭鄮鄯鄰鄱鄲鄳鄴鄵鄶鄷鄸鄹鄺鄻鄼鄽鄾鄿酀酁酂酃酄酅酆酇酈酉酊酋酌配酎酏酐酑酒酓酔酕酖酗酘酙酚酛酜酝酞酟酠酡酢酣酤酥酦酧酨酩酪酫酬酭酮酯酰酱酲酳酴酵酶酷酸酹酺酻酼酽酾酿醀醁醂醃醄醅醆醇醈醉醊醋醌醍醎醏醐醑醒醓醔醕醖醗醘醙醚醛醜醝醞醟醠醡醢醣醤醥醦醧醨醩醪醫醬醭醮醯醰醱醲醳醴醵醶醷醸醹醺醻醼醽醾醿釀釁釂釃釄釅釆采釈釉释釋里重野量釐金釒釓釔釕釖釗釘釙釚釛釜針釞釟釠釡釢釣釤釥釦釧釨釩釪釫釬釭釮釯釰釱釲釳釴釵釶釷釸釹釺釻釼釽釾釿鈀鈁鈂鈃鈄鈅鈆鈇鈈鈉鈊鈋鈌鈍鈎鈏鈐鈑鈒鈓鈔鈕鈖鈗鈘鈙鈚鈛鈜鈝鈞鈟鈠鈡鈢鈣鈤鈥鈦鈧鈨鈩鈪鈫鈬鈭鈮鈯鈰鈱鈲鈳鈴鈵鈶鈷鈸鈹鈺鈻鈼鈽鈾鈿鉀鉁鉂鉃鉄鉅鉆鉇鉈鉉鉊鉋鉌鉍鉎鉏鉐鉑鉒鉓鉔鉕鉖鉗鉘鉙鉚鉛鉜鉝鉞鉟鉠鉡鉢鉣鉤鉥鉦鉧鉨鉩鉪鉫鉬鉭鉮鉯鉰鉱鉲鉳鉴鉵鉶鉷鉸鉹鉺鉻鉼鉽鉾鉿銀銁銂銃銄銅銆銇銈銉銊銋銌銍銎銏銐銑銒銓銔銕銖銗銘銙銚銛銜銝銞銟銠銡銢銣銤銥銦銧銨銩銪銫銬銭銮銯銰銱銲銳銴銵銶銷銸銹銺銻銼銽銾銿鋀鋁鋂鋃鋄鋅鋆鋇鋈鋉鋊鋋鋌鋍鋎鋏鋐鋑鋒鋓鋔鋕鋖鋗鋘鋙鋚鋛鋜鋝鋞鋟鋠鋡鋢鋣鋤鋥鋦鋧鋨鋩鋪鋫鋬鋭鋮鋯鋰鋱鋲鋳鋴鋵鋶鋷鋸鋹鋺鋻鋼鋽鋾鋿錀錁錂錃錄錅錆錇錈錉錊錋錌錍錎錏錐錑錒錓錔錕錖錗錘錙錚錛錜錝錞錟錠錡錢錣錤錥錦錧錨錩錪錫錬錭錮錯錰錱録錳錴錵錶錷錸錹錺錻錼錽錾錿鍀鍁鍂鍃鍄鍅鍆鍇鍈鍉鍊鍋鍌鍍鍎鍏鍐鍑鍒鍓鍔鍕鍖鍗鍘鍙鍚鍛鍜鍝鍞鍟鍠鍡鍢鍣鍤鍥鍦鍧鍨鍩鍪鍫鍬鍭鍮鍯鍰鍱鍲鍳鍴鍵鍶鍷鍸鍹鍺鍻鍼鍽鍾鍿鎀鎁鎂鎃鎄鎅鎆鎇鎈鎉鎊鎋鎌鎍鎎鎏鎐鎑鎒鎓鎔鎕鎖鎗鎘鎙鎚鎛鎜鎝鎞鎟鎠鎡鎢鎣鎤鎥鎦鎧鎨鎩鎪鎫鎬鎭鎮鎯鎰鎱鎲鎳鎴鎵鎶鎷鎸鎹鎺鎻鎼鎽鎾鎿鏀鏁鏂鏃鏄鏅鏆鏇鏈鏉鏊鏋鏌鏍鏎鏏鏐鏑鏒鏓鏔鏕鏖鏗鏘鏙鏚鏛鏜鏝鏞鏟鏠鏡鏢鏣鏤鏥鏦鏧鏨鏩鏪鏫鏬鏭鏮鏯鏰鏱鏲鏳鏴鏵鏶鏷鏸鏹鏺鏻鏼鏽鏾鏿鐀鐁鐂鐃鐄鐅鐆鐇鐈鐉鐊鐋鐌鐍鐎鐏鐐鐑鐒鐓鐔鐕鐖鐗鐘鐙鐚鐛鐜鐝鐞鐟鐠鐡鐢鐣鐤鐥鐦鐧鐨鐩鐪鐫鐬鐭鐮鐯鐰鐱鐲鐳鐴鐵鐶鐷鐸鐹鐺鐻鐼鐽鐾鐿鑀鑁鑂鑃鑄鑅鑆鑇鑈鑉鑊鑋鑌鑍鑎鑏鑐鑑鑒鑓鑔鑕鑖鑗鑘鑙鑚鑛鑜鑝鑞鑟鑠鑡鑢鑣鑤鑥鑦鑧鑨鑩鑪鑫鑬鑭鑮鑯鑰鑱鑲鑳鑴鑵鑶鑷鑸鑹鑺鑻鑼鑽鑾鑿钀钁钂钃钄钅钆钇针钉钊钋钌钍钎钏钐钑钒钓钔钕钖钗钘钙钚钛钜钝钞钟钠钡钢钣钤钥钦钧钨钩钪钫钬钭钮钯钰钱钲钳钴钵钶钷钸钹钺钻钼钽钾钿铀铁铂铃铄铅铆铇铈铉铊铋铌铍铎铏铐铑铒铓铔铕铖铗铘铙铚铛铜铝铞铟铠铡铢铣铤铥铦铧铨铩铪铫铬铭铮铯铰铱铲铳铴铵银铷铸铹铺铻铼铽链铿销锁锂锃锄锅锆锇锈锉锊锋锌锍锎锏锐锑锒锓锔锕锖锗锘错锚锛锜锝锞锟锠锡锢锣锤锥锦锧锨锩锪锫锬锭键锯锰锱锲锳锴锵锶锷锸锹锺锻锼锽锾锿镀镁镂镃镄镅镆镇镈镉镊镋镌镍镎镏镐镑镒镓镔镕镖镗镘镙镚镛镜镝镞镟镠镡镢镣镤镥镦镧镨镩镪镫镬镭镮镯镰镱镲镳镴镵镶長镸镹镺镻镼镽镾长門閁閂閃閄閅閆閇閈閉閊開閌閍閎閏閐閑閒間閔閕閖閗閘閙閚閛閜閝閞閟閠閡関閣閤閥閦閧閨閩閪閫閬閭閮閯閰閱閲閳閴閵閶閷閸閹閺閻閼閽閾閿闀闁闂闃闄闅闆闇闈闉闊闋闌闍闎闏闐闑闒闓闔闕闖闗闘闙闚闛關闝闞闟闠闡闢闣闤闥闦闧门闩闪闫闬闭问闯闰闱闲闳间闵闶闷闸闹闺闻闼闽闾闿阀阁阂阃阄阅阆阇阈阉阊阋阌阍阎阏阐阑阒阓阔阕阖阗阘阙阚阛阜阝阞队阠阡阢阣阤阥阦阧阨阩阪阫阬阭阮阯阰阱防阳阴阵阶阷阸阹阺阻阼阽阾阿陀陁陂陃附际陆陇陈陉陊陋陌降陎陏限陑陒陓陔陕陖陗陘陙陚陛陜陝陞陟陠陡院陣除陥陦陧陨险陪陫陬陭陮陯陰陱陲陳陴陵陶陷陸陹険陻陼陽陾陿隀隁隂隃隄隅隆隇隈隉隊隋隌隍階随隐隑隒隓隔隕隖隗隘隙隚際障隝隞隟隠隡隢隣隤隥隦隧隨隩險隫隬隭隮隯隰隱隲隳隴隵隶隷隸隹隺隻隼隽难隿雀雁雂雃雄雅集雇雈雉雊雋雌雍雎雏雐雑雒雓雔雕雖雗雘雙雚雛雜雝雞雟雠雡離難雤雥雦雧雨雩雪雫雬雭雮雯雰雱雲雳雴雵零雷雸雹雺電雼雽雾雿需霁霂霃霄霅霆震霈霉霊霋霌霍霎霏霐霑霒霓霔霕霖霗霘霙霚霛霜霝霞霟霠霡霢霣霤霥霦霧霨霩霪霫霬霭霮霯霰霱露霳霴霵霶霷霸霹霺霻霼霽霾霿靀靁靂靃靄靅靆靇靈靉靊靋靌靍靎靏靐靑青靓靔靕靖靗靘静靚靛靜靝非靟靠靡面靣靤靥靦靧靨革靪靫靬靭靮靯靰靱靲靳靴靵靶靷靸靹靺靻靼靽靾靿鞀鞁鞂鞃鞄鞅鞆鞇鞈鞉鞊鞋鞌鞍鞎鞏鞐鞑鞒鞓鞔鞕鞖鞗鞘鞙鞚鞛鞜鞝鞞鞟鞠鞡鞢鞣鞤鞥鞦鞧鞨鞩鞪鞫鞬鞭鞮鞯鞰鞱鞲鞳鞴鞵鞶鞷鞸鞹鞺鞻鞼鞽鞾鞿韀韁韂韃韄韅韆韇韈韉韊韋韌韍韎韏韐韑韒韓韔韕韖韗韘韙韚韛韜韝韞韟韠韡韢韣韤韥韦韧韨韩韪韫韬韭韮韯韰韱韲音韴韵韶韷韸韹韺韻韼韽韾響頀頁頂頃頄項順頇須頉頊頋頌頍頎頏預頑頒頓頔頕頖頗領頙頚頛頜頝頞頟頠頡頢頣頤頥頦頧頨頩頪頫頬頭頮頯頰頱頲頳頴頵頶頷頸頹頺頻頼頽頾頿顀顁顂顃顄顅顆顇顈顉顊顋題額顎顏顐顑顒顓顔顕顖顗願顙顚顛顜顝類顟顠顡顢顣顤顥顦顧顨顩顪顫顬顭顮顯顰顱顲顳顴页顶顷顸项顺须顼顽顾顿颀颁颂颃预颅领颇颈颉颊颋颌颍颎颏颐频颒颓颔颕颖颗题颙颚颛颜额颞颟颠颡颢颣颤颥颦颧風颩颪颫颬颭颮颯颰颱颲颳颴颵颶颷颸颹颺颻颼颽颾颿飀飁飂飃飄飅飆飇飈飉飊飋飌飍风飏飐飑飒飓飔飕飖飗飘飙飚飛飜飝飞食飠飡飢飣飤飥飦飧飨飩飪飫飬飭飮飯飰飱飲飳飴飵飶飷飸飹飺飻飼飽飾飿餀餁餂餃餄餅餆餇餈餉養餋餌餍餎餏餐餑餒餓餔餕餖餗餘餙餚餛餜餝餞餟餠餡餢餣餤餥餦餧館餩餪餫餬餭餮餯餰餱餲餳餴餵餶餷餸餹餺餻餼餽餾餿饀饁饂饃饄饅饆饇饈饉饊饋饌饍饎饏饐饑饒饓饔饕饖饗饘饙饚饛饜饝饞饟饠饡饢饣饤饥饦饧饨饩饪饫饬饭饮饯饰饱饲饳饴饵饶饷饸饹饺饻饼饽饾饿馀馁馂馃馄馅馆馇馈馉馊馋馌馍馎馏馐馑馒馓馔馕首馗馘香馚馛馜馝馞馟馠馡馢馣馤馥馦馧馨馩馪馫馬馭馮馯馰馱馲馳馴馵馶馷馸馹馺馻馼馽馾馿駀駁駂駃駄駅駆駇駈駉駊駋駌駍駎駏駐駑駒駓駔駕駖駗駘駙駚駛駜駝駞駟駠駡駢駣駤駥駦駧駨駩駪駫駬駭駮駯駰駱駲駳駴駵駶駷駸駹駺駻駼駽駾駿騀騁騂騃騄騅騆騇騈騉騊騋騌騍騎騏騐騑騒験騔騕騖騗騘騙騚騛騜騝騞騟騠騡騢騣騤騥騦騧騨騩騪騫騬騭騮騯騰騱騲騳騴騵騶騷騸騹騺騻騼騽騾騿驀驁驂驃驄驅驆驇驈驉驊驋驌驍驎驏驐驑驒驓驔驕驖驗驘驙驚驛驜驝驞驟驠驡驢驣驤驥驦驧驨驩驪驫马驭驮驯驰驱驲驳驴驵驶驷驸驹驺驻驼驽驾驿骀骁骂骃骄骅骆骇骈骉骊骋验骍骎骏骐骑骒骓骔骕骖骗骘骙骚骛骜骝骞骟骠骡骢骣骤骥骦骧骨骩骪骫骬骭骮骯骰骱骲骳骴骵骶骷骸骹骺骻骼骽骾骿髀髁髂髃髄髅髆髇髈髉髊髋髌髍髎髏髐髑髒髓體髕髖髗高髙髚髛髜髝髞髟髠髡髢髣髤髥髦髧髨髩髪髫髬髭髮髯髰髱髲髳髴髵髶髷髸髹髺髻髼髽髾髿鬀鬁鬂鬃鬄鬅鬆鬇鬈鬉鬊鬋鬌鬍鬎鬏鬐鬑鬒鬓鬔鬕鬖鬗鬘鬙鬚鬛鬜鬝鬞鬟鬠鬡鬢鬣鬤鬥鬦鬧鬨鬩鬪鬫鬬鬭鬮鬯鬰鬱鬲鬳鬴鬵鬶鬷鬸鬹鬺鬻鬼鬽鬾鬿魀魁魂魃魄魅魆魇魈魉魊魋魌魍魎魏魐魑魒魓魔魕魖魗魘魙魚魛魜魝魞魟魠魡魢魣魤魥魦魧魨魩魪魫魬魭魮魯魰魱魲魳魴魵魶魷魸魹魺魻魼魽魾魿鮀鮁鮂鮃鮄鮅鮆鮇鮈鮉鮊鮋鮌鮍鮎鮏鮐鮑鮒鮓鮔鮕鮖鮗鮘鮙鮚鮛鮜鮝鮞鮟鮠鮡鮢鮣鮤鮥鮦鮧鮨鮩鮪鮫鮬鮭鮮鮯鮰鮱鮲鮳鮴鮵鮶鮷鮸鮹鮺鮻鮼鮽鮾鮿鯀鯁鯂鯃鯄鯅鯆鯇鯈鯉鯊鯋鯌鯍鯎鯏鯐鯑鯒鯓鯔鯕鯖鯗鯘鯙鯚鯛鯜鯝鯞鯟鯠鯡鯢鯣鯤鯥鯦鯧鯨鯩鯪鯫鯬鯭鯮鯯鯰鯱鯲鯳鯴鯵鯶鯷鯸鯹鯺鯻鯼鯽鯾鯿鰀鰁鰂鰃鰄鰅鰆鰇鰈鰉鰊鰋鰌鰍鰎鰏鰐鰑鰒鰓鰔鰕鰖鰗鰘鰙鰚鰛鰜鰝鰞鰟鰠鰡鰢鰣鰤鰥鰦鰧鰨鰩鰪鰫鰬鰭鰮鰯鰰鰱鰲鰳鰴鰵鰶鰷鰸鰹鰺鰻鰼鰽鰾鰿鱀鱁鱂鱃鱄鱅鱆鱇鱈鱉鱊鱋鱌鱍鱎鱏鱐鱑鱒鱓鱔鱕鱖鱗鱘鱙鱚鱛鱜鱝鱞鱟鱠鱡鱢鱣鱤鱥鱦鱧鱨鱩鱪鱫鱬鱭鱮鱯鱰鱱鱲鱳鱴鱵鱶鱷鱸鱹鱺鱻鱼鱽鱾鱿鲀鲁鲂鲃鲄鲅鲆鲇鲈鲉鲊鲋鲌鲍鲎鲏鲐鲑鲒鲓鲔鲕鲖鲗鲘鲙鲚鲛鲜鲝鲞鲟鲠鲡鲢鲣鲤鲥鲦鲧鲨鲩鲪鲫鲬鲭鲮鲯鲰鲱鲲鲳鲴鲵鲶鲷鲸鲹鲺鲻鲼鲽鲾鲿鳀鳁鳂鳃鳄鳅鳆鳇鳈鳉鳊鳋鳌鳍鳎鳏鳐鳑鳒鳓鳔鳕鳖鳗鳘鳙鳚鳛鳜鳝鳞鳟鳠鳡鳢鳣鳤鳥鳦鳧鳨鳩鳪鳫鳬鳭鳮鳯鳰鳱鳲鳳鳴鳵鳶鳷鳸鳹鳺鳻鳼鳽鳾鳿鴀鴁鴂鴃鴄鴅鴆鴇鴈鴉鴊鴋鴌鴍鴎鴏鴐鴑鴒鴓鴔鴕鴖鴗鴘鴙鴚鴛鴜鴝鴞鴟鴠鴡鴢鴣鴤鴥鴦鴧鴨鴩鴪鴫鴬鴭鴮鴯鴰鴱鴲鴳鴴鴵鴶鴷鴸鴹鴺鴻鴼鴽鴾鴿鵀鵁鵂鵃鵄鵅鵆鵇鵈鵉鵊鵋鵌鵍鵎鵏鵐鵑鵒鵓鵔鵕鵖鵗鵘鵙鵚鵛鵜鵝鵞鵟鵠鵡鵢鵣鵤鵥鵦鵧鵨鵩鵪鵫鵬鵭鵮鵯鵰鵱鵲鵳鵴鵵鵶鵷鵸鵹鵺鵻鵼鵽鵾鵿鶀鶁鶂鶃鶄鶅鶆鶇鶈鶉鶊鶋鶌鶍鶎鶏鶐鶑鶒鶓鶔鶕鶖鶗鶘鶙鶚鶛鶜鶝鶞鶟鶠鶡鶢鶣鶤鶥鶦鶧鶨鶩鶪鶫鶬鶭鶮鶯鶰鶱鶲鶳鶴鶵鶶鶷鶸鶹鶺鶻鶼鶽鶾鶿鷀鷁鷂鷃鷄鷅鷆鷇鷈鷉鷊鷋鷌鷍鷎鷏鷐鷑鷒鷓鷔鷕鷖鷗鷘鷙鷚鷛鷜鷝鷞鷟鷠鷡鷢鷣鷤鷥鷦鷧鷨鷩鷪鷫鷬鷭鷮鷯鷰鷱鷲鷳鷴鷵鷶鷷鷸鷹鷺鷻鷼鷽鷾鷿鸀鸁鸂鸃鸄鸅鸆鸇鸈鸉鸊鸋鸌鸍鸎鸏鸐鸑鸒鸓鸔鸕鸖鸗鸘鸙鸚鸛鸜鸝鸞鸟鸠鸡鸢鸣鸤鸥鸦鸧鸨鸩鸪鸫鸬鸭鸮鸯鸰鸱鸲鸳鸴鸵鸶鸷鸸鸹鸺鸻鸼鸽鸾鸿鹀鹁鹂鹃鹄鹅鹆鹇鹈鹉鹊鹋鹌鹍鹎鹏鹐鹑鹒鹓鹔鹕鹖鹗鹘鹙鹚鹛鹜鹝鹞鹟鹠鹡鹢鹣鹤鹥鹦鹧鹨鹩鹪鹫鹬鹭鹮鹯鹰鹱鹲鹳鹴鹵鹶鹷鹸鹹鹺鹻鹼鹽鹾鹿麀麁麂麃麄麅麆麇麈麉麊麋麌麍麎麏麐麑麒麓麔麕麖麗麘麙麚麛麜麝麞麟麠麡麢麣麤麥麦麧麨麩麪麫麬麭麮麯麰麱麲麳麴麵麶麷麸麹麺麻麼麽麾麿黀黁黂黃黄黅黆黇黈黉黊黋黌黍黎黏黐黑黒黓黔黕黖黗默黙黚黛黜黝點黟黠黡黢黣黤黥黦黧黨黩黪黫黬黭黮黯黰黱黲黳黴黵黶黷黸黹黺黻黼黽黾黿鼀鼁鼂鼃鼄鼅鼆鼇鼈鼉鼊鼋鼌鼍鼎鼏鼐鼑鼒鼓鼔鼕鼖鼗鼘鼙鼚鼛鼜鼝鼞鼟鼠鼡鼢鼣鼤鼥鼦鼧鼨鼩鼪鼫鼬鼭鼮鼯鼰鼱鼲鼳鼴鼵鼶鼷鼸鼹鼺鼻鼼鼽鼾鼿齀齁齂齃齄齅齆齇齈齉齊齋齌齍齎齏齐齑齒齓齔齕齖齗齘齙齚齛齜齝齞齟齠齡齢齣齤齥齦齧齨齩齪齫齬齭齮齯齰齱齲齳齴齵齶齷齸齹齺齻齼齽齾齿龀龁龂龃龄龅龆龇龈龉龊龋龌龍龎龏龐龑龒龓龔龕龖龗龘龙龚龛龜龝龞龟龠龡龢龣龤龥龦龧龨龩龪龫龬龭龮龯龰龱龲龳龴龵龶龷龸龹龺龻龼龽龾龿鿀鿁鿂鿃鿄鿅鿆鿇鿈鿉鿊鿋鿌鿍鿎鿏鿐鿑鿒鿓鿔鿕鿖鿗鿘鿙鿚鿛鿜鿝鿞鿟鿠鿡鿢鿣鿤鿥鿦鿧鿨鿩鿪鿫鿬鿭鿮鿯鿰鿱鿲鿳鿴鿵鿶鿷鿸鿹鿺鿻鿼鿽鿾鿿', ',') satisfies matches($s, '^(?:\\p{IsCJKUnifiedIdeographs}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsCJKUnifiedIdeographs}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00284.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00285'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('ꀀ꒏,ꀀꀁꀂꀃꀄꀅꀆꀇꀈꀉꀊꀋꀌꀍꀎꀏꀐꀑꀒꀓꀔꀕꀖꀗꀘꀙꀚꀛꀜꀝꀞꀟꀠꀡꀢꀣꀤꀥꀦꀧꀨꀩꀪꀫꀬꀭꀮꀯꀰꀱꀲꀳꀴꀵꀶꀷꀸꀹꀺꀻꀼꀽꀾꀿꁀꁁꁂꁃꁄꁅꁆꁇꁈꁉꁊꁋꁌꁍꁎꁏꁐꁑꁒꁓꁔꁕꁖꁗꁘꁙꁚꁛꁜꁝꁞꁟꁠꁡꁢꁣꁤꁥꁦꁧꁨꁩꁪꁫꁬꁭꁮꁯꁰꁱꁲꁳꁴꁵꁶꁷꁸꁹꁺꁻꁼꁽꁾꁿꂀꂁꂂꂃꂄꂅꂆꂇꂈꂉꂊꂋꂌꂍꂎꂏꂐꂑꂒꂓꂔꂕꂖꂗꂘꂙꂚꂛꂜꂝꂞꂟꂠꂡꂢꂣꂤꂥꂦꂧꂨꂩꂪꂫꂬꂭꂮꂯꂰꂱꂲꂳꂴꂵꂶꂷꂸꂹꂺꂻꂼꂽꂾꂿꃀꃁꃂꃃꃄꃅꃆꃇꃈꃉꃊꃋꃌꃍꃎꃏꃐꃑꃒꃓꃔꃕꃖꃗꃘꃙꃚꃛꃜꃝꃞꃟꃠꃡꃢꃣꃤꃥꃦꃧꃨꃩꃪꃫꃬꃭꃮꃯꃰꃱꃲꃳꃴꃵꃶꃷꃸꃹꃺꃻꃼꃽꃾꃿꄀꄁꄂꄃꄄꄅꄆꄇꄈꄉꄊꄋꄌꄍꄎꄏꄐꄑꄒꄓꄔꄕꄖꄗꄘꄙꄚꄛꄜꄝꄞꄟꄠꄡꄢꄣꄤꄥꄦꄧꄨꄩꄪꄫꄬꄭꄮꄯꄰꄱꄲꄳꄴꄵꄶꄷꄸꄹꄺꄻꄼꄽꄾꄿꅀꅁꅂꅃꅄꅅꅆꅇꅈꅉꅊꅋꅌꅍꅎꅏꅐꅑꅒꅓꅔꅕꅖꅗꅘꅙꅚꅛꅜꅝꅞꅟꅠꅡꅢꅣꅤꅥꅦꅧꅨꅩꅪꅫꅬꅭꅮꅯꅰꅱꅲꅳꅴꅵꅶꅷꅸꅹꅺꅻꅼꅽꅾꅿꆀꆁꆂꆃꆄꆅꆆꆇꆈꆉꆊꆋꆌꆍꆎꆏꆐꆑꆒꆓꆔꆕꆖꆗꆘꆙꆚꆛꆜꆝꆞꆟꆠꆡꆢꆣꆤꆥꆦꆧꆨꆩꆪꆫꆬꆭꆮꆯꆰꆱꆲꆳꆴꆵꆶꆷꆸꆹꆺꆻꆼꆽꆾꆿꇀꇁꇂꇃꇄꇅꇆꇇꇈꇉꇊꇋꇌꇍꇎꇏꇐꇑꇒꇓꇔꇕꇖꇗꇘꇙꇚꇛꇜꇝꇞꇟꇠꇡꇢꇣꇤꇥꇦꇧꇨꇩꇪꇫꇬꇭꇮꇯꇰꇱꇲꇳꇴꇵꇶꇷꇸꇹꇺꇻꇼꇽꇾꇿꈀꈁꈂꈃꈄꈅꈆꈇꈈꈉꈊꈋꈌꈍꈎꈏꈐꈑꈒꈓꈔꈕꈖꈗꈘꈙꈚꈛꈜꈝꈞꈟꈠꈡꈢꈣꈤꈥꈦꈧꈨꈩꈪꈫꈬꈭꈮꈯꈰꈱꈲꈳꈴꈵꈶꈷꈸꈹꈺꈻꈼꈽꈾꈿꉀꉁꉂꉃꉄꉅꉆꉇꉈꉉꉊꉋꉌꉍꉎꉏꉐꉑꉒꉓꉔꉕꉖꉗꉘꉙꉚꉛꉜꉝꉞꉟꉠꉡꉢꉣꉤꉥꉦꉧꉨꉩꉪꉫꉬꉭꉮꉯꉰꉱꉲꉳꉴꉵꉶꉷꉸꉹꉺꉻꉼꉽꉾꉿꊀꊁꊂꊃꊄꊅꊆꊇꊈꊉꊊꊋꊌꊍꊎꊏꊐꊑꊒꊓꊔꊕꊖꊗꊘꊙꊚꊛꊜꊝꊞꊟꊠꊡꊢꊣꊤꊥꊦꊧꊨꊩꊪꊫꊬꊭꊮꊯꊰꊱꊲꊳꊴꊵꊶꊷꊸꊹꊺꊻꊼꊽꊾꊿꋀꋁꋂꋃꋄꋅꋆꋇꋈꋉꋊꋋꋌꋍꋎꋏꋐꋑꋒꋓꋔꋕꋖꋗꋘꋙꋚꋛꋜꋝꋞꋟꋠꋡꋢꋣꋤꋥꋦꋧꋨꋩꋪꋫꋬꋭꋮꋯꋰꋱꋲꋳꋴꋵꋶꋷꋸꋹꋺꋻꋼꋽꋾꋿꌀꌁꌂꌃꌄꌅꌆꌇꌈꌉꌊꌋꌌꌍꌎꌏꌐꌑꌒꌓꌔꌕꌖꌗꌘꌙꌚꌛꌜꌝꌞꌟꌠꌡꌢꌣꌤꌥꌦꌧꌨꌩꌪꌫꌬꌭꌮꌯꌰꌱꌲꌳꌴꌵꌶꌷꌸꌹꌺꌻꌼꌽꌾꌿꍀꍁꍂꍃꍄꍅꍆꍇꍈꍉꍊꍋꍌꍍꍎꍏꍐꍑꍒꍓꍔꍕꍖꍗꍘꍙꍚꍛꍜꍝꍞꍟꍠꍡꍢꍣꍤꍥꍦꍧꍨꍩꍪꍫꍬꍭꍮꍯꍰꍱꍲꍳꍴꍵꍶꍷꍸꍹꍺꍻꍼꍽꍾꍿꎀꎁꎂꎃꎄꎅꎆꎇꎈꎉꎊꎋꎌꎍꎎꎏꎐꎑꎒꎓꎔꎕꎖꎗꎘꎙꎚꎛꎜꎝꎞꎟꎠꎡꎢꎣꎤꎥꎦꎧꎨꎩꎪꎫꎬꎭꎮꎯꎰꎱꎲꎳꎴꎵꎶꎷꎸꎹꎺꎻꎼꎽꎾꎿꏀꏁꏂꏃꏄꏅꏆꏇꏈꏉꏊꏋꏌꏍꏎꏏꏐꏑꏒꏓꏔꏕꏖꏗꏘꏙꏚꏛꏜꏝꏞꏟꏠꏡꏢꏣꏤꏥꏦꏧꏨꏩꏪꏫꏬꏭꏮꏯꏰꏱꏲꏳꏴꏵꏶꏷꏸꏹꏺꏻꏼꏽꏾꏿꐀꐁꐂꐃꐄꐅꐆꐇꐈꐉꐊꐋꐌꐍꐎꐏꐐꐑꐒꐓꐔꐕꐖꐗꐘꐙꐚꐛꐜꐝꐞꐟꐠꐡꐢꐣꐤꐥꐦꐧꐨꐩꐪꐫꐬꐭꐮꐯꐰꐱꐲꐳꐴꐵꐶꐷꐸꐹꐺꐻꐼꐽꐾꐿꑀꑁꑂꑃꑄꑅꑆꑇꑈꑉꑊꑋꑌꑍꑎꑏꑐꑑꑒꑓꑔꑕꑖꑗꑘꑙꑚꑛꑜꑝꑞꑟꑠꑡꑢꑣꑤꑥꑦꑧꑨꑩꑪꑫꑬꑭꑮꑯꑰꑱꑲꑳꑴꑵꑶꑷꑸꑹꑺꑻꑼꑽꑾꑿꒀꒁꒂꒃꒄꒅꒆꒇꒈꒉꒊꒋꒌ꒍꒎꒏', ',') satisfies matches($s, '^(?:\\p{IsYiSyllables}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsYiSyllables}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00285.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00286'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('꒐꓏,꒐꒑꒒꒓꒔꒕꒖꒗꒘꒙꒚꒛꒜꒝꒞꒟꒠꒡꒢꒣꒤꒥꒦꒧꒨꒩꒪꒫꒬꒭꒮꒯꒰꒱꒲꒳꒴꒵꒶꒷꒸꒹꒺꒻꒼꒽꒾꒿꓀꓁꓂꓃꓄꓅꓆꓇꓈꓉꓊꓋꓌꓍꓎꓏', ',') satisfies matches($s, '^(?:\\p{IsYiRadicals}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsYiRadicals}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00286.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00287'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('가힣', ',') satisfies matches($s, '^(?:\\p{IsHangulSyllables}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsHangulSyllables}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00287.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00288'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize(',󰀀󿿽,􀀀􏿽', ',') satisfies matches($s, '^(?:\\p{IsPrivateUse}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsPrivateUse}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00288.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00289'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('豈﫿,豈更車賈滑串句龜龜契金喇奈懶癩羅蘿螺裸邏樂洛烙珞落酪駱亂卵欄爛蘭鸞嵐濫藍襤拉臘蠟廊朗浪狼郎來冷勞擄櫓爐盧老蘆虜路露魯鷺碌祿綠菉錄鹿論壟弄籠聾牢磊賂雷壘屢樓淚漏累縷陋勒肋凜凌稜綾菱陵讀拏樂諾丹寧怒率異北磻便復不泌數索參塞省葉說殺辰沈拾若掠略亮兩凉梁糧良諒量勵呂女廬旅濾礪閭驪麗黎力曆歷轢年憐戀撚漣煉璉秊練聯輦蓮連鍊列劣咽烈裂說廉念捻殮簾獵令囹寧嶺怜玲瑩羚聆鈴零靈領例禮醴隸惡了僚寮尿料樂燎療蓼遼龍暈阮劉杻柳流溜琉留硫紐類六戮陸倫崙淪輪律慄栗率隆利吏履易李梨泥理痢罹裏裡里離匿溺吝燐璘藺隣鱗麟林淋臨立笠粒狀炙識什茶刺切度拓糖宅洞暴輻行降見廓兀嗀﨎﨏塚﨑晴﨓﨔凞猪益礼神祥福靖精羽﨟蘒﨡諸﨣﨤逸都﨧﨨﨩飯飼館鶴郞隷侮僧免勉勤卑喝嘆器塀墨層屮悔慨憎懲敏既暑梅海渚漢煮爫琢碑社祉祈祐祖祝禍禎穀突節練縉繁署者臭艹艹著褐視謁謹賓贈辶逸難響頻恵𤋮舘﩮﩯並况全侀充冀勇勺喝啕喙嗢塚墳奄奔婢嬨廒廙彩徭惘慎愈憎慠懲戴揄搜摒敖晴朗望杖歹殺流滛滋漢瀞煮瞧爵犯猪瑱甆画瘝瘟益盛直睊着磌窱節类絛練缾者荒華蝹襁覆視調諸請謁諾諭謹變贈輸遲醙鉶陼難靖韛響頋頻鬒龜𢡊𢡄𣏕㮝䀘䀹𥉉𥳐𧻓齃龎﫚﫛﫜﫝﫞﫟﫠﫡﫢﫣﫤﫥﫦﫧﫨﫩﫪﫫﫬﫭﫮﫯﫰﫱﫲﫳﫴﫵﫶﫷﫸﫹﫺﫻﫼﫽﫾﫿', ',') satisfies matches($s, '^(?:\\p{IsCJKCompatibilityIdeographs}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsCJKCompatibilityIdeographs}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00289.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00290'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('ﬀﭏ,ﬀﬁﬂﬃﬄﬅﬆ﬇﬈﬉﬊﬋﬌﬍﬎﬏﬐﬑﬒ﬓﬔﬕﬖﬗ﬘﬙﬚﬛﬜יִﬞײַﬠﬡﬢﬣﬤﬥﬦﬧﬨ﬩שׁשׂשּׁשּׂאַאָאּבּגּדּהּוּזּ﬷טּיּךּכּלּ﬽מּ﬿נּסּ﭂ףּפּ﭅צּקּרּשּתּוֹבֿכֿפֿﭏ', ',') satisfies matches($s, '^(?:\\p{IsAlphabeticPresentationForms}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsAlphabeticPresentationForms}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00290.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00291'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('ﭐ﷿,ﭐﭑﭒﭓﭔﭕﭖﭗﭘﭙﭚﭛﭜﭝﭞﭟﭠﭡﭢﭣﭤﭥﭦﭧﭨﭩﭪﭫﭬﭭﭮﭯﭰﭱﭲﭳﭴﭵﭶﭷﭸﭹﭺﭻﭼﭽﭾﭿﮀﮁﮂﮃﮄﮅﮆﮇﮈﮉﮊﮋﮌﮍﮎﮏﮐﮑﮒﮓﮔﮕﮖﮗﮘﮙﮚﮛﮜﮝﮞﮟﮠﮡﮢﮣﮤﮥﮦﮧﮨﮩﮪﮫﮬﮭﮮﮯﮰﮱ﮲﮳﮴﮵﮶﮷﮸﮹﮺﮻﮼﮽﮾﮿﯀﯁﯂﯃﯄﯅﯆﯇﯈﯉﯊﯋﯌﯍﯎﯏﯐﯑﯒ﯓﯔﯕﯖﯗﯘﯙﯚﯛﯜﯝﯞﯟﯠﯡﯢﯣﯤﯥﯦﯧﯨﯩﯪﯫﯬﯭﯮﯯﯰﯱﯲﯳﯴﯵﯶﯷﯸﯹﯺﯻﯼﯽﯾﯿﰀﰁﰂﰃﰄﰅﰆﰇﰈﰉﰊﰋﰌﰍﰎﰏﰐﰑﰒﰓﰔﰕﰖﰗﰘﰙﰚﰛﰜﰝﰞﰟﰠﰡﰢﰣﰤﰥﰦﰧﰨﰩﰪﰫﰬﰭﰮﰯﰰﰱﰲﰳﰴﰵﰶﰷﰸﰹﰺﰻﰼﰽﰾﰿﱀﱁﱂﱃﱄﱅﱆﱇﱈﱉﱊﱋﱌﱍﱎﱏﱐﱑﱒﱓﱔﱕﱖﱗﱘﱙﱚﱛﱜﱝﱞﱟﱠﱡﱢﱣﱤﱥﱦﱧﱨﱩﱪﱫﱬﱭﱮﱯﱰﱱﱲﱳﱴﱵﱶﱷﱸﱹﱺﱻﱼﱽﱾﱿﲀﲁﲂﲃﲄﲅﲆﲇﲈﲉﲊﲋﲌﲍﲎﲏﲐﲑﲒﲓﲔﲕﲖﲗﲘﲙﲚﲛﲜﲝﲞﲟﲠﲡﲢﲣﲤﲥﲦﲧﲨﲩﲪﲫﲬﲭﲮﲯﲰﲱﲲﲳﲴﲵﲶﲷﲸﲹﲺﲻﲼﲽﲾﲿﳀﳁﳂﳃﳄﳅﳆﳇﳈﳉﳊﳋﳌﳍﳎﳏﳐﳑﳒﳓﳔﳕﳖﳗﳘﳙﳚﳛﳜﳝﳞﳟﳠﳡﳢﳣﳤﳥﳦﳧﳨﳩﳪﳫﳬﳭﳮﳯﳰﳱﳲﳳﳴﳵﳶﳷﳸﳹﳺﳻﳼﳽﳾﳿﴀﴁﴂﴃﴄﴅﴆﴇﴈﴉﴊﴋﴌﴍﴎﴏﴐﴑﴒﴓﴔﴕﴖﴗﴘﴙﴚﴛﴜﴝﴞﴟﴠﴡﴢﴣﴤﴥﴦﴧﴨﴩﴪﴫﴬﴭﴮﴯﴰﴱﴲﴳﴴﴵﴶﴷﴸﴹﴺﴻﴼﴽ﴾﴿﵀﵁﵂﵃﵄﵅﵆﵇﵈﵉﵊﵋﵌﵍﵎﵏ﵐﵑﵒﵓﵔﵕﵖﵗﵘﵙﵚﵛﵜﵝﵞﵟﵠﵡﵢﵣﵤﵥﵦﵧﵨﵩﵪﵫﵬﵭﵮﵯﵰﵱﵲﵳﵴﵵﵶﵷﵸﵹﵺﵻﵼﵽﵾﵿﶀﶁﶂﶃﶄﶅﶆﶇﶈﶉﶊﶋﶌﶍﶎﶏ﶐﶑ﶒﶓﶔﶕﶖﶗﶘﶙﶚﶛﶜﶝﶞﶟﶠﶡﶢﶣﶤﶥﶦﶧﶨﶩﶪﶫﶬﶭﶮﶯﶰﶱﶲﶳﶴﶵﶶﶷﶸﶹﶺﶻﶼﶽﶾﶿﷀﷁﷂﷃﷄﷅﷆﷇ﷈﷉﷊﷋﷌﷍﷎﷏﷐﷑﷒﷓﷔﷕﷖﷗﷘﷙﷚﷛﷜﷝﷞﷟﷠﷡﷢﷣﷤﷥﷦﷧﷨﷩﷪﷫﷬﷭﷮﷯ﷰﷱﷲﷳﷴﷵﷶﷷﷸﷹﷺﷻ﷼﷽﷾﷿', ',') satisfies matches($s, '^(?:\\p{IsArabicPresentationForms-A}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsArabicPresentationForms-A}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00291.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00292'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('︠︯,︧︨︩︪︫︬︭︠︡︢︣︤︥︦︮︯', ',') satisfies matches($s, '^(?:\\p{IsCombiningHalfMarks}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsCombiningHalfMarks}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00292.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00293'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('︰﹏,︰︱︲︳︴︵︶︷︸︹︺︻︼︽︾︿﹀﹁﹂﹃﹄﹅﹆﹇﹈﹉﹊﹋﹌﹍﹎﹏', ',') satisfies matches($s, '^(?:\\p{IsCJKCompatibilityForms}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsCJKCompatibilityForms}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00293.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00294'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('﹐﹯,﹐﹑﹒﹓﹔﹕﹖﹗﹘﹙﹚﹛﹜﹝﹞﹟﹠﹡﹢﹣﹤﹥﹦﹧﹨﹩﹪﹫﹬﹭﹮﹯', ',') satisfies matches($s, '^(?:\\p{IsSmallFormVariants}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsSmallFormVariants}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00294.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00295'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('ﹰ﻾', ',') satisfies matches($s, '^(?:\\p{IsArabicPresentationForms-B}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsArabicPresentationForms-B}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00295.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00296'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('＀￯,＀！＂＃＄％＆＇（）＊＋，－．／０１２３４５６７８９：；＜＝＞？＠ＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺ［＼］＾＿｀ａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚ｛｜｝～｟｠｡｢｣､･ｦｧｨｩｪｫｬｭｮｯｰｱｲｳｴｵｶｷｸｹｺｻｼｽｾｿﾀﾁﾂﾃﾄﾅﾆﾇﾈﾉﾊﾋﾌﾍﾎﾏﾐﾑﾒﾓﾔﾕﾖﾗﾘﾙﾚﾛﾜﾝﾞﾟﾠﾡﾢﾣﾤﾥﾦﾧﾨﾩﾪﾫﾬﾭﾮﾯﾰﾱﾲﾳﾴﾵﾶﾷﾸﾹﾺﾻﾼﾽﾾ﾿￀￁ￂￃￄￅￆￇ￈￉ￊￋￌￍￎￏ￐￑ￒￓￔￕￖￗ￘￙ￚￛￜ￝￞￟￠￡￢￣￤￥￦￧￨￩￪￫￬￭￮￯', ',') satisfies matches($s, '^(?:\\p{IsHalfwidthandFullwidthForms}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsHalfwidthandFullwidthForms}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00296.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00297'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('￰�,￰￱￲￳￴￵￶￷￸￹￺￻￼�', ',') satisfies matches($s, '^(?:\\p{IsSpecials}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsSpecials}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00297.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00298'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsBasicLatin}?)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsBasicLatin}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00298.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00299'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsLatin-1Supplement}?)$')) and (every $s in tokenize('Ā', ',') satisfies not(matches($s, '^(?:\\p{IsLatin-1Supplement}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00299.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00300'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsLatinExtended-A}?)$')) and (every $s in tokenize('ƀ', ',') satisfies not(matches($s, '^(?:\\p{IsLatinExtended-A}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00300.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00301'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsLatinExtended-B}?)$')) and (every $s in tokenize('ɐ', ',') satisfies not(matches($s, '^(?:\\p{IsLatinExtended-B}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00301.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00302'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsIPAExtensions}?)$')) and (every $s in tokenize('ʰ', ',') satisfies not(matches($s, '^(?:\\p{IsIPAExtensions}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00302.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00303'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsSpacingModifierLetters}?)$')) and (every $s in tokenize('̀', ',') satisfies not(matches($s, '^(?:\\p{IsSpacingModifierLetters}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00303.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00304'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsCyrillic}?)$')) and (every $s in tokenize('԰', ',') satisfies not(matches($s, '^(?:\\p{IsCyrillic}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00304.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00305'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsArmenian}?)$')) and (every $s in tokenize('֐', ',') satisfies not(matches($s, '^(?:\\p{IsArmenian}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00305.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00306'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsHebrew}?)$')) and (every $s in tokenize('؀', ',') satisfies not(matches($s, '^(?:\\p{IsHebrew}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00306.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00307'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsArabic}?)$')) and (every $s in tokenize('܀', ',') satisfies not(matches($s, '^(?:\\p{IsArabic}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00307.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00308'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsSyriac}?)$')) and (every $s in tokenize('ހ', ',') satisfies not(matches($s, '^(?:\\p{IsSyriac}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00308.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00309'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsThaana}?)$')) and (every $s in tokenize('ऀ', ',') satisfies not(matches($s, '^(?:\\p{IsThaana}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00309.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00310'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsDevanagari}?)$')) and (every $s in tokenize('ঀ', ',') satisfies not(matches($s, '^(?:\\p{IsDevanagari}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00310.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00311'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsBengali}?)$')) and (every $s in tokenize('਀', ',') satisfies not(matches($s, '^(?:\\p{IsBengali}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00311.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00312'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsGurmukhi}?)$')) and (every $s in tokenize('઀', ',') satisfies not(matches($s, '^(?:\\p{IsGurmukhi}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00312.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00313'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsGujarati}?)$')) and (every $s in tokenize('଀', ',') satisfies not(matches($s, '^(?:\\p{IsGujarati}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00313.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00314'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsOriya}?)$')) and (every $s in tokenize('஀', ',') satisfies not(matches($s, '^(?:\\p{IsOriya}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00314.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00315'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsTamil}?)$')) and (every $s in tokenize('ఀ', ',') satisfies not(matches($s, '^(?:\\p{IsTamil}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00315.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00316'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsTelugu}?)$')) and (every $s in tokenize('ಀ', ',') satisfies not(matches($s, '^(?:\\p{IsTelugu}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00316.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00317'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsKannada}?)$')) and (every $s in tokenize('ഀ', ',') satisfies not(matches($s, '^(?:\\p{IsKannada}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00317.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00318'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsMalayalam}?)$')) and (every $s in tokenize('඀', ',') satisfies not(matches($s, '^(?:\\p{IsMalayalam}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00318.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00319'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsSinhala}?)$')) and (every $s in tokenize('฀', ',') satisfies not(matches($s, '^(?:\\p{IsSinhala}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00319.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00320'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsThai}?)$')) and (every $s in tokenize('຀', ',') satisfies not(matches($s, '^(?:\\p{IsThai}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00320.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00321'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsLao}?)$')) and (every $s in tokenize('ༀ', ',') satisfies not(matches($s, '^(?:\\p{IsLao}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00321.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00322'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsTibetan}?)$')) and (every $s in tokenize('က', ',') satisfies not(matches($s, '^(?:\\p{IsTibetan}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00322.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00323'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsMyanmar}?)$')) and (every $s in tokenize('Ⴀ', ',') satisfies not(matches($s, '^(?:\\p{IsMyanmar}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00323.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00324'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsGeorgian}?)$')) and (every $s in tokenize('ᄀ', ',') satisfies not(matches($s, '^(?:\\p{IsGeorgian}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00324.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00325'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsHangulJamo}?)$')) and (every $s in tokenize('ሀ', ',') satisfies not(matches($s, '^(?:\\p{IsHangulJamo}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00325.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00326'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsEthiopic}?)$')) and (every $s in tokenize('Ꭰ', ',') satisfies not(matches($s, '^(?:\\p{IsEthiopic}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00326.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00327'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsCherokee}?)$')) and (every $s in tokenize('᐀', ',') satisfies not(matches($s, '^(?:\\p{IsCherokee}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00327.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00328'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsUnifiedCanadianAboriginalSyllabics}?)$')) and (every $s in tokenize(' ', ',') satisfies not(matches($s, '^(?:\\p{IsUnifiedCanadianAboriginalSyllabics}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00328.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00329'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsOgham}?)$')) and (every $s in tokenize('ᚠ', ',') satisfies not(matches($s, '^(?:\\p{IsOgham}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00329.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00330'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsRunic}?)$')) and (every $s in tokenize('ក', ',') satisfies not(matches($s, '^(?:\\p{IsRunic}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00330.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00331'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsKhmer}?)$')) and (every $s in tokenize('᠀', ',') satisfies not(matches($s, '^(?:\\p{IsKhmer}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00331.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00332'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsMongolian}?)$')) and (every $s in tokenize('Ḁ', ',') satisfies not(matches($s, '^(?:\\p{IsMongolian}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00332.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00333'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsLatinExtendedAdditional}?)$')) and (every $s in tokenize('ἀ', ',') satisfies not(matches($s, '^(?:\\p{IsLatinExtendedAdditional}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00333.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00334'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsGreekExtended}?)$')) and (every $s in tokenize(' ', ',') satisfies not(matches($s, '^(?:\\p{IsGreekExtended}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00334.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00335'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsGeneralPunctuation}?)$')) and (every $s in tokenize('⁰', ',') satisfies not(matches($s, '^(?:\\p{IsGeneralPunctuation}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00335.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00336'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsSuperscriptsandSubscripts}?)$')) and (every $s in tokenize('₠', ',') satisfies not(matches($s, '^(?:\\p{IsSuperscriptsandSubscripts}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00336.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00337'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsCurrencySymbols}?)$')) and (every $s in tokenize('⃐', ',') satisfies not(matches($s, '^(?:\\p{IsCurrencySymbols}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00337.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00338'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsCombiningMarksforSymbols}?)$')) and (every $s in tokenize('℀', ',') satisfies not(matches($s, '^(?:\\p{IsCombiningMarksforSymbols}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00338.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00339'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsLetterlikeSymbols}?)$')) and (every $s in tokenize('⅐', ',') satisfies not(matches($s, '^(?:\\p{IsLetterlikeSymbols}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00339.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00340'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsNumberForms}?)$')) and (every $s in tokenize('←', ',') satisfies not(matches($s, '^(?:\\p{IsNumberForms}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00340.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00341'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsArrows}?)$')) and (every $s in tokenize('∀', ',') satisfies not(matches($s, '^(?:\\p{IsArrows}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00341.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00342'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsMathematicalOperators}?)$')) and (every $s in tokenize('⌀', ',') satisfies not(matches($s, '^(?:\\p{IsMathematicalOperators}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00342.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00343'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsMiscellaneousTechnical}?)$')) and (every $s in tokenize('␀', ',') satisfies not(matches($s, '^(?:\\p{IsMiscellaneousTechnical}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00343.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00344'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsControlPictures}?)$')) and (every $s in tokenize('⑀', ',') satisfies not(matches($s, '^(?:\\p{IsControlPictures}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00344.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00345'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsOpticalCharacterRecognition}?)$')) and (every $s in tokenize('①', ',') satisfies not(matches($s, '^(?:\\p{IsOpticalCharacterRecognition}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00345.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00346'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsEnclosedAlphanumerics}?)$')) and (every $s in tokenize('─', ',') satisfies not(matches($s, '^(?:\\p{IsEnclosedAlphanumerics}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00346.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00347'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsBoxDrawing}?)$')) and (every $s in tokenize('▀', ',') satisfies not(matches($s, '^(?:\\p{IsBoxDrawing}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00347.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00348'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsBlockElements}?)$')) and (every $s in tokenize('■', ',') satisfies not(matches($s, '^(?:\\p{IsBlockElements}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00348.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00349'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsGeometricShapes}?)$')) and (every $s in tokenize('☀', ',') satisfies not(matches($s, '^(?:\\p{IsGeometricShapes}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00349.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00350'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsMiscellaneousSymbols}?)$')) and (every $s in tokenize('✀', ',') satisfies not(matches($s, '^(?:\\p{IsMiscellaneousSymbols}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00350.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00351'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsDingbats}?)$')) and (every $s in tokenize('⠀', ',') satisfies not(matches($s, '^(?:\\p{IsDingbats}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00351.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00352'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsBraillePatterns}?)$')) and (every $s in tokenize('⺀', ',') satisfies not(matches($s, '^(?:\\p{IsBraillePatterns}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00352.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00353'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsCJKRadicalsSupplement}?)$')) and (every $s in tokenize('⼀', ',') satisfies not(matches($s, '^(?:\\p{IsCJKRadicalsSupplement}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00353.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00354'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsKangxiRadicals}?)$')) and (every $s in tokenize('⿰', ',') satisfies not(matches($s, '^(?:\\p{IsKangxiRadicals}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00354.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00355'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsIdeographicDescriptionCharacters}?)$')) and (every $s in tokenize('　', ',') satisfies not(matches($s, '^(?:\\p{IsIdeographicDescriptionCharacters}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00355.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00356'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsCJKSymbolsandPunctuation}?)$')) and (every $s in tokenize('぀', ',') satisfies not(matches($s, '^(?:\\p{IsCJKSymbolsandPunctuation}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00356.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00357'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsHiragana}?)$')) and (every $s in tokenize('゠', ',') satisfies not(matches($s, '^(?:\\p{IsHiragana}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00357.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00358'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsKatakana}?)$')) and (every $s in tokenize('㄀', ',') satisfies not(matches($s, '^(?:\\p{IsKatakana}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00358.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00359'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsBopomofo}?)$')) and (every $s in tokenize('㄰', ',') satisfies not(matches($s, '^(?:\\p{IsBopomofo}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00359.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00360'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsHangulCompatibilityJamo}?)$')) and (every $s in tokenize('㆐', ',') satisfies not(matches($s, '^(?:\\p{IsHangulCompatibilityJamo}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00360.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00361'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsKanbun}?)$')) and (every $s in tokenize('ㆠ', ',') satisfies not(matches($s, '^(?:\\p{IsKanbun}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00361.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00362'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsBopomofoExtended}?)$')) and (every $s in tokenize('㈀', ',') satisfies not(matches($s, '^(?:\\p{IsBopomofoExtended}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00362.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00363'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsEnclosedCJKLettersandMonths}?)$')) and (every $s in tokenize('㌀', ',') satisfies not(matches($s, '^(?:\\p{IsEnclosedCJKLettersandMonths}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00363.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00364'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsCJKCompatibility}?)$')) and (every $s in tokenize('㐀', ',') satisfies not(matches($s, '^(?:\\p{IsCJKCompatibility}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00364.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00365'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsCJKUnifiedIdeographsExtensionA}?)$')) and (every $s in tokenize('一', ',') satisfies not(matches($s, '^(?:\\p{IsCJKUnifiedIdeographsExtensionA}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00365.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00366'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsCJKUnifiedIdeographs}?)$')) and (every $s in tokenize('ꀀ', ',') satisfies not(matches($s, '^(?:\\p{IsCJKUnifiedIdeographs}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00366.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00367'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsYiSyllables}?)$')) and (every $s in tokenize('꒐', ',') satisfies not(matches($s, '^(?:\\p{IsYiSyllables}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00367.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00368'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsYiRadicals}?)$')) and (every $s in tokenize('가', ',') satisfies not(matches($s, '^(?:\\p{IsYiRadicals}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00368.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00369'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsLowSurrogates}?)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsLowSurrogates}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00369.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00370'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('􀀀', ',') satisfies matches($s, '^(?:\\p{IsPrivateUse}?)$')) and (every $s in tokenize('豈,', ',') satisfies not(matches($s, '^(?:\\p{IsPrivateUse}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00370.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00371'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsCJKCompatibilityIdeographs}?)$')) and (every $s in tokenize('ﬀ', ',') satisfies not(matches($s, '^(?:\\p{IsCJKCompatibilityIdeographs}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00371.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00372'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsAlphabeticPresentationForms}?)$')) and (every $s in tokenize('ﭐ', ',') satisfies not(matches($s, '^(?:\\p{IsAlphabeticPresentationForms}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00372.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00373'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsArabicPresentationForms-A}?)$')) and (every $s in tokenize('︠', ',') satisfies not(matches($s, '^(?:\\p{IsArabicPresentationForms-A}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00373.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00374'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsCombiningHalfMarks}?)$')) and (every $s in tokenize('︰', ',') satisfies not(matches($s, '^(?:\\p{IsCombiningHalfMarks}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00374.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00375'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsCJKCompatibilityForms}?)$')) and (every $s in tokenize('﹐', ',') satisfies not(matches($s, '^(?:\\p{IsCJKCompatibilityForms}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00375.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00376'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsSmallFormVariants}?)$')) and (every $s in tokenize('ﹰ', ',') satisfies not(matches($s, '^(?:\\p{IsSmallFormVariants}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00376.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00377'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsSpecials}?)$')) and (every $s in tokenize('＀,𐌀', ',') satisfies not(matches($s, '^(?:\\p{IsSpecials}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00377.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00378'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsHalfwidthandFullwidthForms}?)$')) and (every $s in tokenize('￰', ',') satisfies not(matches($s, '^(?:\\p{IsHalfwidthandFullwidthForms}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00378.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00379'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsOldItalic}?)$')) and (every $s in tokenize('𐌰', ',') satisfies not(matches($s, '^(?:\\p{IsOldItalic}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00379.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00380'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsGothic}?)$')) and (every $s in tokenize('𐐀', ',') satisfies not(matches($s, '^(?:\\p{IsGothic}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00380.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00381'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsDeseret}?)$')) and (every $s in tokenize('𝀀', ',') satisfies not(matches($s, '^(?:\\p{IsDeseret}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00381.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00382'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsByzantineMusicalSymbols}?)$')) and (every $s in tokenize('𝄀', ',') satisfies not(matches($s, '^(?:\\p{IsByzantineMusicalSymbols}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00382.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00383'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsMusicalSymbols}?)$')) and (every $s in tokenize('𝐀', ',') satisfies not(matches($s, '^(?:\\p{IsMusicalSymbols}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00383.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00384'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsMathematicalAlphanumericSymbols}?)$')) and (every $s in tokenize('𠀀', ',') satisfies not(matches($s, '^(?:\\p{IsMathematicalAlphanumericSymbols}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00384.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00385'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsCJKUnifiedIdeographsExtensionB}?)$')) and (every $s in tokenize('丽', ',') satisfies not(matches($s, '^(?:\\p{IsCJKUnifiedIdeographsExtensionB}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00385.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00386'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsCJKCompatibilityIdeographsSupplement}?)$')) and (every $s in tokenize('󠀀', ',') satisfies not(matches($s, '^(?:\\p{IsCJKCompatibilityIdeographsSupplement}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00386.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00387'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsTags}?)$')) and (every $s in tokenize('󰀀', ',') satisfies not(matches($s, '^(?:\\p{IsTags}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00387.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00388'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsBasicLatin})$')) and (every $s in tokenize('ۿ', ',') satisfies not(matches($s, '^(?:\\p{IsBasicLatin})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00388.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00389'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsLatin-1Supplement})$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsLatin-1Supplement})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00389.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00390'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsLatinExtended-A})$')) and (every $s in tokenize('ÿ', ',') satisfies not(matches($s, '^(?:\\p{IsLatinExtended-A})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00390.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00391'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsLatinExtended-B})$')) and (every $s in tokenize('ſ', ',') satisfies not(matches($s, '^(?:\\p{IsLatinExtended-B})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00391.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00392'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsIPAExtensions})$')) and (every $s in tokenize('ɏ', ',') satisfies not(matches($s, '^(?:\\p{IsIPAExtensions})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00392.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00393'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsSpacingModifierLetters})$')) and (every $s in tokenize('ʯ', ',') satisfies not(matches($s, '^(?:\\p{IsSpacingModifierLetters})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00393.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00394'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsGreek})$')) and (every $s in tokenize('ͯ', ',') satisfies not(matches($s, '^(?:\\p{IsGreek})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00394.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00395'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsCyrillic})$')) and (every $s in tokenize('Ͽ', ',') satisfies not(matches($s, '^(?:\\p{IsCyrillic})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00395.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00396'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsArmenian})$')) and (every $s in tokenize('ӿ', ',') satisfies not(matches($s, '^(?:\\p{IsArmenian})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00396.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00397'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsHebrew})$')) and (every $s in tokenize('֏', ',') satisfies not(matches($s, '^(?:\\p{IsHebrew})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00397.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00398'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsArabic})$')) and (every $s in tokenize('׿', ',') satisfies not(matches($s, '^(?:\\p{IsArabic})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00398.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00399'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsSyriac})$')) and (every $s in tokenize('ۿ', ',') satisfies not(matches($s, '^(?:\\p{IsSyriac})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00399.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00400'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsThaana})$')) and (every $s in tokenize('ݏ', ',') satisfies not(matches($s, '^(?:\\p{IsThaana})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00400.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00401'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsDevanagari})$')) and (every $s in tokenize('޿', ',') satisfies not(matches($s, '^(?:\\p{IsDevanagari})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00401.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00402'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsBengali})$')) and (every $s in tokenize('ॿ', ',') satisfies not(matches($s, '^(?:\\p{IsBengali})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00402.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00403'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsGurmukhi})$')) and (every $s in tokenize('৿', ',') satisfies not(matches($s, '^(?:\\p{IsGurmukhi})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00403.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00404'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsGujarati})$')) and (every $s in tokenize('੿', ',') satisfies not(matches($s, '^(?:\\p{IsGujarati})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00404.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00405'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsOriya})$')) and (every $s in tokenize('૿', ',') satisfies not(matches($s, '^(?:\\p{IsOriya})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00405.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00406'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsTamil})$')) and (every $s in tokenize('୿', ',') satisfies not(matches($s, '^(?:\\p{IsTamil})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00406.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00407'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsTelugu})$')) and (every $s in tokenize('௿', ',') satisfies not(matches($s, '^(?:\\p{IsTelugu})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00407.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00408'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsKannada})$')) and (every $s in tokenize('౿', ',') satisfies not(matches($s, '^(?:\\p{IsKannada})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00408.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00409'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsMalayalam})$')) and (every $s in tokenize('೿', ',') satisfies not(matches($s, '^(?:\\p{IsMalayalam})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00409.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00410'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsSinhala})$')) and (every $s in tokenize('ൿ', ',') satisfies not(matches($s, '^(?:\\p{IsSinhala})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00410.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00411'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsThai})$')) and (every $s in tokenize('෿', ',') satisfies not(matches($s, '^(?:\\p{IsThai})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00411.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00412'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsLao})$')) and (every $s in tokenize('๿', ',') satisfies not(matches($s, '^(?:\\p{IsLao})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00412.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00413'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsTibetan})$')) and (every $s in tokenize('໿', ',') satisfies not(matches($s, '^(?:\\p{IsTibetan})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00413.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00414'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsMyanmar})$')) and (every $s in tokenize('࿿', ',') satisfies not(matches($s, '^(?:\\p{IsMyanmar})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00414.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00415'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsGeorgian})$')) and (every $s in tokenize('႟', ',') satisfies not(matches($s, '^(?:\\p{IsGeorgian})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00415.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00416'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsHangulJamo})$')) and (every $s in tokenize('ჿ', ',') satisfies not(matches($s, '^(?:\\p{IsHangulJamo})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00416.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00417'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsEthiopic})$')) and (every $s in tokenize('ᇿ', ',') satisfies not(matches($s, '^(?:\\p{IsEthiopic})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00417.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00418'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsCherokee})$')) and (every $s in tokenize('፿', ',') satisfies not(matches($s, '^(?:\\p{IsCherokee})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00418.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00419'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsUnifiedCanadianAboriginalSyllabics})$')) and (every $s in tokenize('᏿', ',') satisfies not(matches($s, '^(?:\\p{IsUnifiedCanadianAboriginalSyllabics})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00419.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00420'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsOgham})$')) and (every $s in tokenize('ᙿ', ',') satisfies not(matches($s, '^(?:\\p{IsOgham})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00420.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00421'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsRunic})$')) and (every $s in tokenize('᚟', ',') satisfies not(matches($s, '^(?:\\p{IsRunic})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00421.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00422'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsKhmer})$')) and (every $s in tokenize('᛿', ',') satisfies not(matches($s, '^(?:\\p{IsKhmer})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00422.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00423'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsMongolian})$')) and (every $s in tokenize('៿', ',') satisfies not(matches($s, '^(?:\\p{IsMongolian})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00423.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00424'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsLatinExtendedAdditional})$')) and (every $s in tokenize('᢯', ',') satisfies not(matches($s, '^(?:\\p{IsLatinExtendedAdditional})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00424.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00425'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsGreekExtended})$')) and (every $s in tokenize('ỿ', ',') satisfies not(matches($s, '^(?:\\p{IsGreekExtended})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00425.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00426'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsGeneralPunctuation})$')) and (every $s in tokenize('῿', ',') satisfies not(matches($s, '^(?:\\p{IsGeneralPunctuation})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00426.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00427'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsSuperscriptsandSubscripts})$')) and (every $s in tokenize('⁯', ',') satisfies not(matches($s, '^(?:\\p{IsSuperscriptsandSubscripts})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00427.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00428'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsCurrencySymbols})$')) and (every $s in tokenize('₟', ',') satisfies not(matches($s, '^(?:\\p{IsCurrencySymbols})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00428.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00429'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsCombiningMarksforSymbols})$')) and (every $s in tokenize('⃏', ',') satisfies not(matches($s, '^(?:\\p{IsCombiningMarksforSymbols})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00429.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00430'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsLetterlikeSymbols})$')) and (every $s in tokenize('⃿', ',') satisfies not(matches($s, '^(?:\\p{IsLetterlikeSymbols})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00430.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00431'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsNumberForms})$')) and (every $s in tokenize('⅏', ',') satisfies not(matches($s, '^(?:\\p{IsNumberForms})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00431.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00432'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsArrows})$')) and (every $s in tokenize('↏', ',') satisfies not(matches($s, '^(?:\\p{IsArrows})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00432.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00433'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsMathematicalOperators})$')) and (every $s in tokenize('⇿', ',') satisfies not(matches($s, '^(?:\\p{IsMathematicalOperators})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00433.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00434'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsMiscellaneousTechnical})$')) and (every $s in tokenize('⋿', ',') satisfies not(matches($s, '^(?:\\p{IsMiscellaneousTechnical})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00434.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00435'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsControlPictures})$')) and (every $s in tokenize('⏿', ',') satisfies not(matches($s, '^(?:\\p{IsControlPictures})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00435.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00436'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsOpticalCharacterRecognition})$')) and (every $s in tokenize('␿', ',') satisfies not(matches($s, '^(?:\\p{IsOpticalCharacterRecognition})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00436.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00437'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsEnclosedAlphanumerics})$')) and (every $s in tokenize('⑟', ',') satisfies not(matches($s, '^(?:\\p{IsEnclosedAlphanumerics})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00437.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00438'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsBoxDrawing})$')) and (every $s in tokenize('⓿', ',') satisfies not(matches($s, '^(?:\\p{IsBoxDrawing})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00438.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00439'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsBlockElements})$')) and (every $s in tokenize('╿', ',') satisfies not(matches($s, '^(?:\\p{IsBlockElements})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00439.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00440'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsGeometricShapes})$')) and (every $s in tokenize('▟', ',') satisfies not(matches($s, '^(?:\\p{IsGeometricShapes})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00440.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00441'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsMiscellaneousSymbols})$')) and (every $s in tokenize('◿', ',') satisfies not(matches($s, '^(?:\\p{IsMiscellaneousSymbols})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00441.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00442'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsDingbats})$')) and (every $s in tokenize('⛿', ',') satisfies not(matches($s, '^(?:\\p{IsDingbats})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00442.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00443'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsBraillePatterns})$')) and (every $s in tokenize('➿', ',') satisfies not(matches($s, '^(?:\\p{IsBraillePatterns})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00443.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00444'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsCJKRadicalsSupplement})$')) and (every $s in tokenize('⣿', ',') satisfies not(matches($s, '^(?:\\p{IsCJKRadicalsSupplement})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00444.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00445'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsKangxiRadicals})$')) and (every $s in tokenize('⻿', ',') satisfies not(matches($s, '^(?:\\p{IsKangxiRadicals})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00445.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00446'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsIdeographicDescriptionCharacters})$')) and (every $s in tokenize('⿟', ',') satisfies not(matches($s, '^(?:\\p{IsIdeographicDescriptionCharacters})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00446.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00447'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsCJKSymbolsandPunctuation})$')) and (every $s in tokenize('⿿', ',') satisfies not(matches($s, '^(?:\\p{IsCJKSymbolsandPunctuation})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00447.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00448'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsHiragana})$')) and (every $s in tokenize('〿', ',') satisfies not(matches($s, '^(?:\\p{IsHiragana})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00448.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00449'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsKatakana})$')) and (every $s in tokenize('ゟ', ',') satisfies not(matches($s, '^(?:\\p{IsKatakana})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00449.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00450'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsBopomofo})$')) and (every $s in tokenize('ヿ', ',') satisfies not(matches($s, '^(?:\\p{IsBopomofo})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00450.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00451'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsHangulCompatibilityJamo})$')) and (every $s in tokenize('ㄯ', ',') satisfies not(matches($s, '^(?:\\p{IsHangulCompatibilityJamo})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00451.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00452'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsKanbun})$')) and (every $s in tokenize('㆏', ',') satisfies not(matches($s, '^(?:\\p{IsKanbun})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00452.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00453'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsBopomofoExtended})$')) and (every $s in tokenize('㆟', ',') satisfies not(matches($s, '^(?:\\p{IsBopomofoExtended})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00453.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00454'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsEnclosedCJKLettersandMonths})$')) and (every $s in tokenize('ㆿ', ',') satisfies not(matches($s, '^(?:\\p{IsEnclosedCJKLettersandMonths})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00454.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00455'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsCJKCompatibility})$')) and (every $s in tokenize('㋿', ',') satisfies not(matches($s, '^(?:\\p{IsCJKCompatibility})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00455.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00456'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsCJKUnifiedIdeographsExtensionA})$')) and (every $s in tokenize('㏿', ',') satisfies not(matches($s, '^(?:\\p{IsCJKUnifiedIdeographsExtensionA})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00456.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00457'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsCJKUnifiedIdeographs})$')) and (every $s in tokenize('䶵', ',') satisfies not(matches($s, '^(?:\\p{IsCJKUnifiedIdeographs})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00457.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00458'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsYiSyllables})$')) and (every $s in tokenize('鿿', ',') satisfies not(matches($s, '^(?:\\p{IsYiSyllables})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00458.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00459'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsYiRadicals})$')) and (every $s in tokenize('꒏', ',') satisfies not(matches($s, '^(?:\\p{IsYiRadicals})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00459.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00460'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsHangulSyllables})$')) and (every $s in tokenize('꓏', ',') satisfies not(matches($s, '^(?:\\p{IsHangulSyllables})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00460.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00461'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsHighSurrogates})$')) and (every $s in tokenize('''힣', ',') satisfies not(matches($s, '^(?:\\p{IsHighSurrogates})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00461.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00462'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsCJKCompatibilityIdeographs})$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsCJKCompatibilityIdeographs})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00462.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00463'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsAlphabeticPresentationForms})$')) and (every $s in tokenize('﫿', ',') satisfies not(matches($s, '^(?:\\p{IsAlphabeticPresentationForms})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00463.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00464'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsArabicPresentationForms-A})$')) and (every $s in tokenize('ﭏ', ',') satisfies not(matches($s, '^(?:\\p{IsArabicPresentationForms-A})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00464.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00465'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsCombiningHalfMarks})$')) and (every $s in tokenize('﷿', ',') satisfies not(matches($s, '^(?:\\p{IsCombiningHalfMarks})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00465.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00466'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsCJKCompatibilityForms})$')) and (every $s in tokenize('︯', ',') satisfies not(matches($s, '^(?:\\p{IsCJKCompatibilityForms})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00466.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00467'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsSmallFormVariants})$')) and (every $s in tokenize('﹏', ',') satisfies not(matches($s, '^(?:\\p{IsSmallFormVariants})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00467.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00468'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsArabicPresentationForms-B})$')) and (every $s in tokenize('﹯', ',') satisfies not(matches($s, '^(?:\\p{IsArabicPresentationForms-B})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00468.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00469'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsSpecials})$')) and (every $s in tokenize('﻾,￯', ',') satisfies not(matches($s, '^(?:\\p{IsSpecials})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00469.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00470'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsHalfwidthandFullwidthForms})$')) and (every $s in tokenize('﻿', ',') satisfies not(matches($s, '^(?:\\p{IsHalfwidthandFullwidthForms})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00470.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00471'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsOldItalic})$')) and (every $s in tokenize('�', ',') satisfies not(matches($s, '^(?:\\p{IsOldItalic})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00471.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00472'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsGothic})$')) and (every $s in tokenize('𐌯', ',') satisfies not(matches($s, '^(?:\\p{IsGothic})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00472.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00473'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsDeseret})$')) and (every $s in tokenize('𐍏', ',') satisfies not(matches($s, '^(?:\\p{IsDeseret})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00473.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00474'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsByzantineMusicalSymbols})$')) and (every $s in tokenize('𐑏', ',') satisfies not(matches($s, '^(?:\\p{IsByzantineMusicalSymbols})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00474.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00475'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsMusicalSymbols})$')) and (every $s in tokenize('𝃿', ',') satisfies not(matches($s, '^(?:\\p{IsMusicalSymbols})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00475.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00476'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsMathematicalAlphanumericSymbols})$')) and (every $s in tokenize('𝇿', ',') satisfies not(matches($s, '^(?:\\p{IsMathematicalAlphanumericSymbols})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00476.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00477'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsCJKUnifiedIdeographsExtensionB})$')) and (every $s in tokenize('𝟿', ',') satisfies not(matches($s, '^(?:\\p{IsCJKUnifiedIdeographsExtensionB})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00477.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00478'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsCJKCompatibilityIdeographsSupplement})$')) and (every $s in tokenize('𪛖', ',') satisfies not(matches($s, '^(?:\\p{IsCJKCompatibilityIdeographsSupplement})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00478.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00479'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsTags})$')) and (every $s in tokenize('𯨟', ',') satisfies not(matches($s, '^(?:\\p{IsTags})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00479.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00480'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('󿿽', ',') satisfies matches($s, '^(?:\\p{IsPrivateUse})$')) and (every $s in tokenize('󠁿', ',') satisfies not(matches($s, '^(?:\\p{IsPrivateUse})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00480.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00481'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('a, ', ',') satisfies matches($s, '^(?:.)$')) and (every $s in tokenize('aa,', ',') satisfies not(matches($s, '^(?:.)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00481.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00482'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize(' ,
,,	', ',') satisfies matches($s, '^(?:\\s)$')) and (every $s in tokenize('a,', ',') satisfies not(matches($s, '^(?:\\s)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00482.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00483'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('  	
a c
	 a 
	   
,aa a', ',') satisfies matches($s, '^(?:\\s*\\c\\s?\\c\\s+\\c\\s*)$')) and (every $s in tokenize(' a  a a,aaa, a aa ', ',') satisfies not(matches($s, '^(?:\\s*\\c\\s?\\c\\s+\\c\\s*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00483.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00484'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('aa,a a,a   a', ',') satisfies matches($s, '^(?:a\\s{0,3}a)$')) and (every $s in tokenize('a    a,aa a', ',') satisfies not(matches($s, '^(?:a\\s{0,3}a)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00484.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00485'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:a\\sb)$')) and (every $s in tokenize('a 
b', ',') satisfies not(matches($s, '^(?:a\\sb)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00485.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00486'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('a', ',') satisfies matches($s, '^(?:\\S)$')) and (every $s in tokenize(' ,
,,	,aa', ',') satisfies not(matches($s, '^(?:\\S)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00486.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00487'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\S+)$')) and (every $s in tokenize('a b', ',') satisfies not(matches($s, '^(?:\\S+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00487.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00488'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\S*)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\S*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00488.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00489'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('a b	, a  ', ',') satisfies matches($s, '^(?:\\S?\\s?\\S?\\s+)$')) and (every $s in tokenize('a  b, a b,ab', ',') satisfies not(matches($s, '^(?:\\S?\\s?\\S?\\s+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00489.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00490'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('_,:,a', ',') satisfies matches($s, '^(?:\\i)$')) and (every $s in tokenize(' ,
,,	', ',') satisfies not(matches($s, '^(?:\\i)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00490.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00491'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('_:abcdefghijklmnopqrstuvwxyzAZ:_', ',') satisfies matches($s, '^(?:\\i*)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\i*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00491.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00492'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\i+)$')) and (every $s in tokenize('a b', ',') satisfies not(matches($s, '^(?:\\i+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00492.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00493'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('zabcsdea', ',') satisfies matches($s, '^(?:\\c\\i*a)$')) and (every $s in tokenize('ab', ',') satisfies not(matches($s, '^(?:\\c\\i*a)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00493.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00494'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('a b  c  Z  :_   dy 	b 
   ', ',') satisfies matches($s, '^(?:[\\s\\i]*)$')) and (every $s in tokenize('1', ',') satisfies not(matches($s, '^(?:[\\s\\i]*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00494.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00495'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize(' ,
,,	', ',') satisfies matches($s, '^(?:\\I)$')) and (every $s in tokenize('_,:,a', ',') satisfies not(matches($s, '^(?:\\I)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00495.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00496'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('1234', ',') satisfies matches($s, '^(?:\\I*)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\I*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00496.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00497'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('a  123c', ',') satisfies matches($s, '^(?:a\\I+\\c)$')) and (every $s in tokenize('b123c,a123 123cc', ',') satisfies not(matches($s, '^(?:a\\I+\\c)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00497.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00498'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('_,:,a', ',') satisfies matches($s, '^(?:\\c)$')) and (every $s in tokenize(' ,
,,	', ',') satisfies not(matches($s, '^(?:\\c)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00498.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00499'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('c?1 abc,?0zzz', ',') satisfies matches($s, '^(?:\\c?\\?\\d\\s\\c+)$')) and (every $s in tokenize('aa?3 c,a?2
', ',') satisfies not(matches($s, '^(?:\\c?\\?\\d\\s\\c+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00499.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00500'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('a,aa,aaaaaaaaaaaaaaaaaaaaaaaaaa', ',') satisfies matches($s, '^(?:\\c?\\c+\\c*)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\c?\\c+\\c*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00500.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00501'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize(' ,
,,	', ',') satisfies matches($s, '^(?:\\C)$')) and (every $s in tokenize('_,:,a', ',') satisfies not(matches($s, '^(?:\\C)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00501.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00502'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('a*a**a***,aa*a', ',') satisfies matches($s, '^(?:\\c\\C?\\c\\C+\\c\\C*)$')) 
        and (every $s in tokenize(',a12b1c1,ab12345,1a2a2,a1b1c1a', ',') satisfies not(matches($s, '^(?:\\c\\C?\\c\\C+\\c\\C*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00502.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00503'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('0,۰,০,੦,૦,୦,௧,౦,೦,൦,๐,໐,༠,၀,០,᠐,０,𝟎,9,٩,۹,९,৯,੯,૯,୯,௯,౯,೯,൯,๙,໙,༩,၉,៩,᠙,９,𝟿', ',') satisfies matches($s, '^(?:\\d)$')) 
        and (every $s in tokenize('),ٙ,ۮ,॥,৥,੥,૥,୥,౥,೥,൥,้,໏,༙,္,፨,៟,᠉,）,𝟍,:,٪,ۺ,॰,ৰ,੹,૰,୰,௰,౰,೰,൰,๚,໚,༪,၊,፲,៪,᠚,：,𝠀', ',') satisfies not(matches($s, '^(?:\\d)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00503.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00504'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('),ٙ,ۮ,॥,৥,੥,૥,୥,౥,೥,൥,้,໏,༙,္,፨,៟,᠉,）,𝟍,:,٪,ۺ,॰,ৰ,੹,૰,୰,௰,౰,೰,൰,๚,໚,༪,၊,፲,៪,᠚,：,𝠀', ',') satisfies matches($s, '^(?:\\D)$')) 
        and (every $s in tokenize('0,٠,۰,०,০,૦,௧,౦,೦,൦,๐,໐,༠,၀,០,᠐,０,𝟎,9,٩,۹,९,৯,੯,૯,୯,௯,౯,೯,൯,๙,໙,༩,၉,៩,᠙,９,𝟿', ',') satisfies not(matches($s, '^(?:\\D)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00504.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00505'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\w)$')) and (every $s in tokenize(',܏,,‐,︷,},“,»,༄, , , ', ',') satisfies not(matches($s, '^(?:\\w)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00505.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00506'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\W)$')) and (every $s in tokenize('A,𝞨,a,a,𝟉,ǅ,ǅ,ῼ,ʰ,ʰ,ﾟ,א,א,𪘀,ً,𝆭,ः,𝅲,ः,𝅲,⃝,⃝,⃢,０,𝟿,𐍊,𐍊,〥,²,²,𐌣,⁄,￢,₠,₠,￦,゛,゛,￣,㆐,㆐,𝇝', ',') satisfies not(matches($s, '^(?:\\W)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00506.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00507'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('true', ',') satisfies matches($s, '^(?:true)$')) and (every $s in tokenize('false', ',') satisfies not(matches($s, '^(?:true)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00507.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00508'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('false', ',') satisfies matches($s, '^(?:false)$')) and (every $s in tokenize('true', ',') satisfies not(matches($s, '^(?:false)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00508.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00509'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('true,false', ',') satisfies matches($s, '^(?:(true|false))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:(true|false))$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00509.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00510'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('1', ',') satisfies matches($s, '^(?:(1|true))$')) and (every $s in tokenize('0', ',') satisfies not(matches($s, '^(?:(1|true))$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00510.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00511'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('0', ',') satisfies matches($s, '^(?:(1|true|false|0|0))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:(1|true|false|0|0))$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00511.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00512'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('1111,11001010', ',') satisfies matches($s, '^(?:([0-1]{4}|(0|1){8}))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:([0-1]{4}|(0|1){8}))$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00512.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00513'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('AF01D1', ',') satisfies matches($s, '^(?:AF01D1)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:AF01D1)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00513.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00514'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('1.001,1.001', ',') satisfies matches($s, '^(?:\\d*\\.\\d+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\d*\\.\\d+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00514.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00515'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('http://www.foo.com', ',') satisfies matches($s, '^(?:http://\\c*)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:http://\\c*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00515.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00516'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('a:b', ',') satisfies matches($s, '^(?:[\\i\\c]+:[\\i\\c]+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:[\\i\\c]+:[\\i\\c]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00516.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00517'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('P1111Y12M', ',') satisfies matches($s, '^(?:P\\p{Nd}{4}Y\\p{Nd}{2}M)$')) and (every $s in tokenize('P111Y12M,P1111Y1M,P11111Y12M,P1111Y,P12M,P11111Y00M,P11111Y13M', ',') satisfies not(matches($s, '^(?:P\\p{Nd}{4}Y\\p{Nd}{2}M)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00517.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00518'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('2001-06-06T12:12:00', ',') satisfies matches($s, '^(?:\\p{Nd}{4}-\\d\\d-\\d\\dT\\d\\d:\\d\\d:\\d\\d)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{Nd}{4}-\\d\\d-\\d\\dT\\d\\d:\\d\\d:\\d\\d)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00518.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00519'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('11:00:00,13:20:00-05:00', ',') satisfies matches($s, '^(?:\\p{Nd}{2}:\\d\\d:\\d\\d(\\-\\d\\d:\\d\\d)?)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{Nd}{2}:\\d\\d:\\d\\d(\\-\\d\\d:\\d\\d)?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00519.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00520'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('1999-12-12', ',') satisfies matches($s, '^(?:\\p{Nd}{4}-\\p{Nd}{2}-\\p{Nd}{2})$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{Nd}{4}-\\p{Nd}{2}-\\p{Nd}{2})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00520.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00521'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','\\p{Nd}{4}-\\[{Nd}{2}')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00521.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00522'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('1999', ',') satisfies matches($s, '^(?:\\p{Nd}{4})$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{Nd}{4})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00522.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00523'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{Nd}{2})$')) and (every $s in tokenize('1999', ',') satisfies not(matches($s, '^(?:\\p{Nd}{2})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00523.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00524'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('--03-14', ',') satisfies matches($s, '^(?:--0[123]\\-(12|14))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:--0[123]\\-(12|14))$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00524.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00525'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('---30', ',') satisfies matches($s, '^(?:---([123]0)|([12]?[1-9])|(31))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:---([123]0)|([12]?[1-9])|(31))$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00525.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00526'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('--12--', ',') satisfies matches($s, '^(?:--((0[1-9])|(1(1|2)))--)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:--((0[1-9])|(1(1|2)))--)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00526.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00527'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('a,abcdef', ',') satisfies matches($s, '^(?:\\c+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\c+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00527.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00528'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('ch-a', ',') satisfies matches($s, '^(?:\\c{2,4})$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\c{2,4})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00528.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00529'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('ab', ',') satisfies matches($s, '^(?:[\\i\\c]*)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:[\\i\\c]*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00529.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00530'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('a1b,ab,ab,name1', ',') satisfies matches($s, '^(?:\\c[\\c\\d]*)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\c[\\c\\d]*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00530.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00531'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('10000101,10000201', ',') satisfies matches($s, '^(?:\\p{Nd}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{Nd}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00531.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00532'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\-\\d\\d)$')) and (every $s in tokenize('11', ',') satisfies not(matches($s, '^(?:\\-\\d\\d)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00532.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00533'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\-?\\d)$')) and (every $s in tokenize('+1', ',') satisfies not(matches($s, '^(?:\\-?\\d)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00533.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00534'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('123,12', ',') satisfies matches($s, '^(?:\\d+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\d+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00534.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00535'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('-300', ',') satisfies matches($s, '^(?:\\-?[0-3]{3})$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\-?[0-3]{3})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00535.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00536'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('-128', ',') satisfies matches($s, '^(?:((\\-|\\+)?[1-127])|(\\-?128))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:((\\-|\\+)?[1-127])|(\\-?128))$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00536.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00537'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('1111', ',') satisfies matches($s, '^(?:\\p{Nd}\\d+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{Nd}\\d+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00537.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00538'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('123', ',') satisfies matches($s, '^(?:\\d+\\d+\\d+)$')) and (every $s in tokenize('12', ',') satisfies not(matches($s, '^(?:\\d+\\d+\\d+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00538.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00539'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\d+\\d+\\p{Nd}\\d+)$')) and (every $s in tokenize('123', ',') satisfies not(matches($s, '^(?:\\d+\\d+\\p{Nd}\\d+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00539.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00540'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('+1,1,+9', ',') satisfies matches($s, '^(?:\\+?\\d)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\+?\\d)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00540.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00541'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','++')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00541.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00542'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('9,0', ',') satisfies matches($s, '^(?:[0-9]*)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:[0-9]*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00542.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00543'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('-11111,-9', ',') satisfies matches($s, '^(?:\\-[0-9]*)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\-[0-9]*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00543.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00544'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('1,3', ',') satisfies matches($s, '^(?:[13])$')) and (every $s in tokenize('2', ',') satisfies not(matches($s, '^(?:[13])$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00544.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00545'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('112233123,abcaabbccabc', ',') satisfies matches($s, '^(?:[123]+|[abc]+)$')) and (every $s in tokenize('1a,a1', ',') satisfies not(matches($s, '^(?:[123]+|[abc]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00545.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00546'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('112233123,abcaabbccabc,abab', ',') satisfies matches($s, '^(?:([abc]+)|([123]+))$')) and (every $s in tokenize('1a,1a,x', ',') satisfies not(matches($s, '^(?:([abc]+)|([123]+))$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00546.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00547'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('abab', ',') satisfies matches($s, '^(?:[abxyz]+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:[abxyz]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00547.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00548'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('Hello World', ',') satisfies matches($s, '^(?:(\\p{Lu}\\w*)\\s(\\p{Lu}\\w*))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:(\\p{Lu}\\w*)\\s(\\p{Lu}\\w*))$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00548.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00549'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('Hello World', ',') satisfies matches($s, '^(?:(\\p{Lu}\\p{Ll}*)\\s(\\p{Lu}\\p{Ll}*))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:(\\p{Lu}\\p{Ll}*)\\s(\\p{Lu}\\p{Ll}*))$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00549.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00550'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('Hello World', ',') satisfies matches($s, '^(?:(\\P{Ll}\\p{Ll}*)\\s(\\P{Ll}\\p{Ll}*))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:(\\P{Ll}\\p{Ll}*)\\s(\\P{Ll}\\p{Ll}*))$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00550.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00551'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('hellO worlD', ',') satisfies matches($s, '^(?:(\\P{Lu}+\\p{Lu})\\s(\\P{Lu}+\\p{Lu}))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:(\\P{Lu}+\\p{Lu})\\s(\\P{Lu}+\\p{Lu}))$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00551.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00552'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('ǅello ǅorld', ',') satisfies matches($s, '^(?:(\\p{Lt}\\w*)\\s(\\p{Lt}*\\w*))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:(\\p{Lt}\\w*)\\s(\\p{Lt}*\\w*))$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00552.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00553'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('Hello World', ',') satisfies matches($s, '^(?:(\\P{Lt}\\w*)\\s(\\P{Lt}*\\w*))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:(\\P{Lt}\\w*)\\s(\\P{Lt}*\\w*))$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00553.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00554'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[@-D]+)$')) and (every $s in tokenize('eE?@ABCDabcdeE', ',') satisfies not(matches($s, '^(?:[@-D]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00554.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00555'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[>-D]+)$')) and (every $s in tokenize('eE=>?@ABCDabcdeE', ',') satisfies not(matches($s, '^(?:[>-D]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00555.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00556'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','[\\u0554-\\u0557]+')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00556.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00557'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[X-\\]]+)$')) and (every $s in tokenize('wWXYZxyz[\\]^', ',') satisfies not(matches($s, '^(?:[X-\\]]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00557.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00558'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','[X-\\u0533]+')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00558.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00559'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[X-a]+)$')) and (every $s in tokenize('wWAXYZaxyz', ',') satisfies not(matches($s, '^(?:[X-a]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00559.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00560'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[X-c]+)$')) and (every $s in tokenize('wWABCXYZabcxyz', ',') satisfies not(matches($s, '^(?:[X-c]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00560.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00561'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','[X-\\u00C0]+')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00561.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00562'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','[\\u0100\\u0102\\u0104]+')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00562.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00563'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','[B-D\\u0130]+')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00563.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00564'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','[\\u013B\\u013D\\u013F]+')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00564.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00565'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('Foo Bar,Foo Bar', ',') satisfies matches($s, '^(?:(Foo) (Bar))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:(Foo) (Bar))$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00565.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00566'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','\\p{klsak')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00566.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00567'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','{5')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00567.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00568'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','{5,')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00568.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00569'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','{5,6')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00569.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00570'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(?r:foo)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00570.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00571'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(?c:foo)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00571.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00572'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(?n:(foo)(\\s+)(bar))')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00572.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00573'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(?e:foo)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00573.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00574'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(?+i:foo)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00574.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00575'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:foo([\\d]*)bar)$')) and (every $s in tokenize('hello123foo230927bar1412d,hello123foo230927bar1412d', ',') satisfies not(matches($s, '^(?:foo([\\d]*)bar)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00575.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00576'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:([\\D]*)bar)$')) and (every $s in tokenize('65498foobar58719,65498foobar58719', ',') satisfies not(matches($s, '^(?:([\\D]*)bar)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00576.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00577'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:foo([\\s]*)bar)$')) and (every $s in tokenize('wiofoo   bar3270,wiofoo   bar3270', ',') satisfies not(matches($s, '^(?:foo([\\s]*)bar)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00577.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00578'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:foo([\\S]*))$')) and (every $s in tokenize('sfdfoobar    3270,sfdfoobar    3270', ',') satisfies not(matches($s, '^(?:foo([\\S]*))$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00578.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00579'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:foo([\\w]*))$')) and (every $s in tokenize('sfdfoobar    3270,sfdfoobar    3270', ',') satisfies not(matches($s, '^(?:foo([\\w]*))$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00579.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00580'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:foo([\\W]*)bar)$')) and (every $s in tokenize('wiofoo   bar3270,wiofoo   bar3270', ',') satisfies not(matches($s, '^(?:foo([\\W]*)bar)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00580.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00581'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('Hello World,Hello World', ',') satisfies matches($s, '^(?:([\\p{Lu}]\\w*)\\s([\\p{Lu}]\\w*))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:([\\p{Lu}]\\w*)\\s([\\p{Lu}]\\w*))$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00581.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00582'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('Hello World,Hello World', ',') satisfies matches($s, '^(?:([\\P{Ll}][\\p{Ll}]*)\\s([\\P{Ll}][\\p{Ll}]*))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:([\\P{Ll}][\\p{Ll}]*)\\s([\\P{Ll}][\\p{Ll}]*))$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00582.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00583'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','foo([a-\\d]*)bar')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00583.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00584'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','([5-\\D]*)bar')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00584.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00585'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','foo([6-\\s]*)bar')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00585.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00586'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','foo([c-\\S]*)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00586.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00587'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','foo([7-\\w]*)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00587.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00588'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','foo([a-\\W]*)bar')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00588.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00589'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','([f-\\p{Lu}]\\w*)\\s([\\p{Lu}]\\w*)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00589.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00590'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','([1-\\P{Ll}][\\p{Ll}]*)\\s([\\P{Ll}][\\p{Ll}]*)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00590.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00591'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','[\\p]')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00591.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00592'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','[\\P]')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00592.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00593'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','([\\pfoo])')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00593.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00594'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','([\\Pfoo])')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00594.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00595'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(\\p{')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00595.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00596'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(\\p{Ll')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00596.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00597'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(foo)([\\x41]*)(bar)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00597.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00598'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(foo)([\\u0041]*)(bar)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00598.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00599'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:(foo)([\\r]*)(bar))$')) and (every $s in tokenize('foo   bar', ',') satisfies not(matches($s, '^(?:(foo)([\\r]*)(bar))$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00599.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00600'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(foo)([\\o]*)(bar)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00600.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00601'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:(foo)\\d*bar)$')) and (every $s in tokenize('hello123foo230927bar1412d', ',') satisfies not(matches($s, '^(?:(foo)\\d*bar)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00601.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00602'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\D*(bar))$')) and (every $s in tokenize('65498foobar58719', ',') satisfies not(matches($s, '^(?:\\D*(bar))$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00602.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00603'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:(foo)\\s*(bar))$')) and (every $s in tokenize('wiofoo   bar3270', ',') satisfies not(matches($s, '^(?:(foo)\\s*(bar))$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00603.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00604'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:(foo)\\S*)$')) and (every $s in tokenize('sfdfoobar    3270', ',') satisfies not(matches($s, '^(?:(foo)\\S*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00604.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00605'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:(foo)\\w*)$')) and (every $s in tokenize('sfdfoobar    3270', ',') satisfies not(matches($s, '^(?:(foo)\\w*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00605.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00606'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:(foo)\\W*(bar))$')) and (every $s in tokenize('wiofoo   bar3270', ',') satisfies not(matches($s, '^(?:(foo)\\W*(bar))$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00606.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00607'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('Hello World', ',') satisfies matches($s, '^(?:\\p{Lu}(\\w*)\\s\\p{Lu}(\\w*))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{Lu}(\\w*)\\s\\p{Lu}(\\w*))$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00607.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00608'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('Hello World', ',') satisfies matches($s, '^(?:\\P{Ll}\\p{Ll}*\\s\\P{Ll}\\p{Ll}*)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\P{Ll}\\p{Ll}*\\s\\P{Ll}\\p{Ll}*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00608.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00609'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','foo(?(?#COMMENT)foo)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00609.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00610'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','foo(?(?afdfoo)bar)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00610.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00611'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:(foo) #foo        \\s+ #followed by 1 or more whitespace        (bar)  #followed by bar        )$')) and (every $s in tokenize('foo    bar', ',') satisfies not(matches($s, '^(?:(foo) #foo        \\s+ #followed by 1 or more whitespace        (bar)  #followed by bar        )$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00611.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00612'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:(foo) #foo        \\s+ #followed by 1 or more whitespace        (bar)  #followed by bar)$')) and (every $s in tokenize('foo    bar', ',') satisfies not(matches($s, '^(?:(foo) #foo        \\s+ #followed by 1 or more whitespace        (bar)  #followed by bar)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00612.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00613'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(foo) (?#foo) \\s+ (?#followed by 1 or more whitespace) (bar)  (?#followed by bar)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00613.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00614'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(foo) (?#foo) \\s+ (?#followed by 1 or more whitespace')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00614.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00615'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(foo)(\\077)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00615.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00616'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(foo)(\\77)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00616.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00617'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:(foo)(\\176))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:(foo)(\\176))$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00617.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00618'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(foo)(\\300)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00618.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00619'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(foo)(\\477)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00619.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00620'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(foo)(\\777)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00620.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00621'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(foo)(\\7770)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00621.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00622'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(foo)(\\7)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00622.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00623'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(foo)(\\40)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00623.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00624'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(foo)(\\040)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00624.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00625'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(foo)(\\377)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00625.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00626'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(foo)(\\400)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00626.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00627'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(foo)(\\x2a*)(bar)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00627.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00628'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(foo)(\\x2b*)(bar)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00628.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00629'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(foo)(\\x2c*)(bar)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00629.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00630'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(foo)(\\x2d*)(bar)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00630.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00631'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(foo)(\\x2e*)(bar)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00631.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00632'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(foo)(\\x2f*)(bar)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00632.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00633'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(foo)(\\x2A*)(bar)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00633.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00634'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(foo)(\\x2B*)(bar)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00634.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00635'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(foo)(\\x2C*)(bar)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00635.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00636'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(foo)(\\x2D*)(bar)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00636.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00637'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(foo)(\\x2E*)(bar)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00637.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00638'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(foo)(\\x2F*)(bar)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00638.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00639'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:(foo)(\\c*)(bar))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:(foo)(\\c*)(bar))$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00639.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00640'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:(foo)\\c)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:(foo)\\c)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00640.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00641'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:(foo)(\\c *)(bar))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:(foo)(\\c *)(bar))$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00641.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00642'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(foo)(\\c?*)(bar)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00642.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00643'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:(foo)(\\c`*)(bar))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:(foo)(\\c`*)(bar))$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00643.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00644'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:(foo)(\\c\\|*)(bar))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:(foo)(\\c\\|*)(bar))$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00644.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00645'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:(foo)(\\c\\[*)(bar))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:(foo)(\\c\\[*)(bar))$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00645.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00646'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','\\A(foo)\\s+(bar)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00646.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00647'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(foo)\\s+(bar)\\Z')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00647.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00648'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(foo)\\s+(bar)\\z')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00648.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00649'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','\\b@foo')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00649.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00650'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','\\b,foo')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00650.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00651'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','\\b\\[foo')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00651.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00652'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','\\B@foo')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00652.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00653'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','\\B,foo')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00653.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00654'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','\\B\\[foo')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00654.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00655'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('fooʰ barʱ', ',') satisfies matches($s, '^(?:(\\w+)\\s+(\\w+))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:(\\w+)\\s+(\\w+))$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00655.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00656'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:(foo\\w+)\\s+(bar\\w+))$')) and (every $s in tokenize('STARTfooー bar々END,STARTfooﾞ barﾟEND', ',') satisfies not(matches($s, '^(?:(foo\\w+)\\s+(bar\\w+))$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00656.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00657'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:([^{}]|\\n)+)$')) and (every $s in tokenize('{{{{Hello  World  }END', ',') satisfies not(matches($s, '^(?:([^{}]|\\n)+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00657.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00658'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:(([0-9])|([a-z])|([A-Z]))*)$')) and (every $s in tokenize('{hello 1234567890 world},{HELLO 1234567890 world},{1234567890 hello  world}', ',') satisfies not(matches($s, '^(?:(([0-9])|([a-z])|([A-Z]))*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00658.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00659'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:(([0-9])|([a-z])|([A-Z]))+)$')) and (every $s in tokenize('{hello 1234567890 world},{HELLO 1234567890 world},{1234567890 hello world}', ',') satisfies not(matches($s, '^(?:(([0-9])|([a-z])|([A-Z]))+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00659.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00660'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('aaabbbcccdddeeefff', ',') satisfies matches($s, '^(?:(([a-d]*)|([a-z]*)))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:(([a-d]*)|([a-z]*)))$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00660.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00661'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('dddeeeccceee', ',') satisfies matches($s, '^(?:(([d-f]*)|([c-e]*)))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:(([d-f]*)|([c-e]*)))$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00661.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00662'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('dddeeeccceee', ',') satisfies matches($s, '^(?:(([c-e]*)|([d-f]*)))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:(([c-e]*)|([d-f]*)))$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00662.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00663'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('aaabbbcccdddeeefff', ',') satisfies matches($s, '^(?:(([a-d]*)|(.*)))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:(([a-d]*)|(.*)))$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00663.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00664'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('dddeeeccceee', ',') satisfies matches($s, '^(?:(([d-f]*)|(.*)))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:(([d-f]*)|(.*)))$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00664.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00665'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('dddeeeccceee', ',') satisfies matches($s, '^(?:(([c-e]*)|(.*)))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:(([c-e]*)|(.*)))$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00665.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00666'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:CH)$')) and (every $s in tokenize('Ch,Ch', ',') satisfies not(matches($s, '^(?:CH)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00666.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00667'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:cH)$')) and (every $s in tokenize('Ch,Ch', ',') satisfies not(matches($s, '^(?:cH)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00667.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00668'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:AA)$')) and (every $s in tokenize('Aa,Aa', ',') satisfies not(matches($s, '^(?:AA)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00668.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00669'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:aA)$')) and (every $s in tokenize('Aa,Aa', ',') satisfies not(matches($s, '^(?:aA)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00669.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00670'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:ı)$')) and (every $s in tokenize('I,I,I,i,I,i', ',') satisfies not(matches($s, '^(?:ı)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00670.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00671'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:İ)$')) and (every $s in tokenize('i,i,I,i,I,i', ',') satisfies not(matches($s, '^(?:İ)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00671.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00672'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:([0-9]+?)([\\w]+?))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:([0-9]+?)([\\w]+?))$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00672.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00673'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:([0-9]+?)([a-z]+?))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:([0-9]+?)([a-z]+?))$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00673.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00674'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','^[abcd]{0,16}*$')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00674.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00675'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','^[abcd]{1,}*$')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00675.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00676'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','^[abcd]{1}*$')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00676.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00677'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','^[abcd]{0,16}?*$')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00677.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00678'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','^[abcd]{1,}?*$')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00678.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00679'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','^[abcd]{1}?*$')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00679.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00680'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','^[abcd]*+$')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00680.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00681'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','^[abcd]+*$')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00681.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00682'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','^[abcd]?*$')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00682.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00683'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','^[abcd]*?+$')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00683.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00684'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','^[abcd]+?*$')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00684.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00685'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','^[abcd]??*$')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00685.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00686'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','^[abcd]*{0,5}$')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00686.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00687'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','^[abcd]+{0,5}$')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00687.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00688'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','^[abcd]?{0,5}$')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00688.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00689'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:http://([a-zA-z0-9\\-]*\\.?)*?(:[0-9]*)??/)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:http://([a-zA-z0-9\\-]*\\.?)*?(:[0-9]*)??/)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00689.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00690'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:http://([a-zA-Z0-9\\-]*\\.?)*?/)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:http://([a-zA-Z0-9\\-]*\\.?)*?/)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00690.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00691'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:([a-z]*?)([\\w]))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:([a-z]*?)([\\w]))$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00691.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00692'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('foo', ',') satisfies matches($s, '^(?:([a-z]*)([\\w]))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:([a-z]*)([\\w]))$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00692.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00693'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[abcd-[d]]+)$')) and (every $s in tokenize('dddaabbccddd', ',') satisfies not(matches($s, '^(?:[abcd-[d]]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00693.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00694'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\d-[357]]+)$')) and (every $s in tokenize('33312468955,51246897,3312468977', ',') satisfies not(matches($s, '^(?:[\\d-[357]]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00694.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00695'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\w-[b-y]]+)$')) and (every $s in tokenize('bbbaaaABCD09zzzyyy,bbbaaaABCD09zzzyyy,bbbaaaABCD09zzzyyy,bbbaaaABCD09zzzyyy', ',') satisfies not(matches($s, '^(?:[\\w-[b-y]]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00695.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00696'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\w-[\\d]]+)$')) and (every $s in tokenize('0AZaz9', ',') satisfies not(matches($s, '^(?:[\\w-[\\d]]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00696.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00697'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\w-[\\p{Ll}]]+)$')) and (every $s in tokenize('a09AZz', ',') satisfies not(matches($s, '^(?:[\\w-[\\p{Ll}]]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00697.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00698'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\d-[13579]]+)$')) and (every $s in tokenize('1024689', ',') satisfies not(matches($s, '^(?:[\\d-[13579]]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00698.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00699'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\p{Ll}-[ae-z]]+)$')) and (every $s in tokenize('aaabbbcccdddeee', ',') satisfies not(matches($s, '^(?:[\\p{Ll}-[ae-z]]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00699.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00700'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\p{Nd}-[2468]]+)$')) and (every $s in tokenize('20135798', ',') satisfies not(matches($s, '^(?:[\\p{Nd}-[2468]]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00700.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00701'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\P{Lu}-[ae-z]]+)$')) and (every $s in tokenize('aaabbbcccdddeee', ',') satisfies not(matches($s, '^(?:[\\P{Lu}-[ae-z]]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00701.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00702'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[abcd-[def]]+)$')) and (every $s in tokenize('fedddaabbccddd', ',') satisfies not(matches($s, '^(?:[abcd-[def]]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00702.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00703'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\d-[357a-z]]+)$')) and (every $s in tokenize('az33312468955', ',') satisfies not(matches($s, '^(?:[\\d-[357a-z]]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00703.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00704'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\d-[de357fgA-Z]]+)$')) and (every $s in tokenize('AZ51246897', ',') satisfies not(matches($s, '^(?:[\\d-[de357fgA-Z]]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00704.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00705'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\d-[357\\p{Ll}]]+)$')) and (every $s in tokenize('az3312468977', ',') satisfies not(matches($s, '^(?:[\\d-[357\\p{Ll}]]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00705.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00706'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\w-[b-y\\s]]+)$')) and (every $s in tokenize('  bbbaaaABCD09zzzyyy', ',') satisfies not(matches($s, '^(?:[\\w-[b-y\\s]]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00706.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00707'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\w-[\\d\\p{Po}]]+)$')) and (every $s in tokenize('!#0AZaz9', ',') satisfies not(matches($s, '^(?:[\\w-[\\d\\p{Po}]]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00707.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00708'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\w-[\\p{Ll}\\s]]+)$')) and (every $s in tokenize('a09AZz', ',') satisfies not(matches($s, '^(?:[\\w-[\\p{Ll}\\s]]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00708.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00709'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\d-[13579a-zA-Z]]+)$')) and (every $s in tokenize('AZ1024689', ',') satisfies not(matches($s, '^(?:[\\d-[13579a-zA-Z]]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00709.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00710'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\d-[13579abcd]]+)$')) and (every $s in tokenize('abcd١02468٠', ',') satisfies not(matches($s, '^(?:[\\d-[13579abcd]]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00710.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00711'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\d-[13579\\s]]+)$')) and (every $s in tokenize('  ١02468٠', ',') satisfies not(matches($s, '^(?:[\\d-[13579\\s]]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00711.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00712'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\w-[b-y\\p{Po}]]+)$')) and (every $s in tokenize('!#bbbaaaABCD09zzzyyy', ',') satisfies not(matches($s, '^(?:[\\w-[b-y\\p{Po}]]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00712.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00713'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ';') satisfies matches($s, '^(?:[\\w-[b-y!.,]]+)$')) and (every $s in tokenize('!.,bbbaaaABCD09zzzyyy', ';') satisfies not(matches($s, '^(?:[\\w-[b-y!.,]]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00713.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00714'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\p{Ll}-[ae-z0-9]]+)$')) and (every $s in tokenize('09aaabbbcccdddeee', ',') satisfies not(matches($s, '^(?:[\\p{Ll}-[ae-z0-9]]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00714.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00715'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\p{Nd}-[2468az]]+)$')) and (every $s in tokenize('az20135798', ',') satisfies not(matches($s, '^(?:[\\p{Nd}-[2468az]]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00715.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00716'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\P{Lu}-[ae-zA-Z]]+)$')) and (every $s in tokenize('AZaaabbbcccdddeee', ',') satisfies not(matches($s, '^(?:[\\P{Lu}-[ae-zA-Z]]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00716.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00717'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[abc-[defg]]+)$')) and (every $s in tokenize('dddaabbccddd', ',') satisfies not(matches($s, '^(?:[abc-[defg]]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00717.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00718'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\d-[abc]]+)$')) and (every $s in tokenize('abc09abc', ',') satisfies not(matches($s, '^(?:[\\d-[abc]]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00718.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00719'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\d-[a-zA-Z]]+)$')) and (every $s in tokenize('az09AZ,azAZ١02468٠', ',') satisfies not(matches($s, '^(?:[\\d-[a-zA-Z]]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00719.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00720'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\d-[\\p{Ll}]]+)$')) and (every $s in tokenize('az09az', ',') satisfies not(matches($s, '^(?:[\\d-[\\p{Ll}]]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00720.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00721'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\w-[\\p{Po}]]+)$')) and (every $s in tokenize('#a09AZz!', ',') satisfies not(matches($s, '^(?:[\\w-[\\p{Po}]]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00721.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00722'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\d-[\\D]]+)$')) and (every $s in tokenize('azAZ1024689', ',') satisfies not(matches($s, '^(?:[\\d-[\\D]]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00722.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00723'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[a-zA-Z0-9-[\\s]]+)$')) and (every $s in tokenize('  azAZ09', ',') satisfies not(matches($s, '^(?:[a-zA-Z0-9-[\\s]]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00723.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00724'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\p{Ll}-[A-Z]]+)$')) and (every $s in tokenize('AZaz09', ',') satisfies not(matches($s, '^(?:[\\p{Ll}-[A-Z]]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00724.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00725'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\p{Nd}-[a-z]]+)$')) and (every $s in tokenize('az09', ',') satisfies not(matches($s, '^(?:[\\p{Nd}-[a-z]]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00725.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00726'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\P{Lu}-[\\p{Lu}]]+)$')) and (every $s in tokenize('AZazAZ', ',') satisfies not(matches($s, '^(?:[\\P{Lu}-[\\p{Lu}]]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00726.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00727'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\P{Lu}-[A-Z]]+)$')) and (every $s in tokenize('AZazAZ', ',') satisfies not(matches($s, '^(?:[\\P{Lu}-[A-Z]]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00727.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00728'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\P{Nd}-[\\p{Nd}]]+)$')) and (every $s in tokenize('azAZ09', ',') satisfies not(matches($s, '^(?:[\\P{Nd}-[\\p{Nd}]]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00728.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00729'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\P{Nd}-[2-8]]+)$')) and (every $s in tokenize('1234567890azAZ1234567890', ',') satisfies not(matches($s, '^(?:[\\P{Nd}-[2-8]]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00729.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00730'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:([ ]|[\\w-[0-9]])+)$')) and (every $s in tokenize('09az AZ90', ',') satisfies not(matches($s, '^(?:([ ]|[\\w-[0-9]])+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00730.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00731'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:([0-9-[02468]]|[0-9-[13579]])+)$')) and (every $s in tokenize('az1234567890za', ',') satisfies not(matches($s, '^(?:([0-9-[02468]]|[0-9-[13579]])+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00731.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00732'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:([^0-9-[a-zAE-Z]]|[\\w-[a-zAF-Z]])+)$')) and (every $s in tokenize('azBCDE1234567890BCDEFza', ',') satisfies not(matches($s, '^(?:([^0-9-[a-zAE-Z]]|[\\w-[a-zAF-Z]])+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00732.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00733'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:([\\p{Ll}-[aeiou]]|[^\\w-[\\s]])+)$')) and (every $s in tokenize('aeiobcdxyz!@#aeio', ',') satisfies not(matches($s, '^(?:([\\p{Ll}-[aeiou]]|[^\\w-[\\s]])+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00733.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00734'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:98[\\d-[9]][\\d-[8]][\\d-[0]])$')) and (every $s in tokenize('98911 98881 98870 98871', ',') satisfies not(matches($s, '^(?:98[\\d-[9]][\\d-[8]][\\d-[0]])$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00734.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00735'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:m[\\w-[^aeiou]][\\w-[^aeiou]]t)$')) and (every $s in tokenize('mbbt mect meet', ',') satisfies not(matches($s, '^(?:m[\\w-[^aeiou]][\\w-[^aeiou]]t)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00735.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00736'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[abcdef-[^bce]]+)$')) and (every $s in tokenize('adfbcefda', ',') satisfies not(matches($s, '^(?:[abcdef-[^bce]]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00736.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00737'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[^cde-[ag]]+)$')) and (every $s in tokenize('agbfxyzga', ',') satisfies not(matches($s, '^(?:[^cde-[ag]]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00737.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00738'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[\\p{IsGreek}-[\\P{Lu}]]+)$')) and (every $s in tokenize('ΐϾΆΈϬϮЀ', ',') satisfies not(matches($s, '^(?:[\\p{IsGreek}-[\\P{Lu}]]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00738.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00739'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[a-zA-Z-[aeiouAEIOU]]+)$')) and (every $s in tokenize('aeiouAEIOUbcdfghjklmnpqrstvwxyz', ',') satisfies not(matches($s, '^(?:[a-zA-Z-[aeiouAEIOU]]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00739.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00740'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[abcd\\-d-[bc]]+)$')) and (every $s in tokenize('bbbaaa---dddccc,bbbaaa---dddccc', ',') satisfies not(matches($s, '^(?:[abcd\\-d-[bc]]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00740.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00741'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','[^a-f-[\\x00-\\x60\\u007B-\\uFFFF]]+')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00741.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00742'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','[a-f-[]]+')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00742.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00743'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','[\\[\\]a-f-[[]]+')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00743.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00744'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','[\\[\\]a-f-[]]]+')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00744.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00745'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','[ab\\-\\[cd-[-[]]]]')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00745.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00746'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','[ab\\-\\[cd-[[]]]]')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00746.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00747'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[a-[a-f]])$')) and (every $s in tokenize('abcdefghijklmnopqrstuvwxyz', ',') satisfies not(matches($s, '^(?:[a-[a-f]])$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00747.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00748'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[a-[c-e]]+)$')) and (every $s in tokenize('bbbaaaccc,```aaaccc', ',') satisfies not(matches($s, '^(?:[a-[c-e]]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00748.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00749'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[a-d\\--[bc]]+)$')) and (every $s in tokenize('cccaaa--dddbbb', ',') satisfies not(matches($s, '^(?:[a-d\\--[bc]]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00749.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00750'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','[[abcd]-[bc]]+')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00750.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00751'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','[-[e-g]+')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00751.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00752'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[-e-g]+)$')) and (every $s in tokenize('ddd---eeefffggghhh,ddd---eeefffggghhh', ',') satisfies not(matches($s, '^(?:[-e-g]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00752.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00753'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[a-e - m-p]+)$')) and (every $s in tokenize('---a b c d e m n o p---', ',') satisfies not(matches($s, '^(?:[a-e - m-p]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00753.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00754'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','[^-[bc]]')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00754.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00755'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','[A-[]+')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00755.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00756'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','[a\\-[bc]+')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00756.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00757'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','[a\\-[\\-\\-bc]+')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00757.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00758'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[a\\-\\[\\-\\[\\-bc]+)$')) and (every $s in tokenize('```bbbaaa---[[[cccddd', ',') satisfies not(matches($s, '^(?:[a\\-\\[\\-\\[\\-bc]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00758.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00759'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[abc\\--[b]]+)$')) and (every $s in tokenize('[[[```bbbaaa---cccddd', ',') satisfies not(matches($s, '^(?:[abc\\--[b]]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00759.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00760'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:[abc\\-z-[b]]+)$')) and (every $s in tokenize('```aaaccc---zzzbbb', ',') satisfies not(matches($s, '^(?:[abc\\-z-[b]]+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00760.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00761'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','[a-d\\-[b]+')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00761.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00762'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','[abcd\\-d\\-[bc]+')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00762.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00763'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','[a - c - [ b ] ]+')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00763.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00764'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','[a - c - [ b ] +')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00764.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00765'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(?<first_name>\\\\S+)\\\\s(?<last_name>\\\\S+)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00765.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00766'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(a+)(?:b*)(ccc)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00766.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00767'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','abc(?=XXX)\\w+')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00767.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00768'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','abc(?!XXX)\\w+')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00768.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00769'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','[^0-9]+(?>[0-9]+)3')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00769.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00770'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:^aa$)$')) and (every $s in tokenize('aA', ',') satisfies not(matches($s, '^(?:^aa$)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00770.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00771'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:^Aa$)$')) and (every $s in tokenize('aA', ',') satisfies not(matches($s, '^(?:^Aa$)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00771.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00772'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\s+\\d+)$')) and (every $s in tokenize('sdf 12sad', ',') satisfies not(matches($s, '^(?:\\s+\\d+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00772.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00773'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:foo\\d+)$')) and (every $s in tokenize('0123456789foo4567890foo         ,0123456789foo4567890foo1foo  0987', ',') satisfies not(matches($s, '^(?:foo\\d+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00773.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00774'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:foo\\s+)$')) and (every $s in tokenize('0123456789foo4567890foo         ', ',') satisfies not(matches($s, '^(?:foo\\s+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00774.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00775'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('hellofoo barworld', ',') satisfies matches($s, '^(?:(hello)foo\\s+bar(world))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:(hello)foo\\s+bar(world))$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00775.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00776'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:(hello)\\s+(world))$')) and (every $s in tokenize('What the hello world goodby,What the hello world goodby,START hello    world END,START hello    world END', ',') satisfies not(matches($s, '^(?:(hello)\\s+(world))$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00776.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00777'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:(foo)\\s+(bar))$')) and (every $s in tokenize('before textfoo barafter text,before textfoo barafter text,before textfoo barafter text', ',') satisfies not(matches($s, '^(?:(foo)\\s+(bar))$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00777.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00778'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:(d)(o)(g)(\\s)(c)(a)(t)(\\s)(h)(a)(s))$')) and (every $s in tokenize('My dog cat has fleas.,My dog cat has fleas.', ',') satisfies not(matches($s, '^(?:(d)(o)(g)(\\s)(c)(a)(t)(\\s)(h)(a)(s))$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00778.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00779'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:^([a-z0-9]+)@([a-z]+)\\.([a-z]+)$)$')) and (every $s in tokenize('bar@bar.foo.com', ',') satisfies not(matches($s, '^(?:^([a-z0-9]+)@([a-z]+)\\.([a-z]+)$)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00779.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00780'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:^http://www.([a-zA-Z0-9]+)\\.([a-z]+)$)$')) and (every $s in tokenize('http://www.foo.bar.com', ',') satisfies not(matches($s, '^(?:^http://www.([a-zA-Z0-9]+)\\.([a-z]+)$)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00780.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00781'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('abc\\nsfc', ',') satisfies matches($s, '^(?:(.*))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:(.*))$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00781.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00782'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:            ((.)+)      )$')) and (every $s in tokenize('abc', ',') satisfies not(matches($s, '^(?:            ((.)+)      )$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00782.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00783'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize(' abc       ', ',') satisfies matches($s, '^(?: ([^/]+)       )$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?: ([^/]+)       )$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00783.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00784'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','.*\\B(SUCCESS)\\B.*')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00784.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00785'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','\\060(\\061)?\\061')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00785.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00786'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(\\x30\\x31\\x32)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00786.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00787'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(\\u0034)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00787.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00788'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:(a+)(b*)(c?))$')) and (every $s in tokenize('aaabbbccc', ',') satisfies not(matches($s, '^(?:(a+)(b*)(c?))$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00788.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00789'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:(d+?)(e*?)(f??))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:(d+?)(e*?)(f??))$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00789.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00790'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('aaa', ',') satisfies matches($s, '^(?:(111|aaa))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:(111|aaa))$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00790.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00791'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(abbc)(?(1)111|222)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00791.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00792'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','.*\\b(\\w+)\\b')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00792.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00793'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('ab.cc', ',') satisfies matches($s, '^(?:a+\\.?b*\\.+c{2})$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:a+\\.?b*\\.+c{2})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00793.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00794'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:(abra(cad)?)+)$')) and (every $s in tokenize('abracadabra1abracadabra2abracadabra3', ',') satisfies not(matches($s, '^(?:(abra(cad)?)+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00794.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00795'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:^(cat|chat))$')) and (every $s in tokenize('cats are bad', ',') satisfies not(matches($s, '^(?:^(cat|chat))$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00795.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00796'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('209.25.0.111', ',') satisfies matches($s, '^(?:([0-9]+(\\.[0-9]+){3}))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:([0-9]+(\\.[0-9]+){3}))$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00796.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00797'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:qqq(123)*)$')) and (every $s in tokenize('Startqqq123123End', ',') satisfies not(matches($s, '^(?:qqq(123)*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00797.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00798'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:(\\s)?(-))$')) and (every $s in tokenize('once -upon-a time', ',') satisfies not(matches($s, '^(?:(\\s)?(-))$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00798.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00799'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:a(.)c(.)e)$')) and (every $s in tokenize('123abcde456aBCDe789', ',') satisfies not(matches($s, '^(?:a(.)c(.)e)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00799.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00800'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('Price: 5 dollars', ',') satisfies matches($s, '^(?:(\\S+):\\W(\\d+)\\s(\\D+))$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:(\\S+):\\W(\\d+)\\s(\\D+))$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00800.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00801'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','a[b-a]')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00801.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00802'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','a[]b')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00802.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00803'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','a[')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00803.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00804'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','a]')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00804.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00805'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','a[]]b')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00805.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00806'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','a[^]b]c')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00806.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00807'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','\\ba\\b')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00807.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00808'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','\\by\\b')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00808.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00809'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','\\Ba\\B')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00809.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00810'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','\\By\\b')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00810.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00811'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','\\by\\B')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00811.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00812'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','\\By\\B')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00812.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00813'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(*)b')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00813.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00814'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','a\\')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00814.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00815'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','abc)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00815.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00816'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(abc')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00816.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00817'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','a**')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00817.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00818'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:a.+?c)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:a.+?c)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00818.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00819'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','))((')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00819.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00820'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','\\10((((((((((a))))))))))')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00820.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00821'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','\\1(abc)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00821.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00822'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','\\1([a-c]*)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00822.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00823'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','\\1')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00823.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00824'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','\\2')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00824.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00825'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:(a)|\\1)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:(a)|\\1)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00825.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00826'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(a)|\\6')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00826.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00827'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(\\2b*?([a-c]))*')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00827.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00828'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(\\2b*?([a-c])){3}')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00828.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00829'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(x(a)\\3(\\2|b))+')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00829.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00830'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','((a)\\3(\\2|b)){2,}')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00830.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00831'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:ab*?bc)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:ab*?bc)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00831.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00832'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:ab{0,}?bc)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:ab{0,}?bc)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00832.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00833'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:ab+?bc)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:ab+?bc)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00833.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00834'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:ab{1,}?bc)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:ab{1,}?bc)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00834.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00835'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:ab{1,3}?bc)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:ab{1,3}?bc)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00835.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00836'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:ab{3,4}?bc)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:ab{3,4}?bc)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00836.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00837'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:ab{4,5}?bc)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:ab{4,5}?bc)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00837.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00838'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:ab??bc)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:ab??bc)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00838.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00839'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:ab{0,1}?bc)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:ab{0,1}?bc)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00839.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00840'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:ab??c)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:ab??c)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00840.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00841'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:ab{0,1}?c)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:ab{0,1}?c)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00841.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00842'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:a.*?c)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:a.*?c)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00842.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00843'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:a.{0,5}?c)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:a.{0,5}?c)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00843.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00844'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:(a+|b){0,1}?)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:(a+|b){0,1}?)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00844.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00845'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(?:(?:(?:(?:(?:(?:(?:(?:(?:(a))))))))))')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00845.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00846'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(?:(?:(?:(?:(?:(?:(?:(?:(?:(a|b|c))))))))))')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00846.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00847'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(.)(?:b|c|d)a')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00847.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00848'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(.)(?:b|c|d)*a')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00848.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00849'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(.)(?:b|c|d)+?a')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00849.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00850'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(.)(?:b|c|d)+a')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00850.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00851'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(.)(?:b|c|d){2}a')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00851.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00852'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(.)(?:b|c|d){4,5}a')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00852.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00853'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(.)(?:b|c|d){4,5}?a')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00853.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00854'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty',':(?:')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00854.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00855'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(.)(?:b|c|d){6,7}a')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00855.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00856'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(.)(?:b|c|d){6,7}?a')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00856.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00857'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(.)(?:b|c|d){5,6}a')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00857.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00858'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(.)(?:b|c|d){5,6}?a')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00858.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00859'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(.)(?:b|c|d){5,7}a')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00859.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00860'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(.)(?:b|c|d){5,7}?a')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00860.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00861'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(.)(?:b|(c|e){1,2}?|d)+?a')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00861.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00862'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','^(?:a\\1?){4}$')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00862.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00863'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','^(?:a(?(1)\\1)){4}$')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00863.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00864'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(?:(f)(o)(o)|(b)(a)(r))*')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00864.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00865'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(?:..)*a')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00865.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00866'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(?:..)*?a')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00866.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00867'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(?:(?i)a)b')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00867.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00868'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','((?i)a)b')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00868.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00869'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(?i:a)b')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00869.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00870'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','((?i:a))b')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00870.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00871'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(?:(?-i)a)b')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00871.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00872'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','((?-i)a)b')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00872.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00873'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(?-i:a)b')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00873.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00874'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','((?-i:a))b')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00874.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00875'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','((?-i:a.))b')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00875.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00876'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','((?s-i:a.))b')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00876.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00877'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(?:c|d)(?:)(?:a(?:)(?:b)(?:b(?:))(?:b(?:)(?:b)))')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00877.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00878'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(?:c|d)(?:)(?:aaaaaaaa(?:)(?:bbbbbbbb)(?:bbbbbbbb(?:))(?:bbbbbbbb(?:)(?:bbbbbbbb)))')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00878.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00879'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','\\1\\d(ab)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00879.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00880'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','x(~~)*(?:(?:F)?)?')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00880.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00881'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','^a(?#xxx){3}c')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00881.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00882'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','^a (?#xxx) (?#yyy) {3}c')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00882.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00883'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','^(?:?:a?b?)*$')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00883.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00884'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','((?s)^a(.))((?m)^b$)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00884.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00885'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','((?m)^b$)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00885.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00886'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(?m)^b')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00886.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00887'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(?m)^(b)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00887.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00888'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','((?m)^b)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00888.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00889'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','\\n((?m)^b)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00889.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00890'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','((?s).)c(?!.)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00890.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00891'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','((?s)b.)c(?!.)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00891.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00892'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','((c*)(?(1)a|b))')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00892.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00893'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','((q*)(?(1)b|a))')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00893.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00894'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(?(1)a|b)(x)?')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00894.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00895'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(?(1)b|a)(x)?')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00895.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00896'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(?(1)b|a)()?')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00896.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00897'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(?(1)b|a)()')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00897.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00898'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(?(1)a|b)()?')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00898.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00899'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','^(?:?(2)(\\())blah(\\))?$')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00899.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00900'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','^(?:?(2)(\\())blah(\\)+)?$')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00900.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00901'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(?(1?)a|b)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00901.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00902'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(?(1)a|b|c)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00902.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00903'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(ba\\2)(?=(a+?))')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00903.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00904'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','ba\\1(?=(a+?))$')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00904.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00905'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(?>a+)b')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00905.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00906'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','([[:]+)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00906.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00907'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','([[=]+)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00907.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00908'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','([[.]+)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00908.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00909'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','[a[:xyz:')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00909.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00910'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','[a[:xyz:]')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00910.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00911'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','([a[:xyz:]b]+)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00911.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00912'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','((?>a+)b)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00912.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00913'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(?>(a+))b')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00913.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00914'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','((?>[^()]+)|\\([^()]*\\))+')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00914.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00915'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','a{37,17}')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00915.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00916'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','a\\Z')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00916.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00917'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','b\\Z')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00917.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00918'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','b\\z')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00918.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00919'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','round\\(((?>[^()]+))\\)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00919.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00920'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(a\\1|(?(1)\\1)){2}')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00920.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00921'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(a\\1|(?(1)\\1)){1,2}')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00921.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00922'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(a\\1|(?(1)\\1)){0,2}')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00922.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00923'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(a\\1|(?(1)\\1)){2,}')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00923.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00924'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(a\\1|(?(1)\\1)){1,2}?')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00924.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00925'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(a\\1|(?(1)\\1)){0,2}?')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00925.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00926'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(a\\1|(?(1)\\1)){2,}?')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00926.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00927'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','\\1a(\\d*){0,2}')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00927.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00928'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','\\1a(\\d*){2,}')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00928.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00929'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','\\1a(\\d*){0,2}?')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00929.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00930'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','\\1a(\\d*){2,}?')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00930.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00931'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','z\\1a(\\d*){2,}?')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00931.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00932'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:((((((((((a))))))))))\\10)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:((((((((((a))))))))))\\10)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00932.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00933'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:(abc)\\1)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:(abc)\\1)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00933.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00934'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:([a-c]*)\\1)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:([a-c]*)\\1)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00934.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00935'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:(([a-c])b*?\\2)*)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:(([a-c])b*?\\2)*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00935.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00936'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:(([a-c])b*?\\2){3})$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:(([a-c])b*?\\2){3})$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00936.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00937'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','((\\3|b)\\2(a)x)+')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00937.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00938'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','((\\3|b)\\2(a)){2,}')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00938.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00939'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','a(?!b).')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00939.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00940'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','a(?=d).')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00940.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00941'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','a(?=c|d).')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00941.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00942'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','a(?:b|c|d)(.)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00942.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00943'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','a(?:b|c|d)*(.)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00943.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00944'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','a(?:b|c|d)+?(.)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00944.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00945'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','a(?:b|c|d)+(.)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00945.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00946'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','a(?:b|c|d){2}(.)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00946.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00947'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','a(?:b|c|d){4,5}(.)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00947.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00948'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','a(?:b|c|d){4,5}?(.)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00948.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00949'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','a(?:b|c|d){6,7}(.)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00949.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00950'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','a(?:b|c|d){6,7}?(.)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00950.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00951'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','a(?:b|c|d){5,6}(.)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00951.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00952'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','a(?:b|c|d){5,6}?(.)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00952.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00953'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','a(?:b|c|d){5,7}(.)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00953.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00954'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','a(?:b|c|d){5,7}?(.)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00954.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00955'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','a(?:b|(c|e){1,2}?|d)+?(.)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00955.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00956'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','^(?:?:b|a(?=(.)))*\\1')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00956.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00957'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('ab9ab', ',') satisfies matches($s, '^(?:(ab)\\d\\1)$')) and (every $s in tokenize('ab9aa', ',') satisfies not(matches($s, '^(?:(ab)\\d\\1)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00957.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00958'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','((q*)(?(1)a|b))')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00958.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00959'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(x)?(?(1)a|b)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00959.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00960'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(x)?(?(1)b|a)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00960.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00961'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','()?(?(1)b|a)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00961.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00962'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','()(?(1)b|a)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00962.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00963'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','()?(?(1)a|b)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00963.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00964'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','^(?:\\()?blah(?(1)(\\)))$')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00964.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00965'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','^(?:\\(+)?blah(?(1)(\\)))$')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00965.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00966'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(?(?!a)a|b)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00966.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00967'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(?(?!a)b|a)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00967.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00968'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(?(?=a)b|a)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00968.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00969'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(?(?=a)a|b)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00969.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00970'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(?=(a+?))(\\1ab)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00970.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00971'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','^(?:?=(a+?))\\1ab')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00971.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00972'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('33a34', '^(\\d){0,2}a\\1$')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00972.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00973'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('333a334', '^(\\d*){2,}a\\1$')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00973.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00974'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
         matches('22a3', '^(\\d*){0,2}?a\\1$')
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00974.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00975'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
        matches('22a3', '^(\\d*){2,}?a\\1$')
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00975.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00976'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
        matches('22a22z', '^(\\d*){2,}?a\\1z$')
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00976.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:boolean") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00976a'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
        matches('22a22', '^(\\d*){2,}?a\\1z$')
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00976a.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00976b'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
        matches('22a22', '^(\\d{2,})a\\1$')
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00976b.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00977'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(?>\\d+)3')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00977.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00978'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','(\\w(?=aa)aa)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00978.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00979'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('̴̵̶̷̸̡̢̧̨̛̖̗̘̙̜̝̞̟̠̣̤̥̦̩̪̫̬̭̮̯̰̱̲̳̹̺̻̼͇͈͉͍͎̀́̂̃̄̅̆̇̈̉̊̋̌̍̎̏̐̑̒̓̔̽̾̿̀́͂̓̈́͆͊͋͌̕̚ͅ͏͓͔͕͖͙͚͐͑͒͗͛ͣͤͥͦͧͨͩͪͫͬͭͮͯ͘͜͟͢͝͞͠͡', ',') satisfies matches($s, '^(?:\\p{IsCombiningDiacriticalMarks}+)$')) and (every $s in tokenize('a', ',') satisfies not(matches($s, '^(?:\\p{IsCombiningDiacriticalMarks}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00979.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00980'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('ЀЁЂЃЄЅІЇЈЉЊЋЌЍЎЏАБВГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯабвгдежзийклмнопрстуфхцчшщъыьэюяѐёђѓєѕіїјљњћќѝўџѠѡѢѣѤѥѦѧѨѩѪѫѬѭѮѯѰѱѲѳѴѵѶѷѸѹѺѻѼѽѾѿҀҁ҂҃҄҅҆҇҈҉ҊҋҌҍҎҏҐґҒғҔҕҖҗҘҙҚқҜҝҞҟҠҡҢңҤҥҦҧҨҩҪҫҬҭҮүҰұҲҳҴҵҶҷҸҹҺһҼҽҾҿӀӁӂӃӄӅӆӇӈӉӊӋӌӍӎӏӐӑӒӓӔӕӖӗӘәӚӛӜӝӞӟӠӡӢӣӤӥӦӧӨөӪӫӬӭӮӯӰӱӲӳӴӵӶӷӸӹӺӻӼӽӾӿ', ',') satisfies matches($s, '^(?:\\p{IsCyrillic}+)$')) and (every $s in tokenize('a', ',') satisfies not(matches($s, '^(?:\\p{IsCyrillic}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00980.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00981'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('', ',') satisfies matches($s, '^(?:\\p{IsHighSurrogates}+)$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:\\p{IsHighSurrogates}+)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00981.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00982'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('test@someverylongemailaddress.com', ',') satisfies matches($s, '^(?:^([0-9a-zA-Z]([-.\\w]*[0-9a-zA-Z])*@(([0-9a-zA-Z])+([-\\w]*[0-9a-zA-Z])*\\.)+[a-zA-Z]{2,9}))$')) and (every $s in tokenize('mhk%mhk.me.uk', ',') satisfies not(matches($s, '^(?:^([0-9a-zA-Z]([-.\\w]*[0-9a-zA-Z])*@(([0-9a-zA-Z])+([-\\w]*[0-9a-zA-Z])*\\.)+[a-zA-Z]{2,9}))$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00982.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00983'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('first.last@seznam.cz,first-last@seznam.cz', ',') satisfies matches($s, '^(?:[\\w\\-\\.]+@.*)$')) and (every $s in tokenize('first_last@seznam.cz', ',') satisfies not(matches($s, '^(?:[\\w\\-\\.]+@.*)$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00983.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00984'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('2,3,4,5,6,7,8,9,A,B,C,D,E,F,G,H,I,P,Q,R,S,T,U,V,W,X,Y,`,a,b,c,d,e,f,g,h,i,p,q,r,s,t,u,v,w,x,y,Ā,ā,Ă,ă,Ą,ą,Ć,ć,Ĉ,ĉ,Đ,đ,Ē,ē,Ĕ,ĕ,Ė,ė,Ę,ę,Ġ,ġ,Ģ,ģ,Ĥ,ĥ,Ħ,ħ,Ĩ,ĩ,İ,ı,Ĳ,ĳ,Ĵ,ĵ,Ķ,ķ,ĸ,Ĺ,ŀ,Ł,ł,Ń,ń,Ņ,ņ,Ň,ň,ŉ,Ő,ő,Œ,œ,Ŕ,ŕ,Ŗ,ŗ,Ř,ř,Š,š,Ţ,ţ,Ť,ť,Ŧ,ŧ,Ũ,ũ,Ű,ű,Ų,ų,Ŵ,ŵ,Ŷ,ŷ,Ÿ,Ź,ƀ,Ɓ,Ƃ,ƃ,Ƅ,ƅ,Ɔ,Ƈ,ƈ,Ɖ,Ɛ,Ƒ,ƒ,Ɠ,Ɣ,ƕ,Ɩ,Ɨ,Ƙ,ƙ,Ȁ,ȁ,Ȃ,ȃ,Ȅ,ȅ,Ȇ,ȇ,Ȉ,ȉ,Ȑ,ȑ,Ȓ,ȓ,Ȕ,ȕ,Ȗ,ȗ,Ș,ș,Ƞ,Ȣ,ȣ,Ȥ,ȥ,Ȧ,ȧ,Ȩ,ȩ,Ȱ,ȱ,Ȳ,ȳ,ɐ,ɑ,ɒ,ɓ,ɔ,ɕ,ɖ,ɗ,ɘ,ə,ɠ,ɡ,ɢ,ɣ,ɤ,ɥ,ɦ,ɧ,ɨ,ɩ,ɰ,ɱ,ɲ,ɳ,ɴ,ɵ,ɶ,ɷ,ɸ,ɹ,ʀ,ʁ,ʂ,ʃ,ʄ,ʅ,ʆ,ʇ,ʈ,ʉ,ʐ,ʑ,ʒ,ʓ,ʔ,ʕ,ʖ,ʗ,ʘ,ʙ,̀,́,̂,̃,̄,̅,̆,̇,̈,̉,̐,̑,̒,̓,̔,̕,̖,̗,̘,̙,̠,̡,̢,̣,̤,̥,̦,̧,̨,̩,̰,̱,̲,̳,̴,̵,̶,̷,̸,̹,̀,́,͂,̓,̈́,ͅ,͆,͇,͈,͉,͠,͡,͢,ͣ,ͤ,ͥ,ͦ,ͧ,ͨ,ͩ,ʹ,͵,΄,΅,Ά,Έ,Ή,ΐ,Α,Β,Γ,Δ,Ε,Ζ,Η,Θ,Ι,Ѐ,Ё,Ђ,Ѓ,Є,Ѕ,І,Ї,Ј,Љ,А,Б,В,Г,Д,Е,Ж,З,И,Й,Р,С,Т,У,Ф,Х,Ц,Ч,Ш,Щ,а,б,в,г,д,е,ж,з,и,й,р,с,т,у,ф,х,ц,ч,ш,щ,ѐ,ё,ђ,ѓ,є,ѕ,і,ї,ј,љ,Ѡ,ѡ,Ѣ,ѣ,Ѥ,ѥ,Ѧ,ѧ,Ѩ,ѩ,Ѱ,ѱ,Ѳ,ѳ,Ѵ,ѵ,Ѷ,ѷ,Ѹ,ѹ,Ҁ,ҁ,҂,҃,҄,҅,҆,҈,҉,Ґ,ґ,Ғ,ғ,Ҕ,ҕ,Җ,җ,Ҙ,ҙ,Ԁ,ԁ,Ԃ,ԃ,Ԅ,ԅ,Ԇ,ԇ,Ԉ,ԉ,Ա,Բ,Գ,Դ,Ե,Զ,Է,Ը,Թ,Հ,Ձ,Ղ,Ճ,Մ,Յ,Ն,Շ,Ո,Չ,Ր,Ց,Ւ,Փ,Ք,Օ,Ֆ,ՙ,ա,բ,գ,դ,ե,զ,է,ը,թ,հ,ձ,ղ,ճ,մ,յ,ն,շ,ո,չ,ր,ց,ւ,փ,ք,օ,ֆ,և,֑,֒,֓,֔,֕,֖,֗,֘,֙,ء,آ,أ,ؤ,إ,ئ,ا,ب,ة,ذ,ر,ز,س,ش,ص,ض,ط,ظ,ع,ـ,ف,ق,ك,ل,م,ن,ه,و,ى,ِ,ّ,ْ,ٓ,ٔ,ٕ,٠,١,٢,٣,٤,٥,٦,٧,٨,٩,ٰ,ٱ,ٲ,ٳ,ٴ,ٵ,ٶ,ٷ,ٸ,ٹ,ڀ,ځ,ڂ,ڃ,ڄ,څ,چ,ڇ,ڈ,ډ,ڐ,ڑ,ڒ,ړ,ڔ,ڕ,ږ,ڗ,ژ,ڙ,ܐ,ܑ,ܒ,ܓ,ܔ,ܕ,ܖ,ܗ,ܘ,ܙ,ܠ,ܡ,ܢ,ܣ,ܤ,ܥ,ܦ,ܧ,ܨ,ܩ,ܰ,ܱ,ܲ,ܳ,ܴ,ܵ,ܶ'||
      ',ܷ,ܸ,ܹ,݀,݁,݂,݃,݄,݅,݆,݇,݈,݉,ހ,ށ,ނ,ރ,ބ,ޅ,ކ,އ,ވ,މ,ސ,ޑ,ޒ,ޓ,ޔ,ޕ,ޖ,ޗ,ޘ,ޙ,ँ,ं,ः,अ,आ,इ,ई,उ,ऐ,ऑ,ऒ,ओ,औ,क,ख,ग,घ,ङ,ठ,ड,ढ,ण,त,थ,द,ध,न,ऩ,र,ऱ,ल,ळ,ऴ,व,श,ष,स,ह,ी,ु,ू,ृ,ॄ,ॅ,ॆ,े,ै,ॉ,ॐ,॑,॒,॓,॔,क़,ख़,ॠ,ॡ,ॢ,ॣ,०,१,२,३,ঁ,ং,ঃ,অ,আ,ই,ঈ,উ,ঐ,ও,ঔ,ক,খ,গ,ঘ,ঙ,က,ခ,ဂ,ဃ,င,စ,ဆ,ဇ,ဈ,ဉ,တ,ထ,ဒ,ဓ,န,ပ,ဖ,ဗ,ဘ,မ,ဠ,အ,ဣ,ဤ,ဥ,ဦ,ဧ,ဩ,ူ,ေ,ဲ,ံ,့,း,္,၀,၁,၂,၃,၄,၅,၆,၇,၈,၉,ၐ,ၑ,ၒ,ၓ,ၔ,ၕ,ၖ,ၗ,ၘ,ၙ,ᄀ,ᄁ,ᄂ,ᄃ,ᄄ,ᄅ,ᄆ,ᄇ,ᄈ,ᄉ,ᄐ,ᄑ,ᄒ,ᄓ,ᄔ,ᄕ,ᄖ,ᄗ,ᄘ,ᄙ,ᄠ,ᄡ,ᄢ,ᄣ,ᄤ,ᄥ,ᄦ,ᄧ,ᄨ,ᄩ,ᄰ,ᄱ,ᄲ,ᄳ,ᄴ,ᄵ,ᄶ,ᄷ,ᄸ,ᄹ,ᅀ,ᅁ,ᅂ,ᅃ,ᅄ,ᅅ,ᅆ,ᅇ,ᅈ,ᅉ,ᅐ,ᅑ,ᅒ,ᅓ,ᅔ,ᅕ,ᅖ,ᅗ,ᅘ,ᅙ,ᅠ,ᅡ,ᅢ,ᅣ,ᅤ,ᅥ,ᅦ,ᅧ,ᅨ,ᅩ,ᅰ,ᅱ,ᅲ,ᅳ,ᅴ,ᅵ,ᅶ,ᅷ,ᅸ,ᅹ,ᆀ,ᆁ,ᆂ,ᆃ,ᆄ,ᆅ,ᆆ,ᆇ,ᆈ,ᆉ,ᆐ,ᆑ,ᆒ,ᆓ,ᆔ,ᆕ,ᆖ,ᆗ,ᆘ,ᆙ,ሀ,ሁ,ሂ,ሃ,ሄ,ህ,ሆ,ለ,ሉ,ሐ,ሑ,ሒ,ሓ,ሔ,ሕ,ሖ,ሗ,መ,ሙ,ሠ,ሡ,ሢ,ሣ,ሤ,ሥ,ሦ,ሧ,ረ,ሩ,ሰ,ሱ,ሲ,ሳ,ሴ,ስ,ሶ,ሷ,ሸ,ሹ,ቀ,ቁ,ቂ,ቃ,ቄ,ቅ,ቆ,ቈ,ቐ,ቑ,ቒ,ቓ,ቔ,ቕ,ቖ,ቘ,በ,ቡ,ቢ,ባ,ቤ,ብ,ቦ,ቧ,ቨ,ቩ,ተ,ቱ,ቲ,ታ,ቴ,ት,ቶ,ቷ,ቸ,ቹ,ኀ,ኁ,ኂ,ኃ,ኄ,ኅ,ኆ,ኈ,ነ,ኑ,ኒ,ና,ኔ,ን,ኖ,ኗ,ኘ,ኙ,ጀ,ጁ,ጂ,ጃ,ጄ,ጅ,ጆ,ጇ,ገ,ጉ,ጐ,ጒ,ጓ,ጔ,ጕ,ጘ,ጙ,ጠ,ጡ,ጢ,ጣ,ጤ,ጥ,ጦ,ጧ,ጨ,ጩ,ጰ,ጱ,ጲ,ጳ,ጴ,ጵ,ጶ,ጷ,ጸ,ጹ,ፀ,ፁ,ፂ,ፃ,ፄ,ፅ,ፆ,ፈ,ፉ,ፐ,ፑ,ፒ,ፓ,ፔ,ፕ,ፖ,ፗ,ፘ,ፙ,፩,፰,፱,፲,፳,፴,፵,፶,፷,፸,፹,ᐁ,ᐂ,ᐃ,ᐄ,ᐅ,ᐆ,ᐇ,ᐈ,ᐉ,ᐐ,ᐑ,ᐒ,ᐓ,ᐔ,ᐕ,ᐖ,ᐗ,ᐘ,ᐙ,ᐠ,ᐡ,ᐢ,ᐣ,ᐤ,ᐥ,ᐦ,ᐧ,ᐨ,ᐩ,ᐰ,ᐱ,ᐲ,ᐳ,ᐴ,ᐵ,ᐶ,ᐷ,ᐸ,ᐹ,ᑀ,ᑁ,ᑂ,ᑃ,ᑄ,ᑅ,ᑆ,ᑇ,ᑈ,ᑉ,ᑐ,ᑑ,ᑒ,ᑓ,ᑔ,ᑕ,ᑖ,ᑗ,ᑘ,ᑙ,ᑠ,ᑡ,ᑢ,ᑣ,ᑤ,ᑥ,ᑦ,ᑧ,ᑨ,ᑩ,ᑰ,ᑱ,ᑲ,ᑳ,ᑴ,ᑵ,ᑶ,ᑷ,ᑸ,ᑹ,ᒀ,ᒁ,ᒂ,ᒃ,ᒄ,ᒅ,ᒆ,ᒇ,ᒈ,ᒉ,ᒐ'||
      ',ᒑ,ᒒ,ᒓ,ᒔ,ᒕ,ᒖ,ᒗ,ᒘ,ᒙ,ᔀ,ᔁ,ᔂ,ᔃ,ᔄ,ᔅ,ᔆ,ᔇ,ᔈ,ᔉ,ᔐ,ᔑ,ᔒ,ᔓ,ᔔ,ᔕ,ᔖ,ᔗ,ᔘ,ᔙ,ᔠ,ᔡ,ᔢ,ᔣ,ᔤ,ᔥ,ᔦ,ᔧ,ᔨ,ᔩ,ᔰ,ᔱ,ᔲ,ᔳ,ᔴ,ᔵ,ᔶ,ᔷ,ᔸ,ᔹ,ᕀ,ᕁ,ᕂ,ᕃ,ᕄ,ᕅ,ᕆ,ᕇ,ᕈ,ᕉ,ᕐ,ᕑ,ᕒ,ᕓ,ᕔ,ᕕ,ᕖ,ᕗ,ᕘ,ᕙ,ᕠ,ᕡ,ᕢ,ᕣ,ᕤ,ᕥ,ᕦ,ᕧ,ᕨ,ᕩ,ᕰ,ᕱ,ᕲ,ᕳ,ᕴ,ᕵ,ᕶ,ᕷ,ᕸ,ᕹ,ᖀ,ᖁ,ᖂ,ᖃ,ᖄ,ᖅ,ᖆ,ᖇ,ᖈ,ᖉ,ᖐ,ᖑ,ᖒ,ᖓ,ᖔ,ᖕ,ᖖ,ᖗ,ᖘ,ᖙ,ᘀ,ᘁ,ᘂ,ᘃ,ᘄ,ᘅ,ᘆ,ᘇ,ᘈ,ᘉ,ᘐ,ᘑ,ᘒ,ᘓ,ᘔ,ᘕ,ᘖ,ᘗ,ᘘ,ᘙ,ᘠ,ᘡ,ᘢ,ᘣ,ᘤ,ᘥ,ᘦ,ᘧ,ᘨ,ᘩ,ᘰ,ᘱ,ᘲ,ᘳ,ᘴ,ᘵ,ᘶ,ᘷ,ᘸ,ᘹ,ᙀ,ᙁ,ᙂ,ᙃ,ᙄ,ᙅ,ᙆ,ᙇ,ᙈ,ᙉ,ᙐ,ᙑ,ᙒ,ᙓ,ᙔ,ᙕ,ᙖ,ᙗ,ᙘ,ᙙ,ᙠ,ᙡ,ᙢ,ᙣ,ᙤ,ᙥ,ᙦ,ᙧ,ᙨ,ᙩ,ᙰ,ᙱ,ᙲ,ᙳ,ᙴ,ᙵ,ᙶ,ᚁ,ᚂ,ᚃ,ᚄ,ᚅ,ᚆ,ᚇ,ᚈ,ᚉ,ᚐ,ᚑ,ᚒ,ᚓ,ᚔ,ᚕ,ᚖ,ᚗ,ᚘ,ᚙ,ᜀ,ᜁ,ᜂ,ᜃ,ᜄ,ᜅ,ᜆ,ᜇ,ᜈ,ᜉ,ᜐ,ᜑ,ᜒ,ᜓ,᜔,ᜠ,ᜡ,ᜢ,ᜣ,ᜤ,ᜥ,ᜦ,ᜧ,ᜨ,ᜩ,ᜰ,ᜱ,ᜲ,ᜳ,᜴,ᝀ,ᝁ,ᝂ,ᝃ,ᝄ,ᝅ,ᝆ,ᝇ,ᝈ,ᝉ,ᝐ,ᝑ,ᝒ,ᝓ,ᝠ,ᝡ,ᝢ,ᝣ,ᝤ,ᝥ,ᝦ,ᝧ,ᝨ,ᝩ,ᝰ,ᝲ,ᝳ,ក,ខ,គ,ឃ,ង,ច,ឆ,ជ,ឈ,ញ,ថ,ទ,ធ,ន,ប,ផ,ព,ភ,ម,យ,᠐,᠑,᠒,᠓,᠔,᠕,᠖,᠗,᠘,᠙,ᠠ,ᠡ,ᠢ,ᠣ,ᠤ,ᠥ,ᠦ,ᠧ,ᠨ,ᠩ,ᠰ,ᠱ,ᠲ,ᠳ,ᠴ,ᠵ,ᠶ,ᠷ,ᠸ,ᠹ,ᡀ,ᡁ,ᡂ,ᡃ,ᡄ,ᡅ,ᡆ,ᡇ,ᡈ,ᡉ,ᡐ,ᡑ,ᡒ,ᡓ,ᡔ,ᡕ,ᡖ,ᡗ,ᡘ,ᡙ,ᡠ,ᡡ,ᡢ,ᡣ,ᡤ,ᡥ,ᡦ,ᡧ,ᡨ,ᡩ,ᡰ,ᡱ,ᡲ,ᡳ,ᡴ,ᡵ,ᡶ,ᡷ,ᢀ,ᢁ,ᢂ,ᢃ,ᢄ,ᢅ,ᢆ,ᢇ,ᢈ,ᢉ,ᢐ,ᢑ,ᢒ,ᢓ,ᢔ,ᢕ,ᢖ,ᢗ,ᢘ,ᢙ,⁄,⁒,⁰,ⁱ,⁴,⁵,⁶,⁷,⁸,⁹,₀,₁,₂,₃,₄,₅,₆,₇,₈,₉,℀,℁,ℂ,℃,℄,℅,℆,ℇ,℈,℉,ℐ,ℑ,ℒ,ℓ,℔,ℕ,№,℗,℘,ℙ,℠,℡,™,℣,ℤ,℥,Ω,℧,ℨ,℩,ℰ,ℱ,Ⅎ,ℳ,ℴ,ℵ,ℶ,ℷ,ℸ,ℹ,⅀,⅁,⅂,⅃,⅄,ⅅ,ⅆ,ⅇ,ⅈ,ⅉ,⅓,⅔,⅕,⅖,⅗,⅘,⅙,Ⅰ,Ⅱ,Ⅲ,Ⅳ,Ⅴ,Ⅵ,Ⅶ,Ⅷ,Ⅸ,Ⅹ,ⅰ,ⅱ,ⅲ,ⅳ,ⅴ,ⅵ,ⅶ,ⅷ,ⅸ,ⅹ,ↀ,ↁ,ↂ,Ↄ,←,↑,→,↓,↔,↕,↖,↗,↘,↙,∀,∁,∂,∃,∄,∅,∆,∇,∈,∉,∐,∑,−,∓,∔,∕,∖,∗,∘,∙,∠,∡,∢,∣,∤,∥,∦,∧,∨,∩,∰,∱,∲,∳,∴,∵'||
      ',∶,∷,∸,∹,≀,≁,≂,≃,≄,≅,≆,≇,≈,≉,≐,≑,≒,≓,≔,≕,≖,≗,≘,≙,≠,≡,≢,≣,≤,≥,≦,≧,≨,≩,≰,≱,≲,≳,≴,≵,≶,≷,≸,≹,⊀,⊁,⊂,⊃,⊄,⊅,⊆,⊇,⊈,⊉,⊐,⊑,⊒,⊓,⊔,⊕,⊖,⊗,⊘,⊙,⌀,⌁,⌂,⌃,⌄,⌅,⌆,⌇,⌈,⌉,⌐,⌑,⌒,⌓,⌔,⌕,⌖,⌗,⌘,⌙,⌠,⌡,⌢,⌣,⌤,⌥,⌦,⌧,⌨,⌰,⌱,⌲,⌳,⌴,⌵,⌶,⌷,⌸,⌹,⍀,⍁,⍂,⍃,⍄,⍅,⍆,⍇,⍈,⍉,⍐,⍑,⍒,⍓,⍔,⍕,⍖,⍗,⍘,⍙,⍠,⍡,⍢,⍣,⍤,⍥,⍦,⍧,⍨,⍩,⍰,⍱,⍲,⍳,⍴,⍵,⍶,⍷,⍸,⍹,⎀,⎁,⎂,⎃,⎄,⎅,⎆,⎇,⎈,⎉,⎐,⎑,⎒,⎓,⎔,⎕,⎖,⎗,⎘,⎙,␀,␁,␂,␃,␄,␅,␆,␇,␈,␉,␐,␑,␒,␓,␔,␕,␖,␗,␘,␙,␠,␡,␢,␣,␤,␥,␦,⑀,⑁,⑂,⑃,⑄,⑅,⑆,⑇,⑈,⑉,①,②,③,④,⑤,⑥,⑦,⑧,⑨,⑩,⑰,⑱,⑲,⑳,⑴,⑵,⑶,⑷,⑸,⑹,⒀,⒁,⒂,⒃,⒄,⒅,⒆,⒇,⒈,⒉,⒐,⒑,⒒,⒓,⒔,⒕,⒖,⒗,⒘,⒙,─,━,│,┃,┄,┅,┆,┇,┈,┉,┐,┑,┒,┓,└,┕,┖,┗,┘,┙,┠,┡,┢,┣,┤,┥,┦,┧,┨,┩,┰,┱,┲,┳,┴,┵,┶,┷,┸,┹,╀,╁,╂,╃,╄,╅,╆,╇,╈,╉,═,║,╒,╓,╔,╕,╖,╗,╘,╙,╠,╡,╢,╣,╤,╥,╦,╧,╨,╩,╰,╱,╲,╳,╴,╵,╶,╷,╸,╹,▀,▁,▂,▃,▄,▅,▆,▇,█,▉,▐,░,▒,▓,▔,▕,▖,▗,▘,▙,☀,☁,☂,☃,☄,★,☆,☇,☈,☉,☐,☑,☒,☓,☖,☗,☙,☠,☡,☢,☣,☤,☥,☦,☧,☨,☩,☰,☱,☲,☳,☴,☵,☶,☷,☸,☹,♀,♁,♂,♃,♄,♅,♆,♇,♈,♉,♐,♑,♒,♓,♔,♕,♖,♗,♘,♙,♠,♡,♢,♣,♤,♥,♦,♧,♨,♩,♰,♱,♲,♳,♴,♵,♶,♷,♸,♹,⚀,⚁,⚂,⚃,⚄,⚅,⚆,⚇,⚈,⚉,✁,✂,✃,✄,✆,✇,✈,✉,✐,✑,✒,✓,✔,✕,✖,✗,✘,✙,✠,✡,✢,✣,✤,✥,✦,✧,✩,✰,✱,✲,✳,✴,✵,✶,✷,✸,✹,❀,❁,❂,❃,❄,❅,❆,❇,❈,❉,❐,❑,❒,❖,❘,❙,❡,❢,❣,❤,❥,❦,❧,❶,❷,❸,❹,➀,➁,➂,➃,➄,➅,➆,➇,➈,➉,➐,➑,➒,➓,➔,➘,➙,⠀,⠁,⠂,⠃,⠄,⠅,⠆,⠇,⠈,⠉,⠐,⠑,⠒,⠓,⠔,⠕,⠖,⠗,⠘,⠙,⠠,⠡,⠢,⠣,⠤,⠥,⠦,⠧,⠨,⠩,⠰,⠱,⠲,⠳,⠴,⠵,⠶,⠷,⠸,⠹,⡀,⡁,⡂,⡃,⡄,⡅,⡆,⡇,⡈,⡉,⡐,⡑,⡒,⡓,⡔,⡕,⡖,⡗,⡘,⡙,⡠,⡡,⡢,⡣,⡤,⡥,⡦,⡧,⡨,⡩,⡰,⡱,⡲,⡳,⡴,⡵,⡶,⡷,⡸,⡹,⢀,⢁,⢂,⢃,⢄,⢅,⢆,⢇,⢈,⢉,⢐,⢑,⢒,⢓,⢔,⢕,⢖,⢗,⢘,⢙,⤀,⤁,⤂,⤃,⤄,⤅,⤆,⤇,⤈,⤉,⤐,⤑,⤒,⤓,⤔,⤕,⤖,⤗,⤘,⤙,⤠,⤡,⤢,⤣,⤤,⤥,⤦,⤧,⤨,⤩,⤰,⤱,⤲,⤳,⤴,⤵,⤶,⤷,⤸,⤹,⥀,⥁,⥂,⥃,⥄,⥅,⥆,⥇,⥈,⥉,⥐,⥑,⥒,⥓,⥔,⥕,⥖,⥗,⥘,⥙,⥠,⥡,⥢,⥣,⥤,⥥,⥦,⥧,⥨,⥩,⥰,⥱,⥲,⥳,⥴,⥵,⥶,⥷,⥸,⥹,⦀,⦁,⦂,⦙,〄,々,〆,〇,〒,〓,〠,〡,〢,〣,〤,〥,〦,〧,〨,〩,〱,〲,〳,〴,〵,〶,〷,〸,〹,ぁ,あ,ぃ,い,ぅ,う,ぇ,え,ぉ,ぐ,け,げ,こ,ご,さ,ざ,し,じ,す,だ,ち,ぢ,っ,つ,づ,て,で,と,ど,ば,ぱ,ひ,び,ぴ,ふ,ぶ,ぷ,へ,べ,む,め,も,ゃ,や,ゅ,ゆ,ょ,よ,ら,ゐ,ゑ,を,ん,ゔ,ゕ,ゖ,゙,ㄅ,ㄆ,ㄇ,ㄈ,ㄉ,ㄐ,ㄑ,ㄒ,ㄓ,ㄔ,ㄕ,ㄖ,ㄗ,ㄘ,ㄙ,ㄠ,ㄡ,ㄢ,ㄣ,ㄤ,ㄥ,ㄦ,ㄧ,ㄨ,ㄩ,ㄱ,ㄲ,ㄳ,ㄴ,ㄵ,ㄶ,ㄷ,ㄸ,ㄹ,ㅀ,ㅁ,ㅂ,ㅃ,ㅄ,ㅅ,ㅆ,ㅇ,ㅈ,ㅉ,ㅐ,ㅑ,ㅒ,ㅓ,ㅔ,ㅕ,ㅖ,ㅗ,ㅘ,ㅙ,ㅠ,ㅡ,ㅢ,ㅣ,ㅤ,ㅥ,ㅦ,ㅧ,ㅨ,ㅩ,ㅰ,ㅱ,ㅲ,ㅳ,ㅴ,ㅵ,ㅶ,ㅷ,ㅸ,ㅹ,ㆀ,ㆁ,ㆂ,ㆃ,ㆄ,ㆅ,ㆆ,ㆇ,ㆈ,ㆉ,㆐,㆑,㆒,㆓,㆔,㆕,㆖,㆗,㆘,㆙,㈀,㈁,㈂,㈃,㈄,㈅,㈆,㈇,㈈,㈉,㈐,㈑,㈒,㈓,㈔,㈕,㈖,㈗,㈘,㈙,㈠,㈡,㈢,㈣,㈤,㈥,㈦,㈧,㈨,㈩,㈰,㈱,㈲,㈳,㈴,㈵,㈶,㈷,㈸,㈹,㉀,㉁,㉂,㉃,㉑,㉒,㉓,㉔,㉕,㉖,㉗,㉘,㉙,㉠,㉡,㉢,㉣,㉤,㉥,㉦,㉧,㉨,㉩,㉰,㉱,㉲,㉳,㉴,㉵,㉶,㉷,㉸,㉹,㊀,㊁,㊂,㊃,㊄,㊅,㊆,㊇,㊈,㊉,㊐,㊑,㊒,㊓,㊔,㊕,㊖,㊗,㊘,㊙,㌀,㌁,㌂,㌃,㌄,㌅,㌆,㌇,㌈,㌉,㌐,㌑,㌒,㌓,㌔,㌕,㌖,㌗,㌘,㌙,㌠,㌡,㌢,㌣,㌤,㌥,㌦,㌧,㌨,㌩,㌰,㌱,㌲,㌳,㌴,㌵,㌶,㌷,㌸,㌹,㍀,㍁,㍂,㍃,㍄,㍅,㍆,㍇,㍈,㍉,㍐,㍑,㍒,㍓,㍔,㍕,㍖,㍗,㍘,㍙,㍠,㍡,㍢,㍣,㍤,㍥,㍦,㍧,㍨,㍩,㍰,㍱,㍲,㍳,㍴,㍵,㍶,㎀,㎁,㎂,㎃,㎄,㎅,㎆,㎇,㎈,㎉,㎐,㎑,㎒,㎓,㎔,㎕,㎖,㎗,㎘,㎙,㐀,㐁,㐂,㐃,㐄,㐅,㐆,㐇,㐈,㐉,㐐,㐑,㐒,㐓,㐔,㐕,㐖,㐗,㐘,㐙,㐠,㐡,㐢,㐣,㐤,㐥,㐦,㐧,㐨,㐩,㐰,㐱,㐲,㐳,㐴,㐵,㐶,㐷,㐸,㐹,㑀,㑁,㑂,㑃,㑄,㑅,㑆,㑇,㑈,㑉,㑐,㑑,㑒,㑓,㑔,㑕,㑖,㑗,㑘,㑙,㑠,㑡,㑢,㑣,㑤,㑥,㑦,㑧,㑨,㑩,㑰,㑱,㑲,㑳,㑴,㑵,㑶,㑷,㑸,㑹,㒀,㒁,㒂,㒃,㒄,㒅,㒆,㒇,㒈,㒉,㒐,㒑,㒒,㒓,㒔,㒕,㒖,㒗,㒘,㒙,㔀,㔁,㔂,㔃,㔄,㔅,㔆,㔇,㔈,㔉,㔐,㔑,㔒,㔓,㔔,㔕,㔖,㔗,㔘,㔙,㔠,㔡,㔢,㔣,㔤,㔥,㔦,㔧,㔨,㔩,㔰,㔱,㔲,㔳,㔴,㔵,㔶,㔷,㔸,㔹,㕀,㕁,㕂,㕃,㕄,㕅,㕆,㕇,㕈,㕉,㕐,㕑,㕒,㕓,㕔,㕕,㕖,㕗,㕘,㕙,㕠,㕡,㕢,㕣,㕤,㕥,㕦,㕧,㕨,㕩,㕰,㕱,㕲,㕳,㕴,㕵,㕶,㕷,㕸,㕹,㖀,㖁,㖂,㖃,㖄,㖅,㖆,㖇,㖈,㖉,㖐,㖑,㖒,㖓,㖔,㖕,㖖,㖗,㖘,㖙,㘀,㘁,㘂,㘃,㘄,㘅,㘆,㘇,㘈,㘉,㘐,㘑,㘒,㘓,㘔,㘕,㘖,㘗,㘘,㘙,㘠,㘡,㘢,㘣,㘤,㘥,㘦,㘧,㘨,㘩,㘰,㘱,㘲,㘳,㘴,㘵,㘶,㘷,㘸,㘹,㙀,㙁,㙂,㙃,㙄,㙅,㙆,㙇,㙈,㙉,㙐,㙑,㙒,㙓,㙔,㙕,㙖,㙗,㙘,㙙,㙠,㙡,㙢,㙣,㙤,㙥,㙦,㙧,㙨,㙩,㙰,㙱,㙲,㙳,㙴,㙵,㙶,㙷,㙸,㙹,㚀,㚁,㚂,㚃,㚄,㚅,㚆,㚇,㚈,㚉,㚐,㚑,㚒,㚓,㚔,㚕,㚖,㚗,㚘,㚙,㜀,㜁,㜂,㜃,㜄,㜅,㜆,㜇,㜈,㜉,㜐,㜑,㜒,㜓,㜔,㜕,㜖,㜗,㜘,㜙,㜠,㜡,㜢,㜣,㜤,㜥,㜦,㜧,㜨,㜩,㜰,㜱,㜲,㜳,㜴,㜵,㜶,㜷,㜸,㜹,㝀,㝁,㝂,㝃,㝄,㝅,㝆,㝇,㝈,㝉,㝐,㝑,㝒,㝓,㝔,㝕,㝖,㝗,㝘,㝙,㝠,㝡,㝢,㝣,㝤,㝥,㝦,㝧,㝨,㝩,㝰,㝱,㝲,㝳,㝴,㝵,㝶,㝷,㝸,㝹,㞀,㞁,㞂,㞃,㞄,㞅,㞆,㞇,㞈,㞉,㞐,㞑,㞒,㞓,㞔,㞕,㞖,㞗,㞘,㞙,㠀,㠁,㠂,㠃,㠄,㠅,㠆,㠇,㠈,㠉,㠐,㠑,㠒,㠓,㠔,㠕,㠖,㠗,㠘,㠙,㠠,㠡,㠢,㠣,㠤,㠥,㠦,㠧,㠨,㠩,㠰,㠱,㠲,㠳,㠴,㠵,㠶,㠷,㠸,㠹,㡀,㡁,㡂,㡃,㡄,㡅,㡆,㡇,㡈,㡉,㡐,㡑,㡒,㡓,㡔,㡕,㡖,㡗,㡘,㡙,㡠,㡡,㡢,㡣,㡤,㡥,㡦,㡧,㡨,㡩,㡰,㡱,㡲,㡳,㡴,㡵,㡶,㡷,㡸,㡹,㢀,㢁,㢂,㢃,㢄,㢅,㢆,㢇,㢈,㢉,㢐,㢑,㢒,㢓,㢔,㢕,㢖,㢗,㢘,㢙,㤀,㤁,㤂,㤃,㤄,㤅,㤆,㤇,㤈,㤉,㤐,㤑,㤒,㤓,㤔,㤕,㤖,㤗,㤘,㤙,㤠,㤡,㤢,㤣,㤤,㤥,㤦,㤧,㤨,㤩,㤰,㤱,㤲,㤳,㤴,㤵,㤶,㤷,㤸,㤹,㥀,㥁,㥂,㥃,㥄,㥅,㥆,㥇,㥈,㥉,㥐,㥑,㥒,㥓,㥔,㥕,㥖,㥗,㥘,㥙,㥠,㥡,㥢,㥣,㥤,㥥,㥦,㥧,㥨,㥩,㥰,㥱,㥲,㥳,㥴,㥵,㥶,㥷,㥸,㥹,㦀,㦁,㦂,㦃,㦄,㦅,㦆,㦇,㦈,㦉,㦐,㦑,㦒,㦓,㦔,㦕,㦖,㦗,㦘,㦙,䀀,䀁,䀂,䀃,䀄,䀅,䀆,䀇,䀈,䀉,䀐,䀑,䀒,䀓,䀔,䀕,䀖,䀗,䀘,䀙,䀠,䀡,䀢,䀣,䀤,䀥,䀦,䀧,䀨,䀩,䀰,䀱,䀲,䀳,䀴,䀵,䀶,䀷,䀸,䀹,䁀,䁁,䁂,䁃,䁄,䁅,䁆,䁇,䁈,䁉,䁐,䁑,䁒,䁓,䁔,䁕,䁖,䁗,䁘,䁙,䁠,䁡,䁢,䁣,䁤,䁥,䁦,䁧,䁨,䁩,䁰,䁱,䁲,䁳,䁴,䁵,䁶,䁷,䁸,䁹,䂀,䂁,䂂,䂃,䂄,䂅,䂆,䂇,䂈,䂉,䂐,䂑,䂒,䂓,䂔,䂕,䂖,䂗,䂘,䂙,䄀,䄁,䄂,䄃,䄄,䄅,䄆,䄇,䄈,䄉,䄐,䄑,䄒,䄓,䄔,䄕,䄖,䄗,䄘,䄙,䄠,䄡,䄢,䄣,䄤,䄥,䄦,䄧,䄨,䄩,䄰,䄱,䄲,䄳,䄴,䄵,䄶,䄷,䄸,䄹,䅀,䅁,䅂,䅃,䅄,䅅,䅆,䅇,䅈,䅉,䅐,䅑,䅒,䅓,䅔,䅕,䅖,䅗,䅘,䅙,䅠,䅡,䅢,䅣,䅤,䅥,䅦,䅧,䅨,䅩,䅰,䅱,䅲,䅳,䅴,䅵,䅶,䅷,䅸,䅹,䆀,䆁,䆂,䆃,䆄,䆅,䆆,䆇,䆈,䆉,䆐,䆑,䆒,䆓,䆔,䆕,䆖,䆗,䆘,䆙,䈀,䈁,䈂,䈃,䈄,䈅,䈆,䈇,䈈,䈉,䈐,䈑,䈒,䈓,䈔,䈕,䈖,䈗,䈘,䈙,䈠,䈡,䈢,䈣,䈤,䈥,䈦,䈧,䈨,䈩,䈰,䈱,䈲,䈳,䈴,䈵,䈶,䈷,䈸,䈹,䉀,䉁,䉂,䉃,䉄,䉅,䉆,䉇,䉈,䉉,䉐,䉑,䉒,䉓,䉔,䉕,䉖,䉗,䉘,䉙,䉠,䉡,䉢,䉣,䉤,䉥,䉦,䉧,䉨,䉩,䉰,䉱,䉲,䉳,䉴,䉵,䉶,䉷,䉸,䉹,䊀,䊁,䊂,䊃,䊄,䊅,䊆,䊇,䊈,䊉,䊐,䊑,䊒,䊓,䊔,䊕,䊖,䊗,䊘,䊙,䌀,䌁,䌂,䌃,䌄,䌅,䌆,䌇,䌈,䌉,䌐,䌑,䌒,䌓,䌔,䌕,䌖,䌗,䌘,䌙,䌠,䌡,䌢,䌣,䌤,䌥,䌦,䌧,䌨,䌩,䌰,䌱,䌲,䌳,䌴,䌵,䌶,䌷,䌸,䌹,䍀,䍁,䍂,䍃,䍄,䍅,䍆,䍇,䍈,䍉,䍐,䍑,䍒,䍓,䍔,䍕,䍖,䍗,䍘,䍙,䍠,䍡,䍢,䍣,䍤,䍥,䍦,䍧,䍨,䍩,䍰,䍱,䍲,䍳,䍴,䍵,䍶,䍷,䍸,䍹,䎀,䎁,䎂,䎃,䎄,䎅,䎆,䎇,䎈,䎉,䎐,䎑,䎒,䎓,䎔,䎕,䎖,䎗,䎘,䎙,䐀,䐁,䐂,䐃,䐄,䐅,䐆,䐇,䐈,䐉,䐐,䐑,䐒,䐓,䐔,䐕,䐖,䐗,䐘,䐙,䐠,䐡,䐢,䐣,䐤,䐥,䐦,䐧,䐨,䐩,䐰,䐱,䐲,䐳,䐴,䐵,䐶,䐷,䐸,䐹,䑀,䑁,䑂,䑃,䑄,䑅,䑆,䑇,䑈,䑉,䑐,䑑,䑒,䑓,䑔,䑕,䑖,䑗,䑘,䑙,䑠,䑡,䑢,䑣,䑤,䑥,䑦,䑧,䑨,䑩,䑰,䑱,䑲,䑳,䑴,䑵,䑶,䑷,䑸,䑹,䒀,䒁,䒂,䒃,䒄,䒅,䒆,䒇,䒈,䒉,䒐,䒑,䒒,䒓,䒔,䒕,䒖,䒗,䒘,䒙,䔀,䔁,䔂,䔃,䔄,䔅,䔆,䔇,䔈,䔉,䔐,䔑,䔒,䔓,䔔,䔕,䔖,䔗,䔘,䔙,䔠,䔡,䔢,䔣,䔤,䔥,䔦,䔧,䔨,䔩,䔰,䔱,䔲,䔳,䔴,䔵,䔶,䔷,䔸,䔹,䕀,䕁,䕂,䕃,䕄,䕅,䕆,䕇,䕈,䕉,䕐,䕑,䕒,䕓,䕔,䕕,䕖,䕗,䕘,䕙,䕠,䕡,䕢,䕣,䕤,䕥,䕦,䕧,䕨,䕩,䕰,䕱,䕲,䕳,䕴,䕵,䕶,䕷,䕸,䕹,䖀,䖁,䖂,䖃,䖄,䖅,䖆,䖇,䖈,䖉,䖐,䖑,䖒,䖓,䖔,䖕,䖖,䖗,䖘,䖙,䘀,䘁,䘂,䘃,䘄,䘅,䘆,䘇,䘈,䘉,䘐,䘑,䘒,䘓,䘔,䘕,䘖,䘗,䘘,䘙,䘠,䘡,䘢,䘣,䘤,䘥,䘦,䘧,䘨,䘩,䘰,䘱,䘲,䘳,䘴,䘵,䘶,䘷,䘸,䘹,䙀,䙁,䙂,䙃,䙄,䙅,䙆,䙇,䙈,䙉,䙐,䙑,䙒,䙓,䙔,䙕,䙖,䙗,䙘,䙙,䙠,䙡,䙢,䙣,䙤,䙥,䙦,䙧,䙨,䙩,䙰,䙱,䙲,䙳,䙴,䙵,䙶,䙷,䙸,䙹,䚀,䚁,䚂,䚃,䚄,䚅,䚆,䚇,䚈,䚉,䚐,䚑,䚒,䚓,䚔,䚕,䚖,䚗,䚘,䚙,䜀,䜁,䜂,䜃,䜄,䜅,䜆,䜇,䜈,䜉,䜐,䜑,䜒,䜓,䜔,䜕,䜖,䜗,䜘,䜙,䜠,䜡,䜢,䜣,䜤,䜥,䜦,䜧,䜨,䜩,䜰,䜱,䜲,䜳,䜴,䜵,䜶,䜷,䜸,䜹,䝀,䝁,䝂,䝃,䝄,䝅,䝆,䝇,䝈,䝉,䝐,䝑,䝒,䝓,䝔,䝕,䝖,䝗,䝘,䝙,䝠,䝡,䝢,䝣,䝤,䝥,䝦,䝧,䝨,䝩,䝰,䝱,䝲,䝳,䝴,䝵,䝶,䝷,䝸,䝹,䞀,䞁,䞂,䞃,䞄,䞅,䞆,䞇,䞈,䞉,䞐,䞑,䞒,䞓,䞔,䞕,䞖,䞗,䞘,䞙,䠀,䠁,䠂,䠃,䠄,䠅,䠆,䠇,䠈,䠉,䠐,䠑,䠒,䠓,䠔,䠕,䠖,䠗,䠘,䠙,䠠,䠡,䠢,䠣,䠤,䠥,䠦,䠧,䠨,䠩,䠰,䠱,䠲,䠳,䠴,䠵,䠶,䠷,䠸,䠹,䡀,䡁,䡂,䡃,䡄,䡅,䡆,䡇,䡈,䡉,䡐,䡑,䡒,䡓,䡔,䡕,䡖,䡗,䡘,䡙,䡠,䡡,䡢,䡣,䡤,䡥,䡦,䡧,䡨,䡩,䡰,䡱,䡲,䡳,䡴,䡵,䡶,䡷,䡸,䡹,䢀,䢁,䢂,䢃,䢄,䢅,䢆,䢇,䢈,䢉,䢐,䢑,䢒,䢓,䢔,䢕,䢖,䢗,䢘,䢙,䤀,䤁,䤂,䤃,䤄,䤅,䤆,䤇,䤈,䤉,䤐,䤑,䤒,䤓,䤔,䤕,䤖,䤗,䤘,䤙,䤠,䤡,䤢,䤣,䤤,䤥,䤦,䤧,䤨,䤩,䤰,䤱,䤲,䤳,䤴,䤵,䤶,䤷,䤸,䤹,䥀,䥁,䥂,䥃,䥄,䥅,䥆,䥇,䥈,䥉,䥐,䥑,䥒,䥓,䥔,䥕,䥖,䥗,䥘,䥙,䥠,䥡,䥢,䥣,䥤,䥥,䥦,䥧,䥨,䥩,䥰,䥱,䥲,䥳,䥴,䥵,䥶,䥷,䥸,䥹,䦀,䦁,䦂,䦃,䦄,䦅,䦆,䦇,䦈,䦉,䦐,䦑,䦒,䦓,䦔,䦕,䦖,䦗,䦘,䦙,倀,倁,倂,倃,倄,倅,倆,倇,倈,倉,倐,們,倒,倓,倔,倕,倖,倗,倘,候,倠,倡,倢,倣,値,倥,倦,倧,倨,倩,倰,倱,倲,倳,倴,倵,倶,倷,倸,倹,偀,偁,偂,偃,偄,偅,偆,假,偈,偉,偐,偑,偒,偓,偔,偕,偖,偗,偘,偙,偠,偡,偢,偣,偤,健,偦,偧,偨,偩,偰,偱,偲,偳,側,偵,偶,偷,偸,偹,傀,傁,傂,傃,傄,傅,傆,傇,傈,傉,傐,傑,傒,傓,傔,傕,傖,傗,傘,備,儀,儁,儂,儃,億,儅,儆,儇,儈,儉,儐,儑,儒,儓,儔,儕,儖,儗,儘,儙,儠,儡,儢,儣,儤,儥,儦,儧,儨,儩,儰,儱,儲,儳,儴,儵,儶,儷,儸,儹,兀,允,兂,元,兄,充,兆,兇,先,光,児,兑,兒,兓,兔,兕,兖,兗,兘,兙,兠,兡,兢,兣,兤,入,兦,內,全,兩,兰,共,兲,关,兴,兵,其,具,典,兹,冀,冁,冂,冃,冄,内,円,冇,冈,冉,冐,冑,冒,冓,冔,冕,冖,冗,冘,写,刀,刁,刂,刃,刄,刅,分,切,刈,刉,刐,刑,划,刓,刔,刕,刖,列,刘,则,删,刡,刢,刣,判,別,刦,刧,刨,利,到,刱,刲,刳,刴,刵,制,刷,券,刹,剀,剁,剂,剃,剄,剅,剆,則,剈,剉,剐,剑,剒,剓,剔,剕,剖,剗,剘,剙,剠,剡,剢,剣,剤,剥,剦,剧,剨,剩,剰,剱,割,剳,剴,創,剶,剷,剸,剹,劀,劁,劂,劃,劄,劅,劆,劇,劈,劉,劐,劑,劒,劓,劔,劕,劖,劗,劘,劙,匀,匁,匂,匃,匄,包,匆,匇,匈,匉,匐,匑,匒,匓,匔,匕,化,北,匘,匙,匠,匡,匢,匣,匤,匥,匦,匧,匨,匩,匰,匱,匲,匳,匴,匵,匶,匷,匸,匹,區,十,卂,千,卄,卅,卆,升,午,卉,卐,卑,卒,卓,協,单,卖,南,単,卙,占,卡,卢,卣,卤,卥,卦,卧,卨,卩,印,危,卲,即,却,卵,卶,卷,卸,卹,厀,厁,厂,厃,厄,厅,历,厇,厈,厉,厐,厑,厒,厓,厔,厕,厖,厗,厘,厙,吀,吁,吂,吃,各,吅,吆,吇,合,吉,吐,向,吒,吓,吔,吕,吖,吗,吘,吙,吠,吡,吢,吣,吤,吥,否,吧,吨,吩,吰,吱,吲,吳,吴,吵,吶,吷,吸,吹,呀,呁,呂,呃,呄,呅,呆,呇,呈,呉,呐,呑,呒,呓,呔,呕,呖,呗,员,呙,呠,呡,呢,呣,呤,呥,呦,呧,周,呩,呰,呱,呲,味,呴,呵,呶,呷,呸,呹,咀,咁,咂,咃,咄,咅,咆,咇,咈,咉,咐,咑,咒,咓,咔,咕,咖,咗,咘,咙,唀,唁,唂,唃,唄,唅,唆,唇,唈,唉,唐,唑,唒,唓,唔,唕,唖,唗,唘,唙,唠,唡,唢,唣,唤,唥,唦,唧,唨,唩,唰,唱,唲,唳,唴,唵,唶,唷,唸,唹,啀,啁,啂,啃,啄,啅,商,啇,啈,啉,啐,啑,啒,啓,啔,啕,啖,啗,啘,啙,啠,啡,啢,啣,啤,啥,啦,啧,啨,啩,啰,啱,啲,啳,啴,啵,啶,啷,啸,啹,喀,喁,喂,喃,善,喅,喆,喇,喈,喉,喐,喑,喒,喓,喔,喕,喖,喗,喘,喙,嘀,嘁,嘂,嘃,嘄,嘅,嘆,嘇,嘈,嘉,嘐,嘑,嘒,嘓,嘔,嘕,嘖,嘗,嘘,嘙,嘠,嘡,嘢,嘣,嘤,嘥,嘦,嘧,嘨,嘩,嘰,嘱,嘲,嘳,嘴,嘵,嘶,嘷,嘸,嘹,噀,噁,噂,噃,噄,噅,噆,噇,噈,噉,噐,噑,噒,噓,噔,噕,噖,噗,噘,噙,噠,噡,噢,噣,噤,噥,噦,噧,器,噩,噰,噱,噲,噳,噴,噵,噶,噷,噸,噹,嚀,嚁,嚂,嚃,嚄,嚅,嚆,嚇,嚈,嚉,嚐,嚑,嚒,嚓,嚔,嚕,嚖,嚗,嚘,嚙,圀,圁,圂,圃,圄,圅,圆,圇,圈,圉,圐,圑,園,圓,圔,圕,圖,圗,團,圙,圠,圡,圢,圣,圤,圥,圦,圧,在,圩,地,圱,圲,圳,圴,圵,圶,圷,圸,圹,址,坁,坂,坃,坄,坅,坆,均,坈,坉,坐,坑,坒,坓,坔,坕,坖,块,坘,坙,坠,坡,坢,坣,坤,坥,坦,坧,坨,坩,坰,坱,坲,坳,坴,坵,坶,坷,坸,坹,垀,垁,垂,垃,垄,垅,垆,垇,垈,垉,垐,垑,垒,垓,垔,垕,垖,垗,垘,垙,堀,堁,堂,堃,堄,堅,堆,堇,堈,堉,堐,堑,堒,堓,堔,堕,堖,堗,堘,堙,堠,堡,堢,堣,堤,堥,堦,堧,堨,堩,堰,報,堲,堳,場,堵,堶,堷,堸,堹,塀,塁,塂,塃,塄,塅,塆,塇,塈,塉,塐,塑,塒,塓,塔,塕,塖,塗,塘,塙,塠,塡,塢,塣,塤,塥,塦,塧,塨,塩,塰,塱,塲,塳,塴,塵,塶,塷,塸,塹,墀,墁,墂,境,墄,墅,墆,墇,墈,墉,墐,墑,墒,墓,墔,墕,墖,増,墘,墙,夀,夁,夂,夃,处,夅,夆,备,夈,変,夐,夑,夒,夓,夔,夕,外,夗,夘,夙,夠,夡,夢,夣,夤,夥,夦,大,夨,天,夰,失,夲,夳,头,夵,夶,夷,夸,夹,奀,奁,奂,奃,奄,奅,奆,奇,奈,奉,奐,契,奒,奓,奔,奕,奖,套,奘,奙,奠,奡,奢,奣,奤,奥,奦,奧,奨,奩,奰,奱,奲,女,奴,奵,奶,奷,奸,她,妀,妁,如,妃,妄,妅,妆,妇,妈,妉,妐,妑,妒,妓,妔,妕,妖,妗,妘,妙,怀,态,怂,怃,怄,怅,怆,怇,怈,怉,怐,怑,怒,怓,怔,怕,怖,怗,怘,怙,怠,怡,怢,怣,怤,急,怦,性,怨,怩,怰,怱,怲,怳,怴,怵,怶,怷,怸,怹,恀,恁,恂,恃,恄,恅,恆,恇,恈,恉,恐,恑,恒,恓,恔,恕,恖,恗,恘,恙,恠,恡,恢,恣,恤,恥,恦,恧,恨,恩,恰,恱,恲,恳,恴,恵,恶,恷,恸,恹,悀,悁,悂,悃,悄,悅,悆,悇,悈,悉,悐,悑,悒,悓,悔,悕,悖,悗,悘,悙,愀,愁,愂,愃,愄,愅,愆,愇,愈,愉,愐,愑,愒,愓,愔,愕,愖,愗,愘,愙,愠,愡,愢,愣,愤,愥,愦,愧,愨,愩,愰,愱,愲,愳,愴,愵,愶,愷,愸,愹,慀,慁,慂,慃,慄,慅,慆,慇,慈,慉,慐,慑,慒,慓,慔,慕,慖,慗,慘,慙,慠,慡,慢,慣,慤,慥,慦,慧,慨,慩,慰,慱,慲,慳,慴,慵,慶,慷,慸,慹,憀,憁,憂,憃,憄,憅,憆,憇,憈,憉,憐,憑,憒,憓,憔,憕,憖,憗,憘,憙,戀,戁,戂,戃,戄,戅,戆,戇,戈,戉,成,我,戒,戓,戔,戕,或,戗,战,戙,戠,戡,戢,戣,戤,戥,戦,戧,戨,戩,戰,戱,戲,戳,戴,戵,戶,户,戸,戹,所,扁,扂,扃,扄,扅,扆,扇,扈,扉,扐,扑,扒,打,扔,払,扖,扗,托,扙,扠,扡,扢,扣,扤,扥,扦,执,扨,扩,扰,扱,扲,扳,扴,扵,扶,扷,扸,批,技,抁,抂,抃,抄,抅,抆,抇,抈,抉,抐,抑,抒,抓,抔,投,抖,抗,折,抙,挀,持,挂,挃,挄,挅,挆,指,挈,按,挐,挑,挒,挓,挔,挕,挖,挗,挘,挙,挠,挡,挢,挣,挤,挥,挦,挧,挨,挩,挰,挱,挲,挳,挴,挵,挶,挷,挸,挹,捀,捁,捂,捃,捄,捅,捆,捇,捈,捉,捐,捑,捒,捓,捔,捕,捖,捗,捘,捙,捠,捡,换,捣,捤,捥,捦,捧,捨,捩,捰,捱,捲,捳,捴,捵,捶,捷,捸,捹,掀,掁,掂,掃,掄,掅,掆,掇,授,掉,掐,掑,排,掓,掔,掕,掖,掗,掘,掙,搀,搁,搂,搃,搄,搅,搆,搇,搈,搉,搐,搑,搒,搓,搔,搕,搖,搗,搘,搙,搠,搡,搢,搣,搤,搥,搦,搧,搨,搩,搰,搱,搲,搳,搴,搵,搶,搷,搸,搹,摀,摁,摂,摃,摄,摅,摆,摇,摈,摉,摐,摑,摒,摓,摔,摕,摖,摗,摘,摙,摠,摡,摢,摣,摤,摥,摦,摧,摨,摩,摰,摱,摲,摳,摴,摵,摶,摷,摸,摹,撀,撁,撂,撃,撄,撅,撆,撇,撈,撉,撐,撑,撒,撓,撔,撕,撖,撗,撘,撙,攀,攁,攂,攃,攄,攅,攆,攇,攈,攉,攐,攑,攒,攓,攔,攕,攖,攗,攘,攙,攠,攡,攢,攣,攤,攥,攦,攧,攨,攩,攰,攱,攲,攳,攴,攵,收,攷,攸,改,敀,敁,敂,敃,敄,故,敆,敇,效,敉,敐,救,敒,敓,敔,敕,敖,敗,敘,教,敠,敡,敢,散,敤,敥,敦,敧,敨,敩,数,敱,敲,敳,整,敵,敶,敷,數,敹,斀,斁,斂,斃,斄,斅,斆,文,斈,斉,斐,斑,斒,斓,斔,斕,斖,斗,斘,料,昀,昁,昂,昃,昄,昅,昆,昇,昈,昉,昐,昑,昒,易,昔,昕,昖,昗,昘,昙,映,昡,昢,昣,昤,春,昦,昧,昨,昩,昰,昱,昲,昳,昴,昵,昶,昷,昸,昹,晀,晁,時,晃,晄,晅,晆,晇,晈,晉,晐,晑,晒,晓,晔,晕,晖,晗,晘,晙,晠,晡,晢,晣,晤,晥,晦,晧,晨,晩,晰,晱,晲,晳,晴,晵,晶,晷,晸,晹,暀,暁,暂,暃,暄,暅,暆,暇,暈,暉,暐,暑,暒,暓,暔,暕,暖,暗,暘,暙,最,朁,朂,會,朄,朅,朆,朇,月,有,朐,朑,朒,朓,朔,朕,朖,朗,朘,朙,朠,朡,朢,朣,朤,朥,朦,朧,木,朩,朰,朱,朲,朳,朴,朵,朶,朷,朸,朹,杀,杁,杂,权,杄,杅,杆,杇,杈,杉,材,村,杒,杓,杔,杕,杖,杗,杘,杙,杠,条,杢,杣,杤,来,杦,杧,杨,杩,杰,東,杲,杳,杴,杵,杶,杷,杸,杹,枀,极,枂,枃,构,枅,枆,枇,枈,枉,析,枑,枒,枓,枔,枕,枖,林,枘,枙,栀,栁,栂,栃,栄,栅,栆,标,栈,栉,栐,树,栒,栓,栔,栕,栖,栗,栘,栙,栠,校,栢,栣,栤,栥,栦,栧,栨,栩,栰,栱,栲,栳,栴,栵,栶,样,核,根,桀,桁,桂,桃,桄,桅,框,桇,案,桉,桐,桑,桒,桓,桔,桕,桖,桗,桘,桙,桠,桡,桢,档,桤,桥,桦,桧,桨,桩,桰,桱,桲,桳,桴,桵,桶,桷,桸,桹,梀,梁,梂,梃,梄,梅,梆,梇,梈,梉,梐,梑,梒,梓,梔,梕,梖,梗,梘,梙,椀,椁,椂,椃,椄,椅,椆,椇,椈,椉,椐,椑,椒,椓,椔,椕,椖,椗,椘,椙,椠,椡,椢,椣,椤,椥,椦,椧,椨,椩,椰,椱,椲,椳,椴,椵,椶,椷,椸,椹,楀,楁,楂,楃,楄,楅,楆,楇,楈,楉,楐,楑,楒,楓,楔,楕,楖,楗,楘,楙,楠,楡,楢,楣,楤,楥,楦,楧,楨,楩,楰,楱,楲,楳,楴,極,楶,楷,楸,楹,榀,榁,概,榃,榄,榅,榆,榇,榈,榉,榐,榑,榒,榓,榔,榕,榖,榗,榘,榙,瀀,瀁,瀂,瀃,瀄,瀅,瀆,瀇,瀈,瀉,瀐,瀑,瀒,瀓,瀔,瀕,瀖,瀗,瀘,瀙,瀠,瀡,瀢,瀣,瀤,瀥,瀦,瀧,瀨,瀩,瀰,瀱,瀲,瀳,瀴,瀵,瀶,瀷,瀸,瀹,灀,灁,灂,灃,灄,灅,灆,灇,灈,灉,灐,灑,灒,灓,灔,灕,灖,灗,灘,灙,灠,灡,灢,灣,灤,灥,灦,灧,灨,灩,灰,灱,灲,灳,灴,灵,灶,灷,灸,灹,炀,炁,炂,炃,炄,炅,炆,炇,炈,炉,炐,炑,炒,炓,炔,炕,炖,炗,炘,炙,焀,焁,焂,焃,焄,焅,焆,焇,焈,焉,焐,焑,焒,焓,焔,焕,焖,焗,焘,焙,焠,無,焢,焣,焤,焥,焦,焧,焨,焩,焰,焱,焲,焳,焴,焵,然,焷,焸,焹,煀,煁,煂,煃,煄,煅,煆,煇,煈,煉,煐,煑,煒,煓,煔,煕,煖,煗,煘,煙,煠,煡,煢,煣,煤,煥,煦,照,煨,煩,煰,煱,煲,煳,煴,煵,煶,煷,煸,煹,熀,熁,熂,熃,熄,熅,熆,熇,熈,熉,熐,熑,熒,熓,熔,熕,熖,熗,熘,熙,爀,爁,爂,爃,爄,爅,爆,爇,爈,爉,爐,爑,爒,爓,爔,爕,爖,爗,爘,爙,爠,爡,爢,爣,爤,爥,爦,爧,爨,爩,爰,爱,爲,爳,爴,爵,父,爷,爸,爹,牀,牁,牂,牃,牄,牅,牆,片,版,牉,牐,牑,牒,牓,牔,牕,牖,牗,牘,牙,牠,牡,牢,牣,牤,牥,牦,牧,牨,物,牰,牱,牲,牳,牴,牵,牶,牷,牸,特,犀,犁,犂,犃,犄,犅,犆,犇,犈,犉,犐,犑,犒,犓,犔,犕,犖,犗,犘,犙,猀,猁,猂,猃,猄,猅,猆,猇,猈,猉,猐,猑,猒,猓,猔,猕,猖,猗,猘,猙,猠,猡,猢,猣,猤,猥,猦,猧,猨,猩,猰,猱,猲,猳,猴,猵,猶,猷,猸,猹,獀,獁,獂,獃,獄,獅,獆,獇,獈,獉,獐,獑,獒,獓,獔,獕,獖,獗,獘,獙,獠,獡,獢,獣,獤,獥,獦,獧,獨,獩,獰,獱,獲,獳,獴,獵,獶,獷,獸,獹,玀,玁,玂,玃,玄,玅,玆,率,玈,玉,玐,玑,玒,玓,玔,玕,玖,玗,玘,玙,琀,琁,琂,球,琄,琅,理,琇,琈,琉,琐,琑,琒,琓,琔,琕,琖,琗,琘,琙,琠,琡,琢,琣,琤,琥,琦,琧,琨,琩,琰,琱,琲,琳,琴,琵,琶,琷,琸,琹,瑀,瑁,瑂,瑃,瑄,瑅,瑆,瑇,瑈,瑉,瑐,瑑,瑒,瑓,瑔,瑕,瑖,瑗,瑘,瑙,瑠,瑡,瑢,瑣,瑤,瑥,瑦,瑧,瑨,瑩,瑰,瑱,瑲,瑳,瑴,瑵,瑶,瑷,瑸,瑹,璀,璁,璂,璃,璄,璅,璆,璇,璈,璉,璐,璑,璒,璓,璔,璕,璖,璗,璘,璙,甀,甁,甂,甃,甄,甅,甆,甇,甈,甉,甐,甑,甒,甓,甔,甕,甖,甗,甘,甙,甠,甡,產,産,甤,甥,甦,甧,用,甩,田,由,甲,申,甴,电,甶,男,甸,甹,畀,畁,畂,畃,畄,畅,畆,畇,畈,畉,畐,畑,畒,畓,畔,畕,畖,畗,畘,留,畠,畡,畢,畣,畤,略,畦,畧,畨,畩,異,畱,畲,畳,畴,畵,當,畷,畸,畹,疀,疁,疂,疃,疄,疅,疆,疇,疈,疉,疐,疑,疒,疓,疔,疕,疖,疗,疘,疙,瘀,瘁,瘂,瘃,瘄,瘅,瘆,瘇,瘈,瘉,瘐,瘑,瘒,瘓,瘔,瘕,瘖,瘗,瘘,瘙,瘠,瘡,瘢,瘣,瘤,瘥,瘦,瘧,瘨,瘩,瘰,瘱,瘲,瘳,瘴,瘵,瘶,瘷,瘸,瘹,癀,癁,療,癃,癄,癅,癆,癇,癈,癉,癐,癑,癒,癓,癔,癕,癖,癗,癘,癙,癠,癡,癢,癣,癤,癥,癦,癧,癨,癩,癰,癱,癲,癳,癴,癵,癶,癷,癸,癹,皀,皁,皂,皃,的,皅,皆,皇,皈,皉,皐,皑,皒,皓,皔,皕,皖,皗,皘,皙,眀,省,眂,眃,眄,眅,眆,眇,眈,眉,眐,眑,眒,眓,眔,眕,眖,眗,眘,眙,眠,眡,眢,眣,眤,眥,眦,眧,眨,眩,眰,眱,眲,眳,眴,眵,眶,眷,眸,眹,着,睁,睂,睃,睄,睅,睆,睇,睈,睉,睐,睑,睒,睓,睔,睕,睖,睗,睘,睙,睠,睡,睢,督,睤,睥,睦,睧,睨,睩,睰,睱,睲,睳,睴,睵,睶,睷,睸,睹,瞀,瞁,瞂,瞃,瞄,瞅,瞆,瞇,瞈,瞉,瞐,瞑,瞒,瞓,瞔,瞕,瞖,瞗,瞘,瞙,砀,码,砂,砃,砄,砅,砆,砇,砈,砉,砐,砑,砒,砓,研,砕,砖,砗,砘,砙,砠,砡,砢,砣,砤,砥,砦,砧,砨,砩,砰,砱,砲,砳,破,砵,砶,砷,砸,砹,础,硁,硂,硃,硄,硅,硆,硇,硈,硉,硐,硑,硒,硓,硔,硕,硖,硗,硘,硙,硠,硡,硢,硣,硤,硥,硦,硧,硨,硩,硰,硱,硲,硳,硴,硵,硶,硷,硸,硹,碀,碁,碂,碃,碄,碅,碆,碇,碈,碉,碐,碑,碒,碓,碔,碕,碖,碗,碘,碙,礀,礁,礂,礃,礄,礅,礆,礇,礈,礉,礐,礑,礒,礓,礔,礕,礖,礗,礘,礙,礠,礡,礢,礣,礤,礥,礦,礧,礨,礩,礰,礱,礲,礳,礴,礵,礶,礷,礸,礹,祀,祁,祂,祃,祄,祅,祆,祇,祈,祉,祐,祑,祒,祓,祔,祕,祖,祗,祘,祙,祠,祡,祢,祣,祤,祥,祦,祧,票,祩,祰,祱,祲,祳,祴,祵,祶,祷,祸,祹,禀,禁,禂,禃,禄,禅,禆,禇,禈,禉,禐,禑,禒,禓,禔,禕,禖,禗,禘,禙,耀,老,耂,考,耄,者,耆,耇,耈,耉,耐,耑,耒,耓,耔,耕,耖,耗,耘,耙,耠,耡,耢,耣,耤,耥,耦,耧,耨,耩,耰,耱,耲,耳,耴,耵,耶,耷,耸,耹,聀,聁,聂,聃,聄,聅,聆,聇,聈,聉,聐,聑,聒,聓,联,聕,聖,聗,聘,聙,聠,聡,聢,聣,聤,聥,聦,聧,聨,聩,聰,聱,聲,聳,聴,聵,聶,職,聸,聹,肀,肁,肂,肃,肄,肅,肆,肇,肈,肉,肐,肑,肒,肓,肔,肕,肖,肗,肘,肙,脀,脁,脂,脃,脄,脅,脆,脇,脈,脉,脐,脑,脒,脓,脔,脕,脖,脗,脘,脙,脠,脡,脢,脣,脤,脥,脦,脧,脨,脩,脰,脱,脲,脳,脴,脵,脶,脷,脸,脹,腀,腁,腂,腃,腄,腅,腆,腇,腈,腉,腐,腑,腒,腓,腔,腕,腖,腗,腘,腙,腠,腡,腢,腣,腤,腥,腦,腧,腨,腩,腰,腱,腲,腳,腴,腵,腶,腷,腸,腹,膀,膁,膂,膃,膄,膅,膆,膇,膈,膉,膐,膑,膒,膓,膔,膕,膖,膗,膘,膙,舀,舁,舂,舃,舄,舅,舆,與,興,舉,舐,舑,舒,舓,舔,舕,舖,舗,舘,舙,舠,舡,舢,舣,舤,舥,舦,舧,舨,舩,舰,舱,舲,舳,舴,舵,舶,舷,舸,船,艀,艁,艂,艃,艄,艅,艆,艇,艈,艉,艐,艑,艒,艓,艔,艕,艖,艗,艘,艙,艠,艡,艢,艣,艤,艥,艦,艧,艨,艩,艰,艱,色,艳,艴,艵,艶,艷,艸,艹,芀,芁,节,芃,芄,芅,芆,芇,芈,芉,芐,芑,芒,芓,芔,芕,芖,芗,芘,芙,茀,茁,茂,范,茄,茅,茆,茇,茈,茉,茐,茑,茒,茓,茔,茕,茖,茗,茘,茙,茠,茡,茢,茣,茤,茥,茦,茧,茨,茩,茰,茱,茲,茳,茴,茵,茶,茷,茸,茹,荀,荁,荂,荃,荄,荅,荆,荇,荈,草,荐,荑,荒,荓,荔,荕,荖,荗,荘,荙,荠,荡,荢,荣,荤,荥,荦,荧,荨,荩,荰,荱,荲,荳,荴,荵,荶,荷,荸,荹,莀,莁,莂,莃,莄,莅,莆,莇,莈,莉,莐,莑,莒,莓,莔,莕,莖,莗,莘,莙,萀,萁,萂,萃,萄,萅,萆,萇,萈,萉,萐,萑,萒,萓,萔,萕,萖,萗,萘,萙,萠,萡,萢,萣,萤,营,萦,萧,萨,萩,萰,萱,萲,萳,萴,萵,萶,萷,萸,萹,葀,葁,葂,葃,葄,葅,葆,葇,葈,葉,葐,葑,葒,葓,葔,葕,葖,著,葘,葙,葠,葡,葢,董,葤,葥,葦,葧,葨,葩,葰,葱,葲,葳,葴,葵,葶,葷,葸,葹,蒀,蒁,蒂,蒃,蒄,蒅,蒆,蒇,蒈,蒉,蒐,蒑,蒒,蒓,蒔,蒕,蒖,蒗,蒘,蒙,蔀,蔁,蔂,蔃,蔄,蔅,蔆,蔇,蔈,蔉,蔐,蔑,蔒,蔓,蔔,蔕,蔖,蔗,蔘,蔙,蔠,蔡,蔢,蔣,蔤,蔥,蔦,蔧,蔨,蔩,蔰,蔱,蔲,蔳,蔴,蔵,蔶,蔷,蔸,蔹,蕀,蕁,蕂,蕃,蕄,蕅,蕆,蕇,蕈,蕉,蕐,蕑,蕒,蕓,蕔,蕕,蕖,蕗,蕘,蕙,蕠,蕡,蕢,蕣,蕤,蕥,蕦,蕧,蕨,蕩,蕰,蕱,蕲,蕳,蕴,蕵,蕶,蕷,蕸,蕹,薀,薁,薂,薃,薄,薅,薆,薇,薈,薉,薐,薑,薒,薓,薔,薕,薖,薗,薘,薙,蘀,蘁,蘂,蘃,蘄,蘅,蘆,蘇,蘈,蘉,蘐,蘑,蘒,蘓,蘔,蘕,蘖,蘗,蘘,蘙,蘠,蘡,蘢,蘣,蘤,蘥,蘦,蘧,蘨,蘩,蘰,蘱,蘲,蘳,蘴,蘵,蘶,蘷,蘸,蘹,虀,虁,虂,虃,虄,虅,虆,虇,虈,虉,虐,虑,虒,虓,虔,處,虖,虗,虘,虙,虠,虡,虢,虣,虤,虥,虦,虧,虨,虩,虰,虱,虲,虳,虴,虵,虶,虷,虸,虹,蚀,蚁,蚂,蚃,蚄,蚅,蚆,蚇,蚈,蚉,蚐,蚑,蚒,蚓,蚔,蚕,蚖,蚗,蚘,蚙,蜀,蜁,蜂,蜃,蜄,蜅,蜆,蜇,蜈,蜉,蜐,蜑,蜒,蜓,蜔,蜕,蜖,蜗,蜘,蜙,蜠,蜡,蜢,蜣,蜤,蜥,蜦,蜧,蜨,蜩,蜰,蜱,蜲,蜳,蜴,蜵,蜶,蜷,蜸,蜹,蝀,蝁,蝂,蝃,蝄,蝅,蝆,蝇,蝈,蝉,蝐,蝑,蝒,蝓,蝔,蝕,蝖,蝗,蝘,蝙,蝠,蝡,蝢,蝣,蝤,蝥,蝦,蝧,蝨,蝩,蝰,蝱,蝲,蝳,蝴,蝵,蝶,蝷,蝸,蝹,螀,螁,螂,螃,螄,螅,螆,螇,螈,螉,螐,螑,螒,螓,螔,螕,螖,螗,螘,螙,蠀,蠁,蠂,蠃,蠄,蠅,蠆,蠇,蠈,蠉,蠐,蠑,蠒,蠓,蠔,蠕,蠖,蠗,蠘,蠙,蠠,蠡,蠢,蠣,蠤,蠥,蠦,蠧,蠨,蠩,蠰,蠱,蠲,蠳,蠴,蠵,蠶,蠷,蠸,蠹,血,衁,衂,衃,衄,衅,衆,衇,衈,衉,衐,衑,衒,術,衔,衕,衖,街,衘,衙,衠,衡,衢,衣,衤,补,衦,衧,表,衩,衰,衱,衲,衳,衴,衵,衶,衷,衸,衹,袀,袁,袂,袃,袄,袅,袆,袇,袈,袉,袐,袑,袒,袓,袔,袕,袖,袗,袘,袙,褀,褁,褂,褃,褄,褅,褆,複,褈,褉,褐,褑,褒,褓,褔,褕,褖,褗,褘,褙,褠,褡,褢,褣,褤,褥,褦,褧,褨,褩,褰,褱,褲,褳,褴,褵,褶,褷,褸,褹,襀,襁,襂,襃,襄,襅,襆,襇,襈,襉,襐,襑,襒,襓,襔,襕,襖,襗,襘,襙,襠,襡,襢,襣,襤,襥,襦,襧,襨,襩,襰,襱,襲,襳,襴,襵,襶,襷,襸,襹,覀,要,覂,覃,覄,覅,覆,覇,覈,覉,覐,覑,覒,覓,覔,覕,視,覗,覘,覙,退,送,适,逃,逄,逅,逆,逇,逈,选,逐,逑,递,逓,途,逕,逖,逗,逘,這,造,逡,逢,連,逤,逥,逦,逧,逨,逩,逰,週,進,逳,逴,逵,逶,逷,逸,逹,遀,遁,遂,遃,遄,遅,遆,遇,遈,遉,遐,遑,遒,道,達,違,遖,遗,遘,遙,遠,遡,遢,遣,遤,遥,遦,遧,遨,適,遰,遱,遲,遳,遴,遵,遶,遷,選,遹,邀,邁,邂,邃,還,邅,邆,邇,邈,邉,邐,邑,邒,邓,邔,邕,邖,邗,邘,邙,鄀,鄁,鄂,鄃,鄄,鄅,鄆,鄇,鄈,鄉,鄐,鄑,鄒,鄓,鄔,鄕,鄖,鄗,鄘,鄙,鄠,鄡,鄢,鄣,鄤,鄥,鄦,鄧,鄨,鄩,鄰,鄱,鄲,鄳,鄴,鄵,鄶,鄷,鄸,鄹,酀,酁,酂,酃,酄,酅,酆,酇,酈,酉,酐,酑,酒,酓,酔,酕,酖,酗,酘,酙,酠,酡,酢,酣,酤,酥,酦,酧,酨,酩,酰,酱,酲,酳,酴,酵,酶,酷,酸,酹,醀,醁,醂,醃,醄,醅,醆,醇,醈,醉,醐,醑,醒,醓,醔,醕,醖,醗,醘,醙,鈀,鈁,鈂,鈃,鈄,鈅,鈆,鈇,鈈,鈉,鈐,鈑,鈒,鈓,鈔,鈕,鈖,鈗,鈘,鈙,鈠,鈡,鈢,鈣,鈤,鈥,鈦,鈧,鈨,鈩,鈰,鈱,鈲,鈳,鈴,鈵,鈶,鈷,鈸,鈹,鉀,鉁,鉂,鉃,鉄,鉅,鉆,鉇,鉈,鉉,鉐,鉑,鉒,鉓,鉔,鉕,鉖,鉗,鉘,鉙,鉠,鉡,鉢,鉣,鉤,鉥,鉦,鉧,鉨,鉩,鉰,鉱,鉲,鉳,鉴,鉵,鉶,鉷,鉸,鉹,銀,銁,銂,銃,銄,銅,銆,銇,銈,銉,銐,銑,銒,銓,銔,銕,銖,銗,銘,銙,錀,錁,錂,錃,錄,錅,錆,錇,錈,錉,錐,錑,錒,錓,錔,錕,錖,錗,錘,錙,錠,錡,錢,錣,錤,錥,錦,錧,錨,錩,錰,錱,録,錳,錴,錵,錶,錷,錸,錹,鍀,鍁,鍂,鍃,鍄,鍅,鍆,鍇,鍈,鍉,鍐,鍑,鍒,鍓,鍔,鍕,鍖,鍗,鍘,鍙,鍠,鍡,鍢,鍣,鍤,鍥,鍦,鍧,鍨,鍩,鍰,鍱,鍲,鍳,鍴,鍵,鍶,鍷,鍸,鍹,鎀,鎁,鎂,鎃,鎄,鎅,鎆,鎇,鎈,鎉,鎐,鎑,鎒,鎓,鎔,鎕,鎖,鎗,鎘,鎙,鐀,鐁,鐂,鐃,鐄,鐅,鐆,鐇,鐈,鐉,鐐,鐑,鐒,鐓,鐔,鐕,鐖,鐗,鐘,鐙,鐠,鐡,鐢,鐣,鐤,鐥,鐦,鐧,鐨,鐩,鐰,鐱,鐲,鐳,鐴,鐵,鐶,鐷,鐸,鐹,鑀,鑁,鑂,鑃,鑄,鑅,鑆,鑇,鑈,鑉,鑐,鑑,鑒,鑓,鑔,鑕,鑖,鑗,鑘,鑙,鑠,鑡,鑢,鑣,鑤,鑥,鑦,鑧,鑨,鑩,鑰,鑱,鑲,鑳,鑴,鑵,鑶,鑷,鑸,鑹,钀,钁,钂,钃,钄,钅,钆,钇,针,钉,钐,钑,钒,钓,钔,钕,钖,钗,钘,钙,销,锁,锂,锃,锄,锅,锆,锇,锈,锉,锐,锑,锒,锓,锔,锕,锖,锗,锘,错,锠,锡,锢,锣,锤,锥,锦,锧,锨,锩,锰,锱,锲,锳,锴,锵,锶,锷,锸,锹,镀,镁,镂,镃,镄,镅,镆,镇,镈,镉,镐,镑,镒,镓,镔,镕,镖,镗,镘,镙,镠,镡,镢,镣,镤,镥,镦,镧,镨,镩,镰,镱,镲,镳,镴,镵,镶,長,镸,镹,門,閁,閂,閃,閄,閅,閆,閇,閈,閉,閐,閑,閒,間,閔,閕,閖,閗,閘,閙,阀,阁,阂,阃,阄,阅,阆,阇,阈,阉,阐,阑,阒,阓,阔,阕,阖,阗,阘,阙,阠,阡,阢,阣,阤,阥,阦,阧,阨,阩,阰,阱,防,阳,阴,阵,阶,阷,阸,阹,陀,陁,陂,陃,附,际,陆,陇,陈,陉,限,陑,陒,陓,陔,陕,陖,陗,陘,陙,陠,陡,院,陣,除,陥,陦,陧,陨,险,陰,陱,陲,陳,陴,陵,陶,陷,陸,陹,隀,隁,隂,隃,隄,隅,隆,隇,隈,隉,隐,隑,隒,隓,隔,隕,隖,隗,隘,隙,需,霁,霂,霃,霄,霅,霆,震,霈,霉,霐,霑,霒,霓,霔,霕,霖,霗,霘,霙,霠,霡,霢,霣,霤,霥,霦,霧,霨,霩,霰,霱,露,霳,霴,霵,霶,霷,霸,霹,靀,靁,靂,靃,靄,靅,靆,靇,靈,靉,靐,靑,青,靓,靔,靕,靖,靗,靘,静,靠,靡,面,靣,靤,靥,靦,靧,靨,革,靰,靱,靲,靳,靴,靵,靶,靷,靸,靹,鞀,鞁,鞂,鞃,鞄,鞅,鞆,鞇,鞈,鞉,鞐,鞑,鞒,鞓,鞔,鞕,鞖,鞗,鞘,鞙,頀,頁,頂,頃,頄,項,順,頇,須,頉,預,頑,頒,頓,頔,頕,頖,頗,領,頙,頠,頡,頢,頣,頤,頥,頦,頧,頨,頩,頰,頱,頲,頳,頴,頵,頶,頷,頸,頹,顀,顁,顂,顃,顄,顅,顆,顇,顈,顉,顐,顑,顒,顓,顔,顕,顖,顗,願,顙,顠,顡,顢,顣,顤,顥,顦,顧,顨,顩,顰,顱,顲,顳,顴,页,顶,顷,顸,项,颀,颁,颂,颃,预,颅,领,颇,颈,颉,颐,频,颒,颓,颔,颕,颖,颗,题,颙,餀,餁,餂,餃,餄,餅,餆,餇,餈,餉,餐,餑,餒,餓,餔,餕,餖,餗,餘,餙,餠,餡,餢,餣,餤,餥,餦,餧,館,餩,餰,餱,餲,餳,餴,餵,餶,餷,餸,餹,饀,饁,饂,饃,饄,饅,饆,饇,饈,饉,饐,饑,饒,饓,饔,饕,饖,饗,饘,饙,饠,饡,饢,饣,饤,饥,饦,饧,饨,饩,饰,饱,饲,饳,饴,饵,饶,饷,饸,饹,馀,馁,馂,馃,馄,馅,馆,馇,馈,馉,馐,馑,馒,馓,馔,馕,首,馗,馘,香', ',') satisfies matches($s, '^(?:[\\w])$')) and (every $s in tokenize('', ',') satisfies not(matches($s, '^(?:[\\w])$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00984.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00985'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(every $s in tokenize('0,1,2,3,4,5,6,7,8,9,٠,١,٢,٣,٤,٥,٦,٧,٨,٩,۰,۱,۲,۳,۴,۵,۶,۷,۸,۹,०,१,२,३,४,५,६,७,८,९,০,১,২,৩,৪,৫,৬,৭,৮,৯,੦,੧,੨,੩,੪,੫,੬,੭,੮,੯,૦,૧,૨,૩,૪,૫,૬,૭,૮,૯,୦,୧,୨,୩,୪,୫,୬,୭,୮,୯,௧,௨,௩,௪,௫,௬,௭,௮,௯,౦,౧,౨,౩,౪,౫,౬,౭,౮,౯,೦,೧,೨,೩,೪,೫,೬,೭,೮,೯,൦,൧,൨,൩,൪,൫,൬,൭,൮,൯,๐,๑,๒,๓,๔,๕,๖,๗,๘,๙,໐,໑,໒,໓,໔,໕,໖,໗,໘,໙,༠,༡,༢,༣,༤,༥,༦,༧,༨,༩,၀,၁,၂,၃,၄,၅,၆,၇,၈,၉,០,១,២,៣,៤,៥,៦,៧,៨,៩,᠐,᠑,᠒,᠓,᠔,᠕,᠖,᠗,᠘,᠙,０,１,２,３,４,５,６,７,８,９', ',') satisfies matches($s, '^(?:[\\d])$')) and (every $s in tokenize('	,
,, ,!,\",#,$,왣,왤,왥,왦,왧,왨,왩,왪,왫,왬,왭,왮,왯,왰,왱,왲,왳,왴,왵,왶,왷,외,왹,왺,왻,왼,왽,왾,왿,욀,욁,욂,욃,욄,욅,욆,욇,욈,욉,욊,욋,욌,욍,욎,욏,욐,욑,욒,욓,요,욕,욖,욗,욘,욙,욚,욛,욜,욝,욞,욟,욠,욡,욢,욣,욤,욥,욦,욧,욨,용,욪,욫,욬,욭,욮,욯,우,욱,욲,욳,운,욵,욶,욷,울,욹,욺,욻,욼,욽,욾,욿,움,웁,웂,웃,웄,웅,웆,웇,웈,웉,웊,웋,워,웍,웎,웏,원,웑,웒,웓,월,웕,웖,웗,웘,웙,웚,웛,웜,웝,웞,웟,웠,웡,웢,웣,웤,웥,웦,웧,웨,웩,웪,웫,웬,웭,웮,웯,웰,웱,웲,웳,웴,웵,웶,웷,웸,웹,웺,웻,웼,웽,웾,웿,윀,윁,윂,윃,위,윅,윆,윇,윈,윉,윊,윋,윌,윍,윎,윏,윐,윑,윒,윓,윔,윕,윖,윗,윘,윙,윚,윛,윜,윝,윞,윟,유,육,윢,윣,윤,윥,윦,윧,율,윩,윪,윫,윬,윭,윮,윯,윰,윱,윲,윳,윴,융,윶,윷,윸,윹,윺,윻,으,윽,윾,윿,은,읁,읂,읃,을,읅,읆,읇,읈,읉,읊,읋,음,읍,읎,읏,읐,응,읒,읓,읔,읕,읖,읗,의,읙,읚,읛,읜,읝,읞,읟,읠,읡,읢,읣,읤,읥,읦,읧,읨,읩,읪,읫,읬,읭,읮,읯,읰,읱,읲,읳,이,익,읶,읷,인,읹,읺,읻,일,재,잭,잮,잯,잰,잱,잲,잳,잴,잵,잶,잷,잸,잹,잺,잻,잼,잽,잾,잿,쟀,쟁,쟂,쟃,쟄,쟅,쟆,쟇,쟈,쟉,쟊,쟋,쟌,쟍,쟎,쟏,쟐,쟑,쟒,쟓,쟔,쟕,쟖,쟗,쟘,쟙,쟚,쟛,쟜,쟝,쟞,쟟,쟠,쟡,쟢,쟣,쟤,쟥,쟦,쟧,쟨,쟩,쟪,쟫,쟬,쟭,쟮,쟯,쟰,쟱,쟲,쟳,쟴,쟵,쟶,쟷,쟸,쟹,쟺,쟻,쟼,쟽,쟾,쟿,저,적,젂,젃,전,젅,젆,젇,절,젉,젊,젋,젌,젍,젎,젏,점,접,젒,젓,젔,정,젖,젗,젘,젙,젚,젛,제,젝,젞,젟,젠,젡,젢,젣,젤,젥,젦,젧,젨,젩,젪,젫,젬,젭,젮,젯,젰,젱,젲,젳,젴,젵,젶,젷,져,젹,젺,젻,젼,젽,젾,젿,졀,졁,졂,졃,졄,졅,졆,졇,졈,졉,졊,졋'||
',졌,졍,졎,졏,졐,졑,졒,졓,졔,졕,졖,졗,졘,졙,졚,졛,졜,졝,졞,졟,졠,졡,졢,졣,졤,졥,졦,졧,졨,졩,졪,졫,졬,졭,졮,졯,조,족,졲,졳,존,졵,졶,졷,졸,졹,졺,졻,졼,졽,졾,졿,좀,좁,좂,좃,좄,종,좆,좇,좈,좉,좊,좋,좌,좍,좎,좏,좐,좑,좒,좓,좔,좕,좖,좗,좘,좙,좚,좛,좜,좝,좞,좟,좠,좡,좢,좣,좤,좥,좦,좧,좨,좩,좪,좫,좬,좭,좮,좯,좰,좱,좲,좳,좴,좵,좶,좷,좸,좹,좺,좻,좼,좽,좾,좿,죀,죁,죂,죃,죄,죅,죆,죇,죈,죉,죊,죋,죌,죍,죎,죏,죐,죑,죒,죓,죔,죕,죖,죗,죘,죙,죚,죛,죜,죝,죞,죟,죠,죡,죢,죣,죤,죥,죦,죧,죨,죩,죪,죫,죬,죭,죮,죯,죰,죱,죲,죳,죴,죵,죶,죷,죸,죹,죺,죻,주,죽,죾,죿,준,줁,줂,줃,줄,줅,줆,줇,줈,줉,줊,줋,줌,줍,줎,줏,줐,중,줒,줓,줔,줕,줖,줗,줘,줙,줚,줛,줜,줝,줞,줟,줠,줡,줢,줣,줤,줥,줦,줧,줨,줩,줪,줫,줬,줭,줮,줯,줰,줱,줲,줳,줴,줵,줶,줷,줸,줹,줺,줻,줼,줽,줾,줿,쥀,쥁,쥂,쥃,쥄,쥅,쥆,쥇,쥈,쥉,쥊,쥋,쥌,쥍,쥎,쥏,쥐,쥑,쥒,쥓,쥔,쥕,쥖,쥗,쥘,쥙,쥚,쥛,쥜,쥝,쥞,쥟,쥠,쥡,쥢,쥣,쥤,쥥,쥦,쥧,쥨,쥩,쥪,쥫,쥬,쥭,쥮,쥯,쥰,쥱,쥲,＂,＃,＄,％,＆,＇,（,）,＊,＋,，,－,．,／,：,；,＜,＝,＞,？,＠,Ａ,Ｂ,Ｃ,Ｄ,Ｅ,Ｆ,Ｇ,Ｈ,Ｉ,Ｊ,Ｋ,Ｌ,Ｍ,Ｎ,Ｏ,Ｐ,Ｑ,Ｒ,Ｓ,Ｔ,Ｕ,Ｖ,Ｗ,Ｘ,Ｙ,Ｚ,［,＼,］,＾,＿,｀,ａ,ｂ,ｃ,ｄ,ｅ,ｆ,ｇ,ｈ,ｉ,ｊ,ｋ,ｌ,ｍ,ｎ,ｏ,ｐ,ｑ,ｒ,ｓ,ｔ,ｕ,ｖ,ｗ,ｘ,ｙ,ｚ,｛,｜,｝,～,｟,｠,｡,｢,｣,､,･,ｦ,ｧ,ｨ,ｩ,ｪ,ｫ,ｬ,ｭ,ｮ,ｯ,ｰ,ｱ,ｲ,ｳ,ｴ,ｵ,ｶ,ｷ,ｸ,ｹ,ｺ,ｻ,ｼ,ｽ,ｾ,ｿ,ﾀ,ﾁ,ﾂ,ﾃ,ﾄ,ﾅ,ﾆ,ﾇ,ﾈ,ﾉ,ﾊ,ﾋ,ﾌ,ﾍ,￢,￣,￤,￥,￦,￧,￨,￩,￪,￫,￬,￭,￮,￯,￰,￱,￲,￳,￴,￵,￶,￷,￸,￹,￺,￻,￼,�', ',') satisfies not(matches($s, '^(?:[\\d])$')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00985.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00987'(Config) ->
   BaseDir = ?config(base_dir, Config),
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
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00987.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00988'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','[-[xyz]]')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00988.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00989'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('qwerty','[^-[xyz]]')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00989.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00990'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('$', '^\\$$') and not(matches('\\$', '^\\$$'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00990.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00991'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('$', '[\\$]') and not(matches('\\$', '^[\\$]$'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00991.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00992'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('$$', '(.)\\1')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00992.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00993'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('$$9', '(.)\\19')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00993.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00994'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('$$9', '(((((((((((.)))))))))))\\119')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00994.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00995'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('$$9', '(.)\\2')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00995.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00996'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('$$9', '(.)(\\2)')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00996.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00997'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('$$9', '((((((((((.))))))))))(\\11)9')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00997.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORX0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00998'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('alpha', 'alp^?ha')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00998.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're00999'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('alpha', 'alp^+ha')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re00999.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're01000'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('alpha', '^{2}alpha') and not(matches('zalpha', '^{2}alpha'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re01000.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're01001'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('alpha', 'alp$?ha')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re01001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're01002'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('alpha', 'alp${2,4}ha')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re01002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
're01003'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "matches('alpha', 'alpha$+') and not(matches('alphax', 'alpha$+'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "re01003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
