-module('misc_CombinedErrorCodes_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['combined-errors-1'/1]).
-export(['combined-errors-2'/1]).
-export(['combined-errors-3'/1]).
-export(['combined-errors-4'/1]).
-export(['K-CombinedErrorCodes-1'/1]).
-export(['K-CombinedErrorCodes-2'/1]).
-export(['K-CombinedErrorCodes-3'/1]).
-export(['K-CombinedErrorCodes-4'/1]).
-export(['K-CombinedErrorCodes-5'/1]).
-export(['K-CombinedErrorCodes-6'/1]).
-export(['K-CombinedErrorCodes-7'/1]).
-export(['K-CombinedErrorCodes-9'/1]).
-export(['K-CombinedErrorCodes-10'/1]).
-export(['K-CombinedErrorCodes-11'/1]).
-export(['K-CombinedErrorCodes-12'/1]).
-export(['K-CombinedErrorCodes-13'/1]).
-export(['K-CombinedErrorCodes-14'/1]).
-export(['K-CombinedErrorCodes-15'/1]).
-export(['FOAR0001_1'/1]).
-export(['FOAR0001_2'/1]).
-export(['FOAR0001_3'/1]).
-export(['FOAR0001_4'/1]).
-export(['FOAR0001_5'/1]).
-export(['FOAR0001_6'/1]).
-export(['FOAR0001_7'/1]).
-export(['FOAR0001_8'/1]).
-export(['FOAR0001_9'/1]).
-export(['FOAR0002_1'/1]).
-export(['FOAR0002_3'/1]).
-export(['FOAR0002_4'/1]).
-export(['FOAR0002-5'/1]).
-export(['FOCA0001_1'/1]).
-export(['FOCA0002_1'/1]).
-export(['FOCA0002_2'/1]).
-export(['FOCA0002_3'/1]).
-export(['FOCA0002_4'/1]).
-export(['FOCA0002_5'/1]).
-export(['FOCA0002_6'/1]).
-export(['FOCA0002_7'/1]).
-export(['FOCA0002_8'/1]).
-export(['FOCA0002_9'/1]).
-export(['FOCA0003_1'/1]).
-export(['FOCA0005_1'/1]).
-export(['FOCA0005_2'/1]).
-export(['FOCA0005_3'/1]).
-export(['FOCA0005_4'/1]).
-export(['FOCH0001'/1]).
-export(['FOCH0002_1'/1]).
-export(['FOCH0002_10'/1]).
-export(['FOCH0002_2'/1]).
-export(['FOCH0002_3'/1]).
-export(['FOCH0002_4'/1]).
-export(['FOCH0002_5'/1]).
-export(['FOCH0002_6'/1]).
-export(['FOCH0002_7'/1]).
-export(['FOCH0002_8'/1]).
-export(['FOCH0002_9'/1]).
-export(['FODC0001_1'/1]).
-export(['FODC0001_2'/1]).
-export(['FODC0002_1'/1]).
-export(['FODC0002_2'/1]).
-export(['FODC0002_3'/1]).
-export(['FODC0002_4'/1]).
-export(['FODC0004'/1]).
-export(['FODC0005-1'/1]).
-export(['FODC0005-2'/1]).
-export(['FODT0001-1'/1]).
-export(['FODT0001-10'/1]).
-export(['FODT0001-11'/1]).
-export(['FODT0001-12'/1]).
-export(['FODT0001-2'/1]).
-export(['FODT0001-3'/1]).
-export(['FODT0001-4'/1]).
-export(['FODT0001-5'/1]).
-export(['FODT0001-6'/1]).
-export(['FODT0001-7'/1]).
-export(['FODT0001-8'/1]).
-export(['FODT0001-9'/1]).
-export(['FODT0002-1'/1]).
-export(['FODT0002-2'/1]).
-export(['FODT0002-3'/1]).
-export(['FODT0002-4'/1]).
-export(['FODT0002-6'/1]).
-export(['FODT0002-7'/1]).
-export(['FODT0002-8'/1]).
-export(['FODT0002-9'/1]).
-export(['FODT0003-1'/1]).
-export(['FODT0003-2'/1]).
-export(['FOER0000'/1]).
-export(['FONS0004-1'/1]).
-export(['FONS0004-2'/1]).
-export(['FORG0001'/1]).
-export(['FORG0002'/1]).
-export(['FORG0003'/1]).
-export(['FORG0004'/1]).
-export(['FORG0005'/1]).
-export(['FORG0006_01'/1]).
-export(['FORG0006_02'/1]).
-export(['FORG0006_03'/1]).
-export(['FORG0006_04'/1]).
-export(['FORG0006_05'/1]).
-export(['FORG0008'/1]).
-export(['FORG0009'/1]).
-export(['FOTY0012'/1]).
-export(['XPDY0002_01'/1]).
-export(['XPDY0002_02'/1]).
-export(['XPDY0050'/1]).
-export(['XPTY0004_01'/1]).
-export(['XPTY0018'/1]).
-export(['XPTY0019_1'/1]).
-export(['XPTY0019_2'/1]).
-export(['XPTY0019_3'/1]).
-export(['XPTY0004_02'/1]).
-export(['XPTY0004_03'/1]).
-export(['XPTY0004_04'/1]).
-export(['XPTY0004_05'/1]).
-export(['XPTY0004_06'/1]).
-export(['XPTY0004_07'/1]).
-export(['XPTY0004_08'/1]).
-export(['XPTY0004_09'/1]).
-export(['XPTY0004_10'/1]).
-export(['XPTY0004_11'/1]).
-export(['XPTY0004_12'/1]).
-export(['XPTY0004_12a'/1]).
-export(['XPTY0004_13'/1]).
-export(['XPTY0004_14'/1]).
-export(['XPTY0004_15'/1]).
-export(['XPTY0004_16'/1]).
-export(['XPTY0004_17'/1]).
-export(['XPTY0004_18'/1]).
-export(['XPTY0004_19'/1]).
-export(['XPTY0004_20'/1]).
-export(['XPTY0004_21'/1]).
-export(['XPTY0004_22'/1]).
-export(['XPTY0004_23'/1]).
-export(['XPTY0004_24'/1]).
-export(['XPTY0004_25'/1]).
-export(['XPTY0004_26'/1]).
-export(['XPTY0004_27'/1]).
-export(['XPTY0004_28'/1]).
-export(['XPTY0004_29'/1]).
-export(['XPTY0004_30'/1]).
-export(['XPTY0004_31'/1]).
-export(['XPTY0004_32'/1]).
-export(['XPTY0004_33'/1]).
-export(['XPTY0004_34'/1]).
-export(['XPTY0004_35'/1]).
-export(['XPTY0004_37'/1]).
-export(['XPTY0004_38'/1]).
-export(['XPTY0004_39'/1]).
-export(['XPTY0004_40'/1]).
-export(['XPTY0004_41'/1]).
-export(['XPTY0004_42'/1]).
-export(['XPTY0004_43'/1]).
-export(['XPTY0004_44'/1]).
-export(['XPTY0004_45'/1]).
-export(['XPTY0004_46'/1]).
-export(['XPTY0004_47'/1]).
-export(['XPTY0004_48'/1]).
-export(['XPTY0020'/1]).
-export(['XQDY0025_1'/1]).
-export(['XQDY0025_2'/1]).
-export(['XQDY0025_3'/1]).
-export(['XQDY0025_4'/1]).
-export(['XQDY0026'/1]).
-export(['XQDY0027'/1]).
-export(['XQDY0041'/1]).
-export(['XQDY0044_1'/1]).
-export(['XQDY0061'/1]).
-export(['XQDY0064'/1]).
-export(['XQDY0072'/1]).
-export(['XQDY0074_1'/1]).
-export(['XQDY0074_2'/1]).
-export(['XQDY0074_3'/1]).
-export(['XQDY0074_4'/1]).
-export(['XQDY0084'/1]).
-export(['XQDY0091'/1]).
-export(['XQDY0092'/1]).
-export(['XQST0022_1'/1]).
-export(['XQST0022_2'/1]).
-export(['XQST0031'/1]).
-export(['XQST0032'/1]).
-export(['XQST0033'/1]).
-export(['XQST0034'/1]).
-export(['XQST0036_1'/1]).
-export(['XQST0036_2'/1]).
-export(['XQST0036_3'/1]).
-export(['XQST0036_4'/1]).
-export(['XQST0036_5'/1]).
-export(['XQST0036_6'/1]).
-export(['XQST0036_7'/1]).
-export(['XQST0038_1'/1]).
-export(['XQST0038_3'/1]).
-export(['XQST0039'/1]).
-export(['XQST0040'/1]).
-export(['XQST0045-1'/1]).
-export(['XQST0045-2'/1]).
-export(['XQST0045-3'/1]).
-export(['XQST0045-4'/1]).
-export(['XQST0046_01'/1]).
-export(['XQST0046_02'/1]).
-export(['XQST0046_03'/1]).
-export(['XQST0046_04'/1]).
-export(['XQST0046_05'/1]).
-export(['XQST0046_06'/1]).
-export(['XQST0046_07'/1]).
-export(['XQST0046_09'/1]).
-export(['XQST0046_10'/1]).
-export(['XQST0046_11'/1]).
-export(['XQST0046_12'/1]).
-export(['XQST0047'/1]).
-export(['XQST0048'/1]).
-export(['XQST0049'/1]).
-export(['XQST0054'/1]).
-export(['XQST0055'/1]).
-export(['XQST0057'/1]).
-export(['XQST0058'/1]).
-export(['XQST0059_1'/1]).
-export(['XQST0059_2'/1]).
-export(['XQST0059_3'/1]).
-export(['XQST0059_4'/1]).
-export(['XQST0059_5'/1]).
-export(['XQST0059_6'/1]).
-export(['XQST0060'/1]).
-export(['XQST0065'/1]).
-export(['XQST0066_1'/1]).
-export(['XQST0066_3'/1]).
-export(['XQST0067'/1]).
-export(['XQST0068'/1]).
-export(['XQST0069'/1]).
-export(['XQST0070_1'/1]).
-export(['XQST0070_2'/1]).
-export(['XQST0070_3'/1]).
-export(['XQST0070_4'/1]).
-export(['XQST0071_1'/1]).
-export(['XQST0071_2'/1]).
-export(['XQST0076'/1]).
-export(['XQST0079'/1]).
-export(['XQST0085'/1]).
-export(['XQST0085b'/1]).
-export(['XQST0085c'/1]).
-export(['XQST0087'/1]).
-export(['XQST0088_1'/1]).
-export(['XQST0088_2'/1]).
-export(['XQST0089'/1]).
-export(['XQST0090'/1]).
-export(['XQST0093'/1]).
-export(['XQST0093a'/1]).
-export(['XQTY0024_1'/1]).
-export(['XQTY0024_2'/1]).
-export(['XQTY0024_3'/1]).
-export(['XQTY0024_4'/1]).
-export(['XQTY0030'/1]).
-export(['XQTY0086_1'/1]).
-export(['XQTY0086_2'/1]).
-export(['XQTY0086_3'/1]).
-export(['XQST0125_1'/1]).
-export(['XQST0125_2'/1]).
-export(['typeswitch-in-xpath'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
, try  xqerl:compile("C:/git/zadean/xquery-3.1/QT3-test-suite/misc/CombinedErrorCodes/moduleDefs-lib.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xquery-3.1/QT3-test-suite/misc/CombinedErrorCodes/test1-lib.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xquery-3.1/QT3-test-suite/misc/CombinedErrorCodes/XQST0036_lib1.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xquery-3.1/QT3-test-suite/misc/CombinedErrorCodes/XQST0036_lib2.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xquery-3.1/QT3-test-suite/misc/CombinedErrorCodes/XQST0036_lib3.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xquery-3.1/QT3-test-suite/misc/CombinedErrorCodes/XQST0036_lib4.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xquery-3.1/QT3-test-suite/misc/CombinedErrorCodes/XQST0036_lib5.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xquery-3.1/QT3-test-suite/misc/CombinedErrorCodes/XQST0036_lib6.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xquery-3.1/QT3-test-suite/misc/CombinedErrorCodes/XQST0036_lib7.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xquery-3.1/QT3-test-suite/misc/CombinedErrorCodes/XQST0046_lib.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xquery-3.1/QT3-test-suite/misc/CombinedErrorCodes/XQST0047_lib.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xquery-3.1/QT3-test-suite/misc/CombinedErrorCodes/XQST0048_lib.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xquery-3.1/QT3-test-suite/misc/CombinedErrorCodes/XQST0059_lib.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xquery-3.1/QT3-test-suite/misc/CombinedErrorCodes/XQST0070_lib.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xquery-3.1/QT3-test-suite/misc/CombinedErrorCodes/XQST0088_lib.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xquery-3.1/QT3-test-suite/misc/CombinedErrorCodes/XQST0093_lib1.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xquery-3.1/QT3-test-suite/misc/CombinedErrorCodes/XQST0093_lib2.xq") catch _:_ -> ok end,Config.
all() -> [
   'combined-errors-1',
   'combined-errors-2',
   'combined-errors-3',
   'combined-errors-4',
   'K-CombinedErrorCodes-1',
   'K-CombinedErrorCodes-2',
   'K-CombinedErrorCodes-3',
   'K-CombinedErrorCodes-4',
   'K-CombinedErrorCodes-5',
   'K-CombinedErrorCodes-6',
   'K-CombinedErrorCodes-7',
   'K-CombinedErrorCodes-9',
   'K-CombinedErrorCodes-10',
   'K-CombinedErrorCodes-11',
   'K-CombinedErrorCodes-12',
   'K-CombinedErrorCodes-13',
   'K-CombinedErrorCodes-14',
   'K-CombinedErrorCodes-15',
   'FOAR0001_1',
   'FOAR0001_2',
   'FOAR0001_3',
   'FOAR0001_4',
   'FOAR0001_5',
   'FOAR0001_6',
   'FOAR0001_7',
   'FOAR0001_8',
   'FOAR0001_9',
   'FOAR0002_1',
   'FOAR0002_3',
   'FOAR0002_4',
   'FOAR0002-5',
   'FOCA0001_1',
   'FOCA0002_1',
   'FOCA0002_2',
   'FOCA0002_3',
   'FOCA0002_4',
   'FOCA0002_5',
   'FOCA0002_6',
   'FOCA0002_7',
   'FOCA0002_8',
   'FOCA0002_9',
   'FOCA0003_1',
   'FOCA0005_1',
   'FOCA0005_2',
   'FOCA0005_3',
   'FOCA0005_4',
   'FOCH0001',
   'FOCH0002_1',
   'FOCH0002_10',
   'FOCH0002_2',
   'FOCH0002_3',
   'FOCH0002_4',
   'FOCH0002_5',
   'FOCH0002_6',
   'FOCH0002_7',
   'FOCH0002_8',
   'FOCH0002_9',
   'FODC0001_1',
   'FODC0001_2',
   'FODC0002_1',
   'FODC0002_2',
   'FODC0002_3',
   'FODC0002_4',
   'FODC0004',
   'FODC0005-1',
   'FODC0005-2',
   'FODT0001-1',
   'FODT0001-10',
   'FODT0001-11',
   'FODT0001-12',
   'FODT0001-2',
   'FODT0001-3',
   'FODT0001-4',
   'FODT0001-5',
   'FODT0001-6',
   'FODT0001-7',
   'FODT0001-8',
   'FODT0001-9',
   'FODT0002-1',
   'FODT0002-2',
   'FODT0002-3',
   'FODT0002-4',
   'FODT0002-6',
   'FODT0002-7',
   'FODT0002-8',
   'FODT0002-9',
   'FODT0003-1',
   'FODT0003-2',
   'FOER0000',
   'FONS0004-1',
   'FONS0004-2',
   'FORG0001',
   'FORG0002',
   'FORG0003',
   'FORG0004',
   'FORG0005',
   'FORG0006_01',
   'FORG0006_02',
   'FORG0006_03',
   'FORG0006_04',
   'FORG0006_05',
   'FORG0008',
   'FORG0009',
   'FOTY0012',
   'XPDY0002_01',
   'XPDY0002_02',
   'XPDY0050',
   'XPTY0004_01',
   'XPTY0018',
   'XPTY0019_1',
   'XPTY0019_2',
   'XPTY0019_3',
   'XPTY0004_02',
   'XPTY0004_03',
   'XPTY0004_04',
   'XPTY0004_05',
   'XPTY0004_06',
   'XPTY0004_07',
   'XPTY0004_08',
   'XPTY0004_09',
   'XPTY0004_10',
   'XPTY0004_11',
   'XPTY0004_12',
   'XPTY0004_12a',
   'XPTY0004_13',
   'XPTY0004_14',
   'XPTY0004_15',
   'XPTY0004_16',
   'XPTY0004_17',
   'XPTY0004_18',
   'XPTY0004_19',
   'XPTY0004_20',
   'XPTY0004_21',
   'XPTY0004_22',
   'XPTY0004_23',
   'XPTY0004_24',
   'XPTY0004_25',
   'XPTY0004_26',
   'XPTY0004_27',
   'XPTY0004_28',
   'XPTY0004_29',
   'XPTY0004_30',
   'XPTY0004_31',
   'XPTY0004_32',
   'XPTY0004_33',
   'XPTY0004_34',
   'XPTY0004_35',
   'XPTY0004_37',
   'XPTY0004_38',
   'XPTY0004_39',
   'XPTY0004_40',
   'XPTY0004_41',
   'XPTY0004_42',
   'XPTY0004_43',
   'XPTY0004_44',
   'XPTY0004_45',
   'XPTY0004_46',
   'XPTY0004_47',
   'XPTY0004_48',
   'XPTY0020',
   'XQDY0025_1',
   'XQDY0025_2',
   'XQDY0025_3',
   'XQDY0025_4',
   'XQDY0026',
   'XQDY0027',
   'XQDY0041',
   'XQDY0044_1',
   'XQDY0061',
   'XQDY0064',
   'XQDY0072',
   'XQDY0074_1',
   'XQDY0074_2',
   'XQDY0074_3',
   'XQDY0074_4',
   'XQDY0084',
   'XQDY0091',
   'XQDY0092',
   'XQST0022_1',
   'XQST0022_2',
   'XQST0031',
   'XQST0032',
   'XQST0033',
   'XQST0034',
   'XQST0036_1',
   'XQST0036_2',
   'XQST0036_3',
   'XQST0036_4',
   'XQST0036_5',
   'XQST0036_6',
   'XQST0036_7',
   'XQST0038_1',
   'XQST0038_3',
   'XQST0039',
   'XQST0040',
   'XQST0045-1',
   'XQST0045-2',
   'XQST0045-3',
   'XQST0045-4',
   'XQST0046_01',
   'XQST0046_02',
   'XQST0046_03',
   'XQST0046_04',
   'XQST0046_05',
   'XQST0046_06',
   'XQST0046_07',
   'XQST0046_09',
   'XQST0046_10',
   'XQST0046_11',
   'XQST0046_12',
   'XQST0047',
   'XQST0048',
   'XQST0049',
   'XQST0054',
   'XQST0055',
   'XQST0057',
   'XQST0058',
   'XQST0059_1',
   'XQST0059_2',
   'XQST0059_3',
   'XQST0059_4',
   'XQST0059_5',
   'XQST0059_6',
   'XQST0060',
   'XQST0065',
   'XQST0066_1',
   'XQST0066_3',
   'XQST0067',
   'XQST0068',
   'XQST0069',
   'XQST0070_1',
   'XQST0070_2',
   'XQST0070_3',
   'XQST0070_4',
   'XQST0071_1',
   'XQST0071_2',
   'XQST0076',
   'XQST0079',
   'XQST0085',
   'XQST0085b',
   'XQST0085c',
   'XQST0087',
   'XQST0088_1',
   'XQST0088_2',
   'XQST0089',
   'XQST0090',
   'XQST0093',
   'XQST0093a',
   'XQTY0024_1',
   'XQTY0024_2',
   'XQTY0024_3',
   'XQTY0024_4',
   'XQTY0030',
   'XQTY0086_1',
   'XQTY0086_2',
   'XQTY0086_3',
   'XQST0125_1',
   'XQST0125_2',
   'typeswitch-in-xpath'].
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
environment('orderdata') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/prod/OrderByClause/orderData.xml",".",""}]},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/prod/OrderByClause/orderData.xsd","http://www.w3.org/XQueryTestOrderBy"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('namespace-sensitive') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/misc/CombinedErrorCodes/namespace-sensitive.xml",".",""}]},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/misc/CombinedErrorCodes/namespace-sensitive.xsd","http://www.xqsharp.com/test/namespace-sensitive"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('xqst0036') ->
[{sources, []},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/misc/CombinedErrorCodes/XQST0036.xsd","http://www.example.org/2007/schema/XQST0036"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('foty0012') ->
[{sources, []},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/misc/CombinedErrorCodes/FOTY0012.xsd","http://www.example.org/2007/schema/FOTY0012"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('xqdy0027') ->
[{sources, []},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/misc/CombinedErrorCodes/XQDY0027.xsd","http://www.example.org/2007/schema/XQDY0027"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('xqdy0084') ->
[{sources, []},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/misc/CombinedErrorCodes/XQDY0084.xsd","http://www.example.org/2007/schema/XQDY0084"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'combined-errors-1'(_Config) ->
   Qry = "import module namespace defs=\"http://www.w3.org/TestModules/defs\"; \"ABC\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "ABC") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XQST0016") of 
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
'combined-errors-2'(_Config) ->
   {skip,"Validation Environment"}.
'combined-errors-3'(_Config) ->
   {skip,"Validation Environment"}.
'combined-errors-4'(_Config) ->
   Qry = "/works[1]/employee[2]/preceding::employee",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<employee name=\"Jane Doe 1\" gender=\"female\">
   <empnum>E1</empnum>
   <pnum>P1</pnum>
   <hours>40</hours>
  </employee>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0010") of 
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
'K-CombinedErrorCodes-1'(_Config) ->
   Qry = "import schema \"http://example.com/NSNOTRECOGNIZED\"; 1 eq 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XQST0009") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XQST0059") of 
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
'K-CombinedErrorCodes-2'(_Config) ->
   Qry = "import schema \"http://example.com/NSNOTRECOGNIZED\" at \"http://example.com/DOESNOTEXIST\"; 1 eq 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XQST0009") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XQST0059") of 
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
'K-CombinedErrorCodes-3'(_Config) ->
   Qry = "import schema \"http://example.com/NSNOTRECOGNIZED\" at \"http://example.com/DOESNOTEXIST\", \"http://example.com/2\", \"http://example.com/3\"; 1 eq 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XQST0009") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XQST0059") of 
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
'K-CombinedErrorCodes-4'(_Config) ->
   Qry = "import schema \"http://example.com/NSNOTRECOGNIZED\" at \"http://example.com/DOESNOTEXIST\", \"http://example.com/2\", \"http://example.com/3\"; 1 eq 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XQST0009") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XQST0059") of 
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
'K-CombinedErrorCodes-5'(_Config) ->
   Qry = "import schema namespace prefix = \"http://example.com/NSNOTRECOGNIZED\" at \"http://example.com/DOESNOTEXIST\", \"http://example.com/2DOESNOTEXIST\", \"http://example.com/3DOESNOTEXIST\"; 1 eq 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XQST0009") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XQST0059") of 
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
'K-CombinedErrorCodes-6'(_Config) ->
   Qry = "import schema default element namespace \"http://example.com/NSNOTRECOGNIZED\" at \"http://example.com/DOESNOTEXIST\", \"http://example.com/2DOESNOTEXIST\", \"http://example.com/3DOESNOTEXIST\"; 1 eq 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XQST0009") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XQST0059") of 
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
'K-CombinedErrorCodes-7'(_Config) ->
   Qry = "import schema namespace NCName := \"http://example.com/Dummy\"; 1",
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
'K-CombinedErrorCodes-9'(_Config) ->
   Qry = "validate { 1 }",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XQTY0030") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XQST0075") of 
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
'K-CombinedErrorCodes-10'(_Config) ->
   Qry = "validate { () }",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XQTY0030") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XQST0075") of 
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
'K-CombinedErrorCodes-11'(_Config) ->
   Qry = "validate lax { 1 }",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XQTY0030") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XQST0075") of 
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
'K-CombinedErrorCodes-12'(_Config) ->
   Qry = "validate strict { 1 }",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XQTY0030") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XQST0075") of 
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
'K-CombinedErrorCodes-13'(_Config) ->
   Qry = "validate lax { }",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XQST0075") of 
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
'K-CombinedErrorCodes-14'(_Config) ->
   Qry = "validate strict { }",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XQST0075") of 
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
'K-CombinedErrorCodes-15'(_Config) ->
   Qry = "validate { }",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XQST0075") of 
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
'FOAR0001_1'(_Config) ->
   Qry = "1.0 div 0.0",
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
'FOAR0001_2'(_Config) ->
   Qry = "1 div 0",
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
'FOAR0001_3'(_Config) ->
   Qry = "1.0e0 idiv 0.0e0",
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
'FOAR0001_4'(_Config) ->
   Qry = "xs:float(1.0e0) idiv xs:float(0.0e0)",
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
'FOAR0001_5'(_Config) ->
   Qry = "1.0 idiv 0.0",
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
'FOAR0001_6'(_Config) ->
   Qry = "1 div 0",
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
'FOAR0001_7'(_Config) ->
   Qry = "1 mod 0",
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
'FOAR0001_8'(_Config) ->
   Qry = "1.0 mod 0.0",
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
'FOAR0001_9'(_Config) ->
   Qry = "xs:yearMonthDuration('P1Y2M') div xs:yearMonthDuration('P0Y0M')",
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
'FOAR0002_1'(_Config) ->
   Qry = "2e308",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"FOAR0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_string_value(Res, "INF") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FOAR0002_3'(_Config) ->
   Qry = "(0 div 0E0) idiv xs:integer(2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOAR0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FOAR0002_4'(_Config) ->
   Qry = "xs:double('INF') idiv xs:integer(2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOAR0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FOAR0002-5'(_Config) ->
   Qry = "xs:dayTimeDuration('P5999999999999999999DT00H00M01S') div xs:dayTimeDuration('P0DT00H00M0.000001S')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"FOAR0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FODT0002") of 
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
'FOCA0001_1'(_Config) ->
   Qry = "xs:decimal(1e308)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"FOCA0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:decimal") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"string-length(string($result)) = (308, 309)") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"starts-with(string($result), '1000000000') or starts-with(string($result), '999999999')") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FOCA0002_1'(_Config) ->
   Qry = "xs:float('INF') cast as xs:integer",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCA0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FOCA0002_2'(_Config) ->
   Qry = "QName(\"http://www.w3.org/\", \"1\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCA0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FOCA0002_3'(_Config) ->
   Qry = "QName(\"\", \"prefix:localName\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCA0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FOCA0002_4'(_Config) ->
   Qry = "QName(\"http://www.w3.org/\", \"1prefix:localName\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCA0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FOCA0002_5'(_Config) ->
   Qry = "QName(\"http://www.w3.org/\", \"prefix:2localName\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCA0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FOCA0002_6'(_Config) ->
   Qry = "QName(\"\", \"2localName\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCA0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FOCA0002_7'(_Config) ->
   Qry = "resolve-QName(\"2localName\", <localName />)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCA0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FOCA0002_8'(_Config) ->
   Qry = "resolve-QName(\"1prefix:localName\", <localName />)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCA0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FOCA0002_9'(_Config) ->
   Qry = "resolve-QName(\"2localName\", <localName />)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCA0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FOCA0003_1'(_Config) ->
   Qry = "xs:integer(xs:double(1e308))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"FOCA0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:integer") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"string-length(string($result)) = (308, 309)") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"starts-with(string($result), '1000000000') or starts-with(string($result), '999999999')") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FOCA0005_1'(_Config) ->
   Qry = "xs:dayTimeDuration('P3DT10H30M') div xs:double('NaN')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCA0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FOCA0005_2'(_Config) ->
   Qry = "xs:dayTimeDuration('P3DT10H30M') * xs:double('NaN')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCA0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FOCA0005_3'(_Config) ->
   Qry = "xs:dayTimeDuration('P3DT10H30M') div xs:double('NaN')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCA0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FOCA0005_4'(_Config) ->
   Qry = "xs:dayTimeDuration('P3DT10H30M') * xs:double('NaN')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCA0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FOCH0001'(_Config) ->
   Qry = "codepoints-to-string(0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FOCH0002_1'(_Config) ->
   Qry = "compare('a', 'b', 'http://www.cbcl.co.u,/collation')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FOCH0002_10'(_Config) ->
   Qry = "substring-before('a', 'b', 'http://www.cbcl.co.u,/collation')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FOCH0002_2'(_Config) ->
   Qry = "deep-equal('a', 'b', 'http://www.cbcl.co.u,/collation')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FOCH0002_3'(_Config) ->
   Qry = "distinct-values(('a', 'b'), 'http://www.cbcl.co.u,/collation')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FOCH0002_4'(_Config) ->
   Qry = "ends-with('a', 'b', 'http://www.cbcl.co.u,/collation')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FOCH0002_5'(_Config) ->
   Qry = "index-of('a', 'b', 'http://www.cbcl.co.u,/collation')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FOCH0002_6'(_Config) ->
   Qry = "max(('a', 'b'), 'http://www.cbcl.co.u,/collation')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FOCH0002_7'(_Config) ->
   Qry = "min(('a', 'b'), 'http://www.cbcl.co.u,/collation')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FOCH0002_8'(_Config) ->
   Qry = "starts-with('a', 'b', 'http://www.cbcl.co.u,/collation')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FOCH0002_9'(_Config) ->
   Qry = "substring-after('a', 'b', 'http://www.cbcl.co.u,/collation')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FODC0001_1'(_Config) ->
   Qry = "fn:id('id', <a />)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODC0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FODC0001_2'(_Config) ->
   Qry = "<a />/fn:idref('id')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODC0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FODC0002_1'(_Config) ->
   Qry = "doc('http://www.example.org/notFound.xml')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODC0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FODC0002_2'(_Config) ->
   Qry = "doc('http://www.example.org/notFound.xml')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODC0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FODC0002_3'(_Config) ->
   Qry = "doc('http://www.example.org/notFound.xml')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODC0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FODC0002_4'(_Config) ->
   Qry = "collection()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODC0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FODC0004'(_Config) ->
   Qry = "collection('%gg')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"FODC0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FODC0002") of 
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
'FODC0005-1'(_Config) ->
   Qry = "doc('%gg')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"FODC0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FODC0002") of 
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
'FODC0005-2'(_Config) ->
   Qry = "doc-available('%gg')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"FODC0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FODT0001-1'(_Config) ->
   Qry = "adjust-dateTime-to-timezone( xs:dateTime(\"25252734927766555-07-28T23:59:59-14:00\"), xs:dayTimeDuration(\"PT14H\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODT0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FODT0001-10'(_Config) ->
   Qry = "xs:date(\"25252734927766555-07-28-14:00\") - xs:yearMonthDuration(\"-P1Y0M\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODT0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FODT0001-11'(_Config) ->
   Qry = "xs:date(\"25252734927766555-07-28-14:00\") - xs:date(\"-25252734927766555-07-28-14:00\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODT0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FODT0001-12'(_Config) ->
   Qry = "xs:dateTime(\"25252734927766555-07-28T23:59:59-14:00\") - xs:dateTime(\"-25252734927766555-07-28T23:59:59-14:00\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODT0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FODT0001-2'(_Config) ->
   Qry = "adjust-date-to-timezone( xs:date(\"25252734927766555-07-28-14:00\"), xs:dayTimeDuration(\"PT14H\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODT0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FODT0001-3'(_Config) ->
   Qry = "xs:dateTime(\"25252734927766555-07-28T23:59:59-14:00\") + xs:dayTimeDuration(\"PT14H\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODT0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FODT0001-4'(_Config) ->
   Qry = "xs:date(\"25252734927766555-07-28-14:00\") + xs:dayTimeDuration(\"PT24H\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODT0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FODT0001-5'(_Config) ->
   Qry = "xs:dateTime(\"25252734927766555-07-28T23:59:59-14:00\") - xs:dayTimeDuration(\"-PT14H\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODT0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FODT0001-6'(_Config) ->
   Qry = "xs:date(\"25252734927766555-07-28-14:00\") - xs:dayTimeDuration(\"-PT24H\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODT0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FODT0001-7'(_Config) ->
   Qry = "xs:dateTime(\"25252734927766555-07-28T23:59:59-14:00\") + xs:yearMonthDuration(\"P1Y0M\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODT0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FODT0001-8'(_Config) ->
   Qry = "xs:date(\"25252734927766555-07-28-14:00\") + xs:yearMonthDuration(\"P1Y0M\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODT0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FODT0001-9'(_Config) ->
   Qry = "xs:dateTime(\"25252734927766555-07-28T23:59:59-14:00\") - xs:yearMonthDuration(\"-P1Y0M\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODT0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FODT0002-1'(_Config) ->
   Qry = "xs:dayTimeDuration('P5999999999999999999DT00H00M01S') + xs:dayTimeDuration('P4999999999999999999DT00H00M01S')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODT0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FODT0002-2'(_Config) ->
   Qry = "xs:dayTimeDuration('P5999999999999999999DT00H00M01S') * 2",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODT0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FODT0002-3'(_Config) ->
   Qry = "xs:dayTimeDuration('P5999999999999999999DT00H00M01S') div 0.5",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODT0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FODT0002-4'(_Config) ->
   Qry = "xs:dayTimeDuration('P5999999999999999999DT00H00M01S') - xs:dayTimeDuration('-P5999999999999999999DT00H00M01S')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODT0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FODT0002-6'(_Config) ->
   Qry = "xs:yearMonthDuration('P768614336404564650Y0M') + xs:yearMonthDuration('P768614336404564650Y1M')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODT0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FODT0002-7'(_Config) ->
   Qry = "xs:yearMonthDuration('P768614336404564650Y0M') * 2",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODT0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FODT0002-8'(_Config) ->
   Qry = "xs:yearMonthDuration('P768614336404564650Y0M') div 0.5",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODT0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FODT0002-9'(_Config) ->
   Qry = "xs:yearMonthDuration('P768614336404564650Y0M') - xs:yearMonthDuration('-P768614336404564650Y0M')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODT0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FODT0003-1'(_Config) ->
   Qry = "adjust-date-to-timezone( xs:date(\"2001-07-28-14:00\"), xs:dayTimeDuration(\"PT15H\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODT0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FODT0003-2'(_Config) ->
   Qry = "adjust-date-to-timezone( xs:date(\"2001-07-28-14:00\"), xs:dayTimeDuration(\"-PT15H\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODT0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FOER0000'(_Config) ->
   Qry = "error()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOER0000") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FONS0004-1'(_Config) ->
   Qry = "resolve-QName('prefix:localName', <element />)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FONS0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FONS0004-2'(_Config) ->
   Qry = "xs:QName('prefix:localName')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FONS0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FORG0001'(_Config) ->
   Qry = "xs:integer('INF')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FORG0002'(_Config) ->
   Qry = "declare base-uri \"http://www.w3.org/\"; resolve-uri(\"%gg\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FORG0003'(_Config) ->
   Qry = "zero-or-one( (1, 2, 3) )",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FORG0004'(_Config) ->
   Qry = "one-or-more( () )",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FORG0005'(_Config) ->
   Qry = "exactly-one( () )",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FORG0006_01'(_Config) ->
   Qry = "fn:boolean( xs:date('2007-01-01') )",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"FORG0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPTY0004") of 
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
'FORG0006_02'(_Config) ->
   Qry = "fn:avg( (xs:yearMonthDuration('P1Y0M'), 1) )",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FORG0006_03'(_Config) ->
   Qry = "fn:min( (xs:yearMonthDuration('P1Y0M'), 1) )",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FORG0006_04'(_Config) ->
   Qry = "fn:max( (xs:yearMonthDuration('P1Y0M'), 1) )",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FORG0006_05'(_Config) ->
   Qry = "fn:sum( (xs:yearMonthDuration('P1Y0M'), 1) )",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FORG0008'(_Config) ->
   Qry = "dateTime(xs:date('2001-01-01-14:00'), xs:time('01:01:01+14:00'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FORG0009'(_Config) ->
   Qry = "resolve-uri('../../', '../../')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'FOTY0012'(_Config) ->
   {skip,"schemaImport"}.
'XPDY0002_01'(_Config) ->
   Qry = ".",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XPDY0002_02'(_Config) ->
   Qry = "declare variable $variable external; $variable",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XPDY0050'(_Config) ->
   Qry = "1 treat as node()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0050") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XPTY0004_01'(_Config) ->
   Qry = "attribute { 1 } { 1 }",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XPTY0018'(_Config) ->
   Qry = "(<a/>, <b/>)/(if (position() mod 2 = 1) then position() else .)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0018") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XPTY0019_1'(_Config) ->
   Qry = "<a/>/1/node()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0019") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XPTY0019_2'(_Config) ->
   Qry = "declare namespace foo = \"http://www.example.org\"; declare function foo:something() { (<a />, 1, <b/>, 2) }; foo:something()/a",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0019") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XPTY0019_3'(_Config) ->
   Qry = "declare namespace foo = \"http://www.example.org\"; declare function foo:something($pos as xs:integer) { if ($pos eq 1) then 1 else <a /> }; let $x := <a><b><c/></b><b><c/></b></a> return $x/b/(foo:something(position()))/a",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0019") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XPTY0004_02'(_Config) ->
   Qry = "element { 1 } { }",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XPTY0004_03'(_Config) ->
   Qry = "() cast as xs:integer",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XPTY0004_04'(_Config) ->
   Qry = "(1, 2) cast as xs:integer",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XPTY0004_05'(_Config) ->
   Qry = "let $x as node() := 1 return $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XPTY0004_06'(_Config) ->
   Qry = "for $x as node() in (1, 2, 3) return $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XPTY0004_07'(_Config) ->
   Qry = "document { attribute {'foo'} {} }",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XPTY0004_08'(_Config) ->
   Qry = "declare namespace foo = \"http://www.example.org\"; declare function foo:content($type as xs:integer) { if ($type eq 1) then attribute {'foo'} {} else <foo /> }; document { foo:content(1) }",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XPTY0004_09'(_Config) ->
   Qry = "for $x in (1, 'hello', xs:date('2007-11-28')) order by $x return $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XPTY0004_10'(_Config) ->
   Qry = "fn:upper-case(1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XPTY0004_11'(_Config) ->
   Qry = "fn:tokenize('foo', () )",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XPTY0004_12'(_Config) ->
   {skip,"XQ10 XP20 XQ30 XP30"}.
'XPTY0004_12a'(_Config) ->
   Qry = "fn:error( () )",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOER0000") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XPTY0004_13'(_Config) ->
   Qry = "\"string\" eq 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XPTY0004_14'(_Config) ->
   Qry = "\"string\" ne 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XPTY0004_15'(_Config) ->
   Qry = "\"string\" le 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XPTY0004_16'(_Config) ->
   Qry = "\"string\" gt 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XPTY0004_17'(_Config) ->
   Qry = "\"string\" ge 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XPTY0004_18'(_Config) ->
   Qry = "\"string\" ne 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XPTY0004_19'(_Config) ->
   Qry = "\"string\" << 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XPTY0004_20'(_Config) ->
   Qry = "\"string\" >> 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XPTY0004_21'(_Config) ->
   Qry = "\"string\" is 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XPTY0004_22'(_Config) ->
   Qry = "\"string\" div 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XPTY0004_23'(_Config) ->
   Qry = "\"string\" idiv 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XPTY0004_24'(_Config) ->
   Qry = "\"string\" * 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XPTY0004_25'(_Config) ->
   Qry = "\"string\" mod 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XPTY0004_26'(_Config) ->
   Qry = "\"string\" - 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XPTY0004_27'(_Config) ->
   Qry = "\"string\" + 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XPTY0004_28'(_Config) ->
   Qry = "declare namespace foo = \"http://www.example.org\"; declare function foo:something($type as xs:integer) { if ($type eq 1) then xs:date('2007-11-28') else 1.0 }; abs(foo:something(1))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XPTY0004_29'(_Config) ->
   Qry = "declare namespace foo = \"http://www.example.org\"; declare function foo:something($type as xs:integer) { if ($type eq 1) then xs:date('2007-11-28') else 'foo' }; element { foo:something(1) } { }",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XPTY0004_30'(_Config) ->
   Qry = "declare namespace foo = \"http://www.example.org\"; declare function foo:something($type as xs:integer) { if ($type eq 1) then xs:date('2007-11-28') else 'foo' }; processing-instruction { foo:something(1) } { }",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XPTY0004_31'(_Config) ->
   Qry = "declare namespace foo = \"http://www.example.org\"; declare function foo:something($type as xs:integer) { if ($type eq 1) then xs:date('2007-11-28') else 'foo' }; <e> { attribute { foo:something(1) } { } } </e>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XPTY0004_32'(_Config) ->
   Qry = "declare namespace foo = \"http://www.example.org\"; declare function foo:something($type as xs:integer) { if ($type eq 1) then ('foo', xs:date('2007-11-28'), 'foo') else 'foo' }; let $x as xs:string* := foo:something(1) return $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XPTY0004_33'(_Config) ->
   Qry = "declare namespace foo = \"http://www.example.org\"; declare function foo:something($type as xs:integer) { if ($type eq 1) then xs:date('2007-11-28') else 'foo' }; for $x as xs:string in foo:something(1) return $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XPTY0004_34'(_Config) ->
   Qry = "declare namespace foo = \"http://www.example.org\"; declare function foo:something($type) as xs:integer { $type }; foo:something('foo')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XPTY0004_35'(_Config) ->
   Qry = "declare namespace foo = \"http://www.example.org\"; declare function foo:something($type as xs:integer) as xs:integer { if ($type eq 1) then xs:date('2007-11-28') else $type }; foo:something(1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XPTY0004_37'(_Config) ->
   Qry = "-xs:date('2007-11-29')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XPTY0004_38'(_Config) ->
   Qry = "declare namespace foo = \"http://www.example.org\"; declare function foo:something($pos as xs:integer) { if ($pos eq 1) then 1 else xs:date('2007-11-29') }; -foo:something(2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XPTY0004_39'(_Config) ->
   Qry = "declare namespace foo = \"http://www.example.org\"; declare function foo:something($pos as xs:integer) { if ($pos eq 1) then 1 else xs:date('2007-11-29') }; +foo:something(2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XPTY0004_40'(_Config) ->
   Qry = "+xs:date('2007-11-29')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XPTY0004_41'(_Config) ->
   Qry = "fn:boolean( (1, 2) )",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FORG0006") of 
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
'XPTY0004_42'(_Config) ->
   Qry = "fn:string-length(xs:date('2007-11-29'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XPTY0004_43'(_Config) ->
   Qry = "xs:date(1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XPTY0004_44'(_Config) ->
   Qry = "1 cast as xs:date",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XPTY0004_45'(_Config) ->
   {skip,"XP20 XQ10"}.
'XPTY0004_46'(_Config) ->
   Qry = "(1, 2) + 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XPTY0004_47'(_Config) ->
   Qry = "declare variable $a := <e><a/><b/><a/></e>; <a>{$a/a eq 1}</a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XPTY0004_48'(_Config) ->
   Qry = "let $i := (1, 3, 2) order by $i return $i",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "1 3 2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPTY0004") of 
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
'XPTY0020'(_Config) ->
   Qry = "<a/>/20[text()]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0020") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQDY0025_1'(_Config) ->
   Qry = "let $attr1 := attribute attr { 'foo' } return let $attr2 := attribute attr { 'bar' } return <a>{$attr1, $attr2 }</a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0025") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQDY0025_2'(_Config) ->
   Qry = "declare namespace prefix = \"http://www/w3.org/\"; let $attr1 := attribute prefix:attr { 'foo' } return let $attr2 := attribute prefix:attr { 'bar' } return <a>{$attr1, $attr2 }</a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0025") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQDY0025_3'(_Config) ->
   Qry = "declare namespace prefix = \"http://www/w3.org/\"; let $attr1 := attribute attr { 'foo' } return let $attr2 := attribute attr { 'bar' } return <prefix:a>{$attr1, $attr2 }</prefix:a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0025") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQDY0025_4'(_Config) ->
   Qry = "declare namespace prefix = \"http://www/w3.org/\"; let $attr1 := attribute prefix:attr { 'foo' } return let $attr2 := attribute prefix:attr { 'bar' } return <prefix:a>{$attr1, $attr2 }</prefix:a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0025") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQDY0026'(_Config) ->
   Qry = "processing-instruction target { '?>' }",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0026") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQDY0027'(_Config) ->
   {skip,"schemaImport"}.
'XQDY0041'(_Config) ->
   Qry = "<a> { processing-instruction { '1BadName' } { 'content' } } </a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0041") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQDY0044_1'(_Config) ->
   Qry = "<a> { attribute { 'xmlns' } { 'http://www.w3.org/' } } </a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0044") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQDY0061'(_Config) ->
   {skip,"schemaValidation"}.
'XQDY0064'(_Config) ->
   Qry = "<a> { processing-instruction { 'xml' } { 'content' } } </a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0064") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQDY0072'(_Config) ->
   Qry = "<a> { comment { ' -- ' } } </a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0072") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQDY0074_1'(_Config) ->
   Qry = "<a> { element { 'prefix:localName' } { } } </a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0074") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQDY0074_2'(_Config) ->
   Qry = "<a> { attribute { 'prefix:localName' } { } } </a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0074") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQDY0074_3'(_Config) ->
   Qry = "<a> { element { '1localName' } { } } </a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0074") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQDY0074_4'(_Config) ->
   Qry = "<a> { attribute { '1localName' } { } } </a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0074") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQDY0084'(_Config) ->
   {skip,"schemaImport"}.
'XQDY0091'(_Config) ->
   Qry = "<e xml:id=\" ab c d \"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XQDY0091") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_xml(Res,"<e xml:id=\"ab c d\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQDY0092'(_Config) ->
   Qry = "<a xml:space=\"space\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XQDY0092") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_xml(Res,"<a xml:space=\"space\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQST0022_1'(_Config) ->
   Qry = "<a xmlns=\"{1}\" />",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0022") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQST0022_2'(_Config) ->
   Qry = "<a xmlns:prefix=\"{1}\" />",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0022") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQST0031'(_Config) ->
   Qry = "xquery version '2.0'; 1+2",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0031") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQST0032'(_Config) ->
   Qry = "declare base-uri \"http://www.example.org/A\"; declare base-uri \"http://www.example.org/B\"; 1 + 2",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0032") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQST0033'(_Config) ->
   Qry = "declare namespace cheddar = 'http://www.example.org/cheddar'; declare namespace cheddar = 'http://www.example.org/cheddar'; 1 + 2",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0033") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQST0034'(_Config) ->
   Qry = "declare namespace prefix = \"http://www.example.org/\"; declare function prefix:foo() { 1 }; declare function prefix:foo() { 1 }; 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0034") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQST0036_1'(_Config) ->
   {skip,"schemaImport"}.
'XQST0036_2'(_Config) ->
   {skip,"schemaImport"}.
'XQST0036_3'(_Config) ->
   {skip,"schemaImport"}.
'XQST0036_4'(_Config) ->
   {skip,"schemaImport"}.
'XQST0036_5'(_Config) ->
   {skip,"schemaImport"}.
'XQST0036_6'(_Config) ->
   {skip,"schemaImport"}.
'XQST0036_7'(_Config) ->
   {skip,"schemaImport"}.
'XQST0038_1'(_Config) ->
   Qry = "declare default collation \"http://www.w3.org/2005/xpath-functions/collation/codepoint\"; declare default collation \"http://www.w3.org/2005/xpath-functions/collation/codepoint\"; 1 + 2",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0038") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQST0038_3'(_Config) ->
   Qry = "declare default collation \"http://www.example.org/\"; 1 + 2",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0038") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQST0039'(_Config) ->
   Qry = "declare namespace prefix = \"http://www.w3.org/\"; declare function prefix:foo($arg, $arg) { 1 }; 1 + 2",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0039") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQST0040'(_Config) ->
   Qry = "<a attr=\"a\" attr=\"a\" />",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0040") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQST0045-1'(_Config) ->
   Qry = "declare function foo() { 1 }; foo()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0045") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQST0045-2'(_Config) ->
   Qry = "declare function xml:foo() { 1 }; xml:foo()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0045") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQST0045-3'(_Config) ->
   Qry = "declare function xs:foo() { 1 }; xs:foo()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0045") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQST0045-4'(_Config) ->
   Qry = "declare function xsi:foo() { 1 }; xsi:foo()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0045") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQST0046_01'(_Config) ->
   Qry = "base-uri(<a xml:base=\"%gg\" />)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XQST0046") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FORG0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_string_value(Res, "%gg") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQST0046_02'(_Config) ->
   Qry = "import module \"http://www.example.org/test\"; true()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XQST0046") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XQST0059") of 
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
'XQST0046_03'(_Config) ->
   Qry = "declare namespace foo = \"%gg\"; true()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XQST0046") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQST0046_04'(_Config) ->
   Qry = "declare default element namespace \"%gg\"; true()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XQST0046") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQST0046_05'(_Config) ->
   Qry = "declare default function namespace \"%gg\"; fn:true()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XQST0046") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQST0046_06'(_Config) ->
   Qry = "declare default collation \"%gg\"; fn:true()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XQST0046") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XQST0038") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQST0046_07'(_Config) ->
   Qry = "declare base-uri \"%gg\"; true()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XQST0046") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQST0046_09'(_Config) ->
   Qry = "import schema \"http://www.w3.org/\" at \"%gg\"; 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XQST0046") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XQST0059") of 
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
'XQST0046_10'(_Config) ->
   Qry = "import module \"%gg\"; true()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XQST0046") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQST0046_11'(_Config) ->
   Qry = "import module \"http://www.w3.org/\" at \"%gg\"; 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XQST0046") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XQST0059") of 
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
'XQST0046_12'(_Config) ->
   Qry = "for $x in (\"a\", \"a\", \"a\") order by $x collation \"%gg\" return $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XQST0046") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XQST0076") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_string_value(Res, "aaa") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQST0047'(_Config) ->
   Qry = "import module \"http://www.example.org/foo\"; import module \"http://www.example.org/foo\"; 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0047") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQST0048'(_Config) ->
   Qry = "import module namespace foo = \"http://www.example.org/foo\"; 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0048") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQST0049'(_Config) ->
   Qry = "declare variable $foo external; declare variable $foo external; 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0049") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQST0054'(_Config) ->
   {skip,"XQ10"}.
'XQST0055'(_Config) ->
   Qry = "declare copy-namespaces preserve,inherit; declare copy-namespaces preserve,no-inherit; 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0055") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQST0057'(_Config) ->
   Qry = "import schema namespace foo = \"\" at \"http://www.w3.org/\"; 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0057") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQST0058'(_Config) ->
   {skip,"schemaImport"}.
'XQST0059_1'(_Config) ->
   {skip,"schemaImport"}.
'XQST0059_2'(_Config) ->
   Qry = "import module namespace foo = \"http://www.w3.org/\" at \"DoesNotExist.xq\"; 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0059") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQST0059_3'(_Config) ->
   {skip,"schemaImport"}.
'XQST0059_4'(_Config) ->
   Qry = "import module namespace foo = \"http://www.w3.org/\"; 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0059") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQST0059_5'(_Config) ->
   Qry = "import module namespace foo = \"http://www.example.org/\"; foo:bar()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0059") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQST0059_6'(_Config) ->
   {skip,"schemaImport"}.
'XQST0060'(_Config) ->
   Qry = "declare default function namespace \"\"; declare function foo() { 1 }; 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0060") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQST0065'(_Config) ->
   Qry = "declare ordering unordered; declare ordering ordered; 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0065") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQST0066_1'(_Config) ->
   Qry = "declare default element namespace \"http://www.w3.org/a\"; declare default element namespace \"http://www.w3.org/b\"; 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0066") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQST0066_3'(_Config) ->
   Qry = "declare default function namespace \"http://www.example.org/\"; declare default function namespace \"http://www.w3.org/2005/xpath-functions/collation/codepoint\"; 1 + 2",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0066") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQST0067'(_Config) ->
   Qry = "declare construction strip; declare construction preserve; 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0067") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQST0068'(_Config) ->
   Qry = "declare boundary-space strip; declare boundary-space preserve; 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0068") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQST0069'(_Config) ->
   Qry = "declare default order empty least; declare default order empty greatest; 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0069") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQST0070_1'(_Config) ->
   Qry = "import schema namespace xml = \"http://www.example.org/\"; 1 + 2",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0070") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQST0070_2'(_Config) ->
   Qry = "import module namespace xml = \"http://www.example.org/\"; 1 + 2",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0070") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQST0070_3'(_Config) ->
   Qry = "import module namespace xml = 'http://www.example.org/'; 1 + 2",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0070") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQST0070_4'(_Config) ->
   Qry = "declare namespace xml = \"http://www.example.org/\"; 1 + 2",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0070") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQST0071_1'(_Config) ->
   Qry = "<a xmlns:prefix=\"http://www.w3.org/\" xmlns:prefix=\"http://www.w3.org/\" />",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0071") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQST0071_2'(_Config) ->
   Qry = "<a xmlns=\"http://www.w3.org/\" xmlns=\"http://www.w3.org/\" />",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0071") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQST0076'(_Config) ->
   Qry = "for $x in ('a', 'b', 'c') order by $x collation 'http://www.w3.org/' return $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0076") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQST0079'(_Config) ->
   {skip,"XQ10 XQ30"}.
'XQST0085'(_Config) ->
   Qry = "<element xmlns:foo=\"http://www.w3.org/\"> <element xmlns:foo=\"\" /> </element>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0085") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQST0085b'(_Config) ->
   {skip,"XML 1.1"}.
'XQST0085c'(_Config) ->
   {skip,"XML 1.1"}.
'XQST0087'(_Config) ->
   Qry = "xquery version '1.0' encoding '_utf'; 1+2",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0087") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQST0088_1'(_Config) ->
   Qry = "import module namespace cheese = ''; 1 + 2",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0088") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQST0088_2'(_Config) ->
   Qry = "import module \"http://www.example.org/test\"; 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0088") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQST0089'(_Config) ->
   Qry = "for $x at $x in (1, 2, 3) return $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0089") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQST0090'(_Config) ->
   Qry = "<bad-character-reference>&#xa999999999999999a;</bad-character-reference>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0090") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQST0093'(_Config) ->
   {skip,"XQ10"}.
'XQST0093a'(_Config) ->
   Qry = "
      	import module namespace foo=\"http://www.example.org/foo\"; 
      	$foo:variable2
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQTY0024_1'(_Config) ->
   Qry = "declare namespace prefix = \"http://www.w3.org/\"; <prefix:a> { <b />, attribute prefix:foo { 'bar' } } </prefix:a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQTY0024") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQTY0024_2'(_Config) ->
   Qry = "declare namespace prefix = \"http://www.w3.org/\"; <prefix:a> { <b />, attribute foo { 'bar' } } </prefix:a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQTY0024") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQTY0024_3'(_Config) ->
   Qry = "declare namespace prefix = \"http://www.w3.org/\"; <a> { <b />, attribute prefix:foo { 'bar' } } </a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQTY0024") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQTY0024_4'(_Config) ->
   Qry = "<a> { <b />, attribute foo { 'bar' } } </a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQTY0024") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQTY0030'(_Config) ->
   {skip,"schemaValidation"}.
'XQTY0086_1'(_Config) ->
   {skip,"Validation Environment"}.
'XQTY0086_2'(_Config) ->
   {skip,"Validation Environment"}.
'XQTY0086_3'(_Config) ->
   {skip,"Validation Environment"}.
'XQST0125_1'(_Config) ->
   Qry = "
        let $f := %public function($arg as xs:integer) as xs:integer 
                          { $arg + 1 }
        return $f(1)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0125") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'XQST0125_2'(_Config) ->
   Qry = "
        let $f := %private function($arg as xs:integer) as xs:integer 
                           { $arg + 1 }
        return $f(1)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0125") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'typeswitch-in-xpath'(_Config) ->
   {skip,"XP20+"}.
