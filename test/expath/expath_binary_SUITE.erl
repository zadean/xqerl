-module('expath_binary_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['EXPath-binary-length-001'/1]).
-export(['EXPath-binary-length-002'/1]).
-export(['EXPath-binary-from-octets-001'/1]).
-export(['EXPath-binary-from-octets-002'/1]).
-export(['EXPath-binary-from-octets-003'/1]).
-export(['EXPath-binary-from-octets-004'/1]).
-export(['EXPath-binary-to-octets-001'/1]).
-export(['EXPath-binary-to-octets-002'/1]).
-export(['EXPath-binary-hex-001'/1]).
-export(['EXPath-binary-hex-002'/1]).
-export(['EXPath-binary-hex-003'/1]).
-export(['EXPath-binary-hex-004'/1]).
-export(['EXPath-binary-hex-005'/1]).
-export(['EXPath-binary-bin-001'/1]).
-export(['EXPath-binary-bin-002'/1]).
-export(['EXPath-binary-bin-003'/1]).
-export(['EXPath-binary-bin-004'/1]).
-export(['EXPath-binary-bin-005'/1]).
-export(['EXPath-binary-octal-001'/1]).
-export(['EXPath-binary-octal-002'/1]).
-export(['EXPath-binary-octal-003'/1]).
-export(['EXPath-binary-octal-004'/1]).
-export(['EXPath-binary-octal-005'/1]).
-export(['EXPath-binary-part-001'/1]).
-export(['EXPath-binary-part-002'/1]).
-export(['EXPath-binary-part-003'/1]).
-export(['EXPath-binary-part-004'/1]).
-export(['EXPath-binary-part-005'/1]).
-export(['EXPath-binary-part-006'/1]).
-export(['EXPath-binary-join-001'/1]).
-export(['EXPath-binary-join-002'/1]).
-export(['EXPath-binary-join-003'/1]).
-export(['EXPath-binary-insert-before-001'/1]).
-export(['EXPath-binary-insert-before-002'/1]).
-export(['EXPath-binary-insert-before-003'/1]).
-export(['EXPath-binary-insert-before-004'/1]).
-export(['EXPath-binary-insert-before-005'/1]).
-export(['EXPath-binary-insert-before-006'/1]).
-export(['EXPath-binary-pad-left-001'/1]).
-export(['EXPath-binary-pad-left-002'/1]).
-export(['EXPath-binary-pad-left-003'/1]).
-export(['EXPath-binary-pad-left-004'/1]).
-export(['EXPath-binary-pad-left-005'/1]).
-export(['EXPath-binary-pad-left-006'/1]).
-export(['EXPath-binary-pad-left-007'/1]).
-export(['EXPath-binary-pad-left-008'/1]).
-export(['EXPath-binary-pad-right-001'/1]).
-export(['EXPath-binary-pad-right-002'/1]).
-export(['EXPath-binary-pad-right-003'/1]).
-export(['EXPath-binary-pad-right-004'/1]).
-export(['EXPath-binary-pad-right-005'/1]).
-export(['EXPath-binary-pad-right-006'/1]).
-export(['EXPath-binary-pad-right-007'/1]).
-export(['EXPath-binary-pad-right-008'/1]).
-export(['EXPath-binary-find-001'/1]).
-export(['EXPath-binary-find-002'/1]).
-export(['EXPath-binary-find-003'/1]).
-export(['EXPath-binary-find-004'/1]).
-export(['EXPath-binary-find-005'/1]).
-export(['EXPath-binary-find-006'/1]).
-export(['EXPath-binary-find-007'/1]).
-export(['EXPath-binary-encode-string-001'/1]).
-export(['EXPath-binary-encode-string-002'/1]).
-export(['EXPath-binary-encode-string-003'/1]).
-export(['EXPath-binary-encode-string-004'/1]).
-export(['EXPath-binary-encode-string-005'/1]).
-export(['EXPath-binary-encode-string-006'/1]).
-export(['EXPath-binary-encode-string-007'/1]).
-export(['EXPath-binary-encode-string-008'/1]).
-export(['EXPath-binary-decode-string-001'/1]).
-export(['EXPath-binary-decode-string-002'/1]).
-export(['EXPath-binary-decode-string-003'/1]).
-export(['EXPath-binary-decode-string-004'/1]).
-export(['EXPath-binary-decode-string-005'/1]).
-export(['EXPath-binary-decode-string-006'/1]).
-export(['EXPath-binary-decode-string-007'/1]).
-export(['EXPath-binary-decode-string-008'/1]).
-export(['EXPath-binary-decode-string-009'/1]).
-export(['EXPath-binary-decode-string-010'/1]).
-export(['EXPath-binary-decode-string-011'/1]).
-export(['EXPath-binary-decode-string-012'/1]).
-export(['EXPath-binary-decode-string-013'/1]).
-export(['EXPath-binary-decode-string-014'/1]).
-export(['EXPath-binary-decode-string-015'/1]).
-export(['EXPath-binary-decode-string-016'/1]).
-export(['EXPath-binary-pack-integer-001'/1]).
-export(['EXPath-binary-pack-integer-002'/1]).
-export(['EXPath-binary-pack-integer-003'/1]).
-export(['EXPath-binary-pack-integer-004'/1]).
-export(['EXPath-binary-pack-integer-005'/1]).
-export(['EXPath-binary-pack-integer-006'/1]).
-export(['EXPath-binary-pack-integer-007'/1]).
-export(['EXPath-binary-pack-integer-008'/1]).
-export(['EXPath-binary-pack-integer-009'/1]).
-export(['EXPath-binary-pack-integer-010'/1]).
-export(['EXPath-binary-pack-integer-011'/1]).
-export(['EXPath-binary-pack-integer-012'/1]).
-export(['EXPath-binary-pack-integer-013'/1]).
-export(['EXPath-binary-pack-integer-014'/1]).
-export(['EXPath-binary-pack-integer-015'/1]).
-export(['EXPath-binary-pack-integer-016'/1]).
-export(['EXPath-binary-pack-integer-017'/1]).
-export(['EXPath-binary-pack-integer-018'/1]).
-export(['EXPath-binary-pack-integer-019'/1]).
-export(['EXPath-binary-pack-integer-020'/1]).
-export(['EXPath-binary-pack-integer-021'/1]).
-export(['EXPath-binary-pack-double-001'/1]).
-export(['EXPath-binary-pack-double-002'/1]).
-export(['EXPath-binary-pack-double-003'/1]).
-export(['EXPath-binary-pack-double-004'/1]).
-export(['EXPath-binary-pack-double-005'/1]).
-export(['EXPath-binary-pack-double-006'/1]).
-export(['EXPath-binary-pack-double-007'/1]).
-export(['EXPath-binary-pack-double-008'/1]).
-export(['EXPath-binary-pack-double-009'/1]).
-export(['EXPath-binary-pack-double-010'/1]).
-export(['EXPath-binary-pack-double-011'/1]).
-export(['EXPath-binary-pack-float-001'/1]).
-export(['EXPath-binary-pack-float-002'/1]).
-export(['EXPath-binary-pack-float-003'/1]).
-export(['EXPath-binary-pack-float-004'/1]).
-export(['EXPath-binary-pack-float-005'/1]).
-export(['EXPath-binary-pack-float-006'/1]).
-export(['EXPath-binary-pack-float-007'/1]).
-export(['EXPath-binary-pack-float-008'/1]).
-export(['EXPath-binary-pack-float-009'/1]).
-export(['EXPath-binary-pack-float-010'/1]).
-export(['EXPath-binary-unpack-double-001'/1]).
-export(['EXPath-binary-unpack-double-002'/1]).
-export(['EXPath-binary-unpack-double-003'/1]).
-export(['EXPath-binary-unpack-double-004'/1]).
-export(['EXPath-binary-unpack-double-005'/1]).
-export(['EXPath-binary-unpack-double-006'/1]).
-export(['EXPath-binary-unpack-double-007'/1]).
-export(['EXPath-binary-unpack-double-008'/1]).
-export(['EXPath-binary-unpack-double-009'/1]).
-export(['EXPath-binary-unpack-float-001'/1]).
-export(['EXPath-binary-unpack-float-002'/1]).
-export(['EXPath-binary-unpack-float-003'/1]).
-export(['EXPath-binary-unpack-float-004'/1]).
-export(['EXPath-binary-unpack-float-005'/1]).
-export(['EXPath-binary-unpack-float-006'/1]).
-export(['EXPath-binary-unpack-float-007'/1]).
-export(['EXPath-binary-unpack-float-008'/1]).
-export(['EXPath-binary-unpack-float-009'/1]).
-export(['EXPath-binary-unpack-unsigned-integer-001'/1]).
-export(['EXPath-binary-unpack-unsigned-integer-002'/1]).
-export(['EXPath-binary-unpack-unsigned-integer-003'/1]).
-export(['EXPath-binary-unpack-unsigned-integer-004'/1]).
-export(['EXPath-binary-unpack-unsigned-integer-005'/1]).
-export(['EXPath-binary-unpack-unsigned-integer-006'/1]).
-export(['EXPath-binary-unpack-unsigned-integer-007'/1]).
-export(['EXPath-binary-unpack-unsigned-integer-008'/1]).
-export(['EXPath-binary-unpack-unsigned-integer-009'/1]).
-export(['EXPath-binary-unpack-unsigned-integer-010'/1]).
-export(['EXPath-binary-unpack-unsigned-integer-011'/1]).
-export(['EXPath-binary-unpack-unsigned-integer-012'/1]).
-export(['EXPath-binary-unpack-unsigned-integer-013'/1]).
-export(['EXPath-binary-unpack-unsigned-integer-014'/1]).
-export(['EXPath-binary-unpack-integer-001'/1]).
-export(['EXPath-binary-unpack-integer-002'/1]).
-export(['EXPath-binary-unpack-integer-003'/1]).
-export(['EXPath-binary-unpack-integer-004'/1]).
-export(['EXPath-binary-unpack-integer-005'/1]).
-export(['EXPath-binary-unpack-integer-006'/1]).
-export(['EXPath-binary-unpack-integer-007'/1]).
-export(['EXPath-binary-unpack-integer-008'/1]).
-export(['EXPath-binary-unpack-integer-009'/1]).
-export(['EXPath-binary-unpack-integer-010'/1]).
-export(['EXPath-binary-unpack-integer-011'/1]).
-export(['EXPath-binary-unpack-integer-012'/1]).
-export(['EXPath-binary-unpack-integer-013'/1]).
-export(['EXPath-binary-unpack-integer-014'/1]).
-export(['EXPath-binary-unpack-integer-015'/1]).
-export(['EXPath-binary-bitwise-or-001'/1]).
-export(['EXPath-binary-bitwise-or-002'/1]).
-export(['EXPath-binary-bitwise-or-003'/1]).
-export(['EXPath-binary-bitwise-or-004'/1]).
-export(['EXPath-binary-bitwise-or-005'/1]).
-export(['EXPath-binary-bitwise-or-006'/1]).
-export(['EXPath-binary-bitwise-and-001'/1]).
-export(['EXPath-binary-bitwise-and-002'/1]).
-export(['EXPath-binary-bitwise-and-003'/1]).
-export(['EXPath-binary-bitwise-and-004'/1]).
-export(['EXPath-binary-bitwise-and-005'/1]).
-export(['EXPath-binary-bitwise-and-006'/1]).
-export(['EXPath-binary-bitwise-xor-001'/1]).
-export(['EXPath-binary-bitwise-xor-002'/1]).
-export(['EXPath-binary-bitwise-xor-003'/1]).
-export(['EXPath-binary-bitwise-xor-004'/1]).
-export(['EXPath-binary-bitwise-xor-005'/1]).
-export(['EXPath-binary-bitwise-xor-006'/1]).
-export(['EXPath-binary-bitwise-not-001'/1]).
-export(['EXPath-binary-bitwise-not-002'/1]).
-export(['EXPath-binary-bitwise-shift-001'/1]).
-export(['EXPath-binary-bitwise-shift-002'/1]).
-export(['EXPath-binary-bitwise-shift-003'/1]).
-export(['EXPath-binary-bitwise-shift-004'/1]).
-export(['EXPath-binary-bitwise-shift-005'/1]).
-export(['EXPath-binary-bitwise-shift-006'/1]).
-export(['EXPath-binary-bitwise-shift-007'/1]).
-export(['EXPath-binary-bitwise-shift-008'/1]).
-export(['EXPath-binary-bitwise-shift-009'/1]).
-export(['EXPath-binary-bitwise-shift-010'/1]).
-export(['EXPath-binary-bitwise-shift-011'/1]).
-export(['EXPath-binary-bitwise-shift-012'/1]).
-export(['EXPath-binary-bitwise-shift-013'/1]).
-export(['EXPath-binary-bitwise-shift-014'/1]).
-export(['EXPath-binary-bitwise-shift-015'/1]).
-export(['EXPath-binary-bitwise-shift-016'/1]).
suite() -> [{timetrap,{seconds, 180}}].
init_per_group(_, Config) ->  Config.
end_per_group(_, _Config) -> 
   xqerl_code_server:unload(all).
end_per_suite(_Config) -> 
   ct:timetrap({seconds,60}), 
   xqerl_code_server:unload(all).
init_per_suite(Config) -> 
   {ok,_} = application:ensure_all_started(xqerl),
   DD = filename:dirname(filename:dirname(filename:dirname(?config(data_dir, Config)))),
   TD = filename:join(DD, "QT3-test-suite"),
   __BaseDir = filename:join(TD, "expath"),
   [{base_dir, __BaseDir}|Config].
all() -> [
   {group, group_0}, 
   {group, group_1}, 
   {group, group_2}, 
   {group, group_3}, 
   {group, group_4}, 
   {group, group_5}, 
   {group, group_6}, 
   {group, group_7}, 
   {group, group_8}
   ].
groups() -> [
   {group_0, [parallel], [
    'EXPath-binary-length-001', 
    'EXPath-binary-length-002', 
    'EXPath-binary-from-octets-001', 
    'EXPath-binary-from-octets-002', 
    'EXPath-binary-from-octets-003', 
    'EXPath-binary-from-octets-004', 
    'EXPath-binary-to-octets-001', 
    'EXPath-binary-to-octets-002', 
    'EXPath-binary-hex-001', 
    'EXPath-binary-hex-002', 
    'EXPath-binary-hex-003', 
    'EXPath-binary-hex-004', 
    'EXPath-binary-hex-005', 
    'EXPath-binary-bin-001', 
    'EXPath-binary-bin-002', 
    'EXPath-binary-bin-003', 
    'EXPath-binary-bin-004', 
    'EXPath-binary-bin-005', 
    'EXPath-binary-octal-001', 
    'EXPath-binary-octal-002', 
    'EXPath-binary-octal-003', 
    'EXPath-binary-octal-004', 
    'EXPath-binary-octal-005']}, 
   {group_1, [parallel], [
    'EXPath-binary-part-001', 
    'EXPath-binary-part-002', 
    'EXPath-binary-part-003', 
    'EXPath-binary-part-004', 
    'EXPath-binary-part-005', 
    'EXPath-binary-part-006', 
    'EXPath-binary-join-001', 
    'EXPath-binary-join-002', 
    'EXPath-binary-join-003', 
    'EXPath-binary-insert-before-001', 
    'EXPath-binary-insert-before-002', 
    'EXPath-binary-insert-before-003', 
    'EXPath-binary-insert-before-004', 
    'EXPath-binary-insert-before-005', 
    'EXPath-binary-insert-before-006', 
    'EXPath-binary-pad-left-001', 
    'EXPath-binary-pad-left-002', 
    'EXPath-binary-pad-left-003', 
    'EXPath-binary-pad-left-004', 
    'EXPath-binary-pad-left-005', 
    'EXPath-binary-pad-left-006', 
    'EXPath-binary-pad-left-007', 
    'EXPath-binary-pad-left-008', 
    'EXPath-binary-pad-right-001']}, 
   {group_2, [parallel], [
    'EXPath-binary-pad-right-002', 
    'EXPath-binary-pad-right-003', 
    'EXPath-binary-pad-right-004', 
    'EXPath-binary-pad-right-005', 
    'EXPath-binary-pad-right-006', 
    'EXPath-binary-pad-right-007', 
    'EXPath-binary-pad-right-008', 
    'EXPath-binary-find-001', 
    'EXPath-binary-find-002', 
    'EXPath-binary-find-003', 
    'EXPath-binary-find-004', 
    'EXPath-binary-find-005', 
    'EXPath-binary-find-006', 
    'EXPath-binary-find-007', 
    'EXPath-binary-encode-string-001', 
    'EXPath-binary-encode-string-002', 
    'EXPath-binary-encode-string-003', 
    'EXPath-binary-encode-string-004', 
    'EXPath-binary-encode-string-005', 
    'EXPath-binary-encode-string-006', 
    'EXPath-binary-encode-string-007', 
    'EXPath-binary-encode-string-008', 
    'EXPath-binary-decode-string-001', 
    'EXPath-binary-decode-string-002']}, 
   {group_3, [parallel], [
    'EXPath-binary-decode-string-003', 
    'EXPath-binary-decode-string-004', 
    'EXPath-binary-decode-string-005', 
    'EXPath-binary-decode-string-006', 
    'EXPath-binary-decode-string-007', 
    'EXPath-binary-decode-string-008', 
    'EXPath-binary-decode-string-009', 
    'EXPath-binary-decode-string-010', 
    'EXPath-binary-decode-string-011', 
    'EXPath-binary-decode-string-012', 
    'EXPath-binary-decode-string-013', 
    'EXPath-binary-decode-string-014', 
    'EXPath-binary-decode-string-015', 
    'EXPath-binary-decode-string-016', 
    'EXPath-binary-pack-integer-001', 
    'EXPath-binary-pack-integer-002', 
    'EXPath-binary-pack-integer-003', 
    'EXPath-binary-pack-integer-004', 
    'EXPath-binary-pack-integer-005', 
    'EXPath-binary-pack-integer-006', 
    'EXPath-binary-pack-integer-007', 
    'EXPath-binary-pack-integer-008', 
    'EXPath-binary-pack-integer-009', 
    'EXPath-binary-pack-integer-010']}, 
   {group_4, [parallel], [
    'EXPath-binary-pack-integer-011', 
    'EXPath-binary-pack-integer-012', 
    'EXPath-binary-pack-integer-013', 
    'EXPath-binary-pack-integer-014', 
    'EXPath-binary-pack-integer-015', 
    'EXPath-binary-pack-integer-016', 
    'EXPath-binary-pack-integer-017', 
    'EXPath-binary-pack-integer-018', 
    'EXPath-binary-pack-integer-019', 
    'EXPath-binary-pack-integer-020', 
    'EXPath-binary-pack-integer-021', 
    'EXPath-binary-pack-double-001', 
    'EXPath-binary-pack-double-002', 
    'EXPath-binary-pack-double-003', 
    'EXPath-binary-pack-double-004', 
    'EXPath-binary-pack-double-005', 
    'EXPath-binary-pack-double-006', 
    'EXPath-binary-pack-double-007', 
    'EXPath-binary-pack-double-008', 
    'EXPath-binary-pack-double-009', 
    'EXPath-binary-pack-double-010', 
    'EXPath-binary-pack-double-011', 
    'EXPath-binary-pack-float-001', 
    'EXPath-binary-pack-float-002']}, 
   {group_5, [parallel], [
    'EXPath-binary-pack-float-003', 
    'EXPath-binary-pack-float-004', 
    'EXPath-binary-pack-float-005', 
    'EXPath-binary-pack-float-006', 
    'EXPath-binary-pack-float-007', 
    'EXPath-binary-pack-float-008', 
    'EXPath-binary-pack-float-009', 
    'EXPath-binary-pack-float-010', 
    'EXPath-binary-unpack-double-001', 
    'EXPath-binary-unpack-double-002', 
    'EXPath-binary-unpack-double-003', 
    'EXPath-binary-unpack-double-004', 
    'EXPath-binary-unpack-double-005', 
    'EXPath-binary-unpack-double-006', 
    'EXPath-binary-unpack-double-007', 
    'EXPath-binary-unpack-double-008', 
    'EXPath-binary-unpack-double-009', 
    'EXPath-binary-unpack-float-001', 
    'EXPath-binary-unpack-float-002', 
    'EXPath-binary-unpack-float-003', 
    'EXPath-binary-unpack-float-004', 
    'EXPath-binary-unpack-float-005', 
    'EXPath-binary-unpack-float-006', 
    'EXPath-binary-unpack-float-007']}, 
   {group_6, [parallel], [
    'EXPath-binary-unpack-float-008', 
    'EXPath-binary-unpack-float-009', 
    'EXPath-binary-unpack-unsigned-integer-001', 
    'EXPath-binary-unpack-unsigned-integer-002', 
    'EXPath-binary-unpack-unsigned-integer-003', 
    'EXPath-binary-unpack-unsigned-integer-004', 
    'EXPath-binary-unpack-unsigned-integer-005', 
    'EXPath-binary-unpack-unsigned-integer-006', 
    'EXPath-binary-unpack-unsigned-integer-007', 
    'EXPath-binary-unpack-unsigned-integer-008', 
    'EXPath-binary-unpack-unsigned-integer-009', 
    'EXPath-binary-unpack-unsigned-integer-010', 
    'EXPath-binary-unpack-unsigned-integer-011', 
    'EXPath-binary-unpack-unsigned-integer-012', 
    'EXPath-binary-unpack-unsigned-integer-013', 
    'EXPath-binary-unpack-unsigned-integer-014', 
    'EXPath-binary-unpack-integer-001', 
    'EXPath-binary-unpack-integer-002', 
    'EXPath-binary-unpack-integer-003', 
    'EXPath-binary-unpack-integer-004', 
    'EXPath-binary-unpack-integer-005', 
    'EXPath-binary-unpack-integer-006', 
    'EXPath-binary-unpack-integer-007', 
    'EXPath-binary-unpack-integer-008']}, 
   {group_7, [parallel], [
    'EXPath-binary-unpack-integer-009', 
    'EXPath-binary-unpack-integer-010', 
    'EXPath-binary-unpack-integer-011', 
    'EXPath-binary-unpack-integer-012', 
    'EXPath-binary-unpack-integer-013', 
    'EXPath-binary-unpack-integer-014', 
    'EXPath-binary-unpack-integer-015', 
    'EXPath-binary-bitwise-or-001', 
    'EXPath-binary-bitwise-or-002', 
    'EXPath-binary-bitwise-or-003', 
    'EXPath-binary-bitwise-or-004', 
    'EXPath-binary-bitwise-or-005', 
    'EXPath-binary-bitwise-or-006', 
    'EXPath-binary-bitwise-and-001', 
    'EXPath-binary-bitwise-and-002', 
    'EXPath-binary-bitwise-and-003', 
    'EXPath-binary-bitwise-and-004', 
    'EXPath-binary-bitwise-and-005', 
    'EXPath-binary-bitwise-and-006', 
    'EXPath-binary-bitwise-xor-001', 
    'EXPath-binary-bitwise-xor-002', 
    'EXPath-binary-bitwise-xor-003', 
    'EXPath-binary-bitwise-xor-004', 
    'EXPath-binary-bitwise-xor-005']}, 
   {group_8, [parallel], [
    'EXPath-binary-bitwise-xor-006', 
    'EXPath-binary-bitwise-not-001', 
    'EXPath-binary-bitwise-not-002', 
    'EXPath-binary-bitwise-shift-001', 
    'EXPath-binary-bitwise-shift-002', 
    'EXPath-binary-bitwise-shift-003', 
    'EXPath-binary-bitwise-shift-004', 
    'EXPath-binary-bitwise-shift-005', 
    'EXPath-binary-bitwise-shift-006', 
    'EXPath-binary-bitwise-shift-007', 
    'EXPath-binary-bitwise-shift-008', 
    'EXPath-binary-bitwise-shift-009', 
    'EXPath-binary-bitwise-shift-010', 
    'EXPath-binary-bitwise-shift-011', 
    'EXPath-binary-bitwise-shift-012', 
    'EXPath-binary-bitwise-shift-013', 
    'EXPath-binary-bitwise-shift-014', 
    'EXPath-binary-bitwise-shift-015', 
    'EXPath-binary-bitwise-shift-016']}].
environment('EXPath-binary',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, [{"empty.bin","","xs:base64Binary('')"}, 
{"man.base","","xs:base64Binary('TWFu')"}, 
{"man.octets","","(77,97,110)"}]}, 
{namespaces, [{"http://expath.org/ns/binary","bin"}]},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('EXPath-binary.numeric',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, [{"int.byte","","5"}, 
{"int.short","","256 * 1 + 5"}, 
{"int.3","","65536 * 1 + 256 * 1 + 5"}, 
{"int.int","","16777216 * 1 + 65536 * 1 + 256 * 1 + 5"}, 
{"int.long","","4294967296 * 1 + 16777216 * 1 + 65536 * 1 + 256 * 1 + 5"}, 
{"double.negative.0","","xs:base64Binary(xs:hexBinary('8000000000000000'))"}, 
{"double.1","","xs:base64Binary(xs:hexBinary('3ff0000000000000'))"}, 
{"double.1.octets","","(63,240,0,0,0,0,0,0)"}, 
{"float.negative.0","","xs:base64Binary(xs:hexBinary('80000000'))"}, 
{"float.1.octets","","(63,128,0,0)"}, 
{"int.byte.B","","xs:base64Binary(xs:hexBinary('f0'))"}, 
{"int.short.B","","xs:base64Binary(xs:hexBinary('f040'))"}, 
{"int.short.B-1","","xs:base64Binary(xs:hexBinary('ffff'))"}]}, 
{namespaces, [{"http://expath.org/ns/binary","bin"}, 
{"java:org.expath.ns.binary.EXPathBinary","binJAVA"}, 
{"http://expath.org/ns/binary","err"}]},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('EXPath-binary-bitwise',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, [{"empty.bin","","xs:base64Binary('')"}, 
{"a","","xs:base64Binary(xs:hexBinary('F00F'))"}, 
{"b","","xs:base64Binary(xs:hexBinary('0FF0'))"}, 
{"c","","xs:base64Binary(xs:hexBinary('0FABCD'))"}]}, 
{namespaces, [{"http://expath.org/ns/binary","bin"}, 
{"java:org.expath.ns.binary.EXPathBinary","binJAVA"}, 
{"http://expath.org/ns/binary","err"}]},
{schemas, []}, 
{resources, []}, 
{modules, []}
].
'EXPath-binary-length-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:length(xs:base64Binary(\"\")) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-length-001.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-length-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:length(xs:base64Binary(xs:hexBinary(\"face1234\"))) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-length-002.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:integer") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"4") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-from-octets-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:from-octets(()) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-from-octets-001.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:base64Binary") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:base64Binary(\"\")") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-from-octets-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:from-octets($man.octets) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-from-octets-002.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:base64Binary") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:base64Binary(\"TWFu\")") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-from-octets-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:from-octets((-77,97,110)) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-from-octets-003.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"Q{http://expath.org/ns/binary}octet-out-of-range") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: Q{http://expath.org/ns/binary}octet-out-of-range " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-from-octets-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:from-octets((277,97,110)) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-from-octets-004.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"Q{http://expath.org/ns/binary}octet-out-of-range") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: Q{http://expath.org/ns/binary}octet-out-of-range " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-to-octets-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:to-octets(xs:base64Binary(\"\")) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-to-octets-001.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-to-octets-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:to-octets($man.base) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-to-octets-002.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:integer*") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_deep_eq(Res,"(77,97,110)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-hex-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:hex(\"\") ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-hex-001.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:base64Binary") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:base64Binary(\"\")") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-hex-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:hex(()) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-hex-002.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-hex-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:hex(\"4D616E\") ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-hex-003.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:base64Binary") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:base64Binary(\"TWFu\")") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:base64Binary(xs:hexBinary(\"4D616E\"))") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-hex-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:hex(\"D616E\") ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-hex-004.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:base64Binary") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:base64Binary(\"DWFu\")") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-hex-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:hex(\"4X616E\") ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-hex-005.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"Q{http://expath.org/ns/binary}non-numeric-character") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: Q{http://expath.org/ns/binary}non-numeric-character " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-bin-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:bin(\"\") ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-bin-001.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:base64Binary") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:base64Binary(\"\")") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-bin-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:bin(()) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-bin-002.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-bin-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:bin(\"010011010110000101101110\") ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-bin-003.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:base64Binary") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:base64Binary(\"TWFu\")") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-bin-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:bin(\"011010110000101101110\") ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-bin-004.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:base64Binary") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:base64Binary(\"DWFu\")") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-bin-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:bin(\"0100a1010110000101101110\") ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-bin-005.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"Q{http://expath.org/ns/binary}non-numeric-character") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: Q{http://expath.org/ns/binary}non-numeric-character " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-octal-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:octal(\"\") ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-octal-001.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:base64Binary") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:base64Binary(\"\")") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-octal-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:octal(()) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-octal-002.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-octal-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:octal(\"23260556\") ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-octal-003.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:base64Binary") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:base64Binary(\"TWFu\")") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-octal-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:octal(\"3260556\") ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-octal-004.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:base64Binary") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:base64Binary(\"DWFu\")") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-octal-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:octal(\"8260556\") ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-octal-005.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"Q{http://expath.org/ns/binary}non-numeric-character") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: Q{http://expath.org/ns/binary}non-numeric-character " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-part-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:part((),0) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-part-001.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-part-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:part($man.base,-1) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-part-002.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"Q{http://expath.org/ns/binary}index-out-of-range") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: Q{http://expath.org/ns/binary}index-out-of-range " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-part-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:part($man.base,0,-1) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-part-003.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"Q{http://expath.org/ns/binary}negative-size") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: Q{http://expath.org/ns/binary}negative-size " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-part-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:part($man.base,3) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-part-004.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"xs:base64Binary(\"\")") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-part-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:part($man.base,4) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-part-005.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"Q{http://expath.org/ns/binary}index-out-of-range") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: Q{http://expath.org/ns/binary}index-out-of-range " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-part-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:part($man.base,2,2) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-part-006.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"Q{http://expath.org/ns/binary}index-out-of-range") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: Q{http://expath.org/ns/binary}index-out-of-range " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-join-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:join(()) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-join-001.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:base64Binary") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:base64Binary(\"\")") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-join-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:join(($man.base,$man.base)) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-join-002.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:base64Binary") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:base64Binary(\"TWFuTWFu\")") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-join-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:join(($man.base,123)) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-join-003.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"Q{http://www.w3.org/2005/xqt-errors}FORG0006") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: Q{http://www.w3.org/2005/xqt-errors}FORG0006 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"Q{http://www.w3.org/2005/xqt-errors}XPTY0004") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: Q{http://www.w3.org/2005/xqt-errors}XPTY0004 " ++ binary_to_list(F)};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-insert-before-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:insert-before((),0,$man.base) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-insert-before-001.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-insert-before-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:insert-before($man.base,-1,$man.base) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-insert-before-002.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"Q{http://expath.org/ns/binary}index-out-of-range") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: Q{http://expath.org/ns/binary}index-out-of-range " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-insert-before-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:insert-before($man.base,4,$man.base) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-insert-before-003.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"Q{http://expath.org/ns/binary}index-out-of-range") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: Q{http://expath.org/ns/binary}index-out-of-range " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-insert-before-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:insert-before($man.base,0,()) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-insert-before-004.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:base64Binary") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:base64Binary(\"TWFu\")") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-insert-before-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:insert-before($man.base,0,$man.base) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-insert-before-005.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:base64Binary") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:base64Binary(\"TWFuTWFu\")") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-insert-before-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:to-octets(bin:insert-before($man.base,2,$man.base)) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-insert-before-006.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_deep_eq(Res,"(77,97,77,97,110,110)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-pad-left-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:pad-left((),2) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-pad-left-001.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-pad-left-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:pad-left($man.base,-1) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-pad-left-002.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"Q{http://expath.org/ns/binary}negative-size") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: Q{http://expath.org/ns/binary}negative-size " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-pad-left-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:pad-left($man.base,1,-3) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-pad-left-003.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"Q{http://expath.org/ns/binary}octet-out-of-range") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: Q{http://expath.org/ns/binary}octet-out-of-range " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-pad-left-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:pad-left($man.base,1,333) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-pad-left-004.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"Q{http://expath.org/ns/binary}octet-out-of-range") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: Q{http://expath.org/ns/binary}octet-out-of-range " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-pad-left-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:pad-left($man.base,0) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-pad-left-005.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:base64Binary") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_string_value(Res, "TWFu") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-pad-left-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:pad-left($man.base,3) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-pad-left-006.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:base64Binary") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:base64Binary(\"AAAATWFu\")") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-pad-left-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:pad-left($man.base,1) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-pad-left-007.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:base64Binary") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:base64Binary(\"AE1hbg==\")") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-pad-left-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:to-octets(bin:pad-left($man.base,1,12)) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-pad-left-008.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:integer*") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_deep_eq(Res,"(12,77,97,110)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-pad-right-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:pad-right((),2) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-pad-right-001.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-pad-right-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:pad-right($man.base,-1) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-pad-right-002.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"Q{http://expath.org/ns/binary}negative-size") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: Q{http://expath.org/ns/binary}negative-size " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-pad-right-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:pad-right($man.base,1,-3) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-pad-right-003.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"Q{http://expath.org/ns/binary}octet-out-of-range") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: Q{http://expath.org/ns/binary}octet-out-of-range " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-pad-right-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:pad-right($man.base,1,333) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-pad-right-004.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"Q{http://expath.org/ns/binary}octet-out-of-range") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: Q{http://expath.org/ns/binary}octet-out-of-range " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-pad-right-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:pad-right($man.base,0) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-pad-right-005.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:base64Binary") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:base64Binary(\"TWFu\")") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-pad-right-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:pad-right($man.base,3) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-pad-right-006.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:base64Binary") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:base64Binary(\"TWFuAAAA\")") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-pad-right-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:pad-right($man.base,1) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-pad-right-007.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:base64Binary") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:base64Binary(\"TWFuAA==\")") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-pad-right-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:to-octets(bin:pad-right($man.base,1,12)) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-pad-right-008.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:integer*") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_deep_eq(Res,"(77,97,110,12)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-find-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:find((),0,xs:base64Binary(\"TWFuAAAA\")) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-find-001.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-find-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:find(xs:base64Binary(\"TWFuAAAA\"),1,xs:base64Binary(\"\")) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-find-002.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:integer") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-find-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:find(xs:base64Binary(\"AE1hbg==\"),-1,xs:base64Binary(\"TWFu\")) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-find-003.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"Q{http://expath.org/ns/binary}index-out-of-range") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: Q{http://expath.org/ns/binary}index-out-of-range " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-find-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:find(xs:base64Binary(\"AE1hbg==\"),5,xs:base64Binary(\"TWFu\")) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-find-004.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"Q{http://expath.org/ns/binary}index-out-of-range") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: Q{http://expath.org/ns/binary}index-out-of-range " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-find-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:find(xs:base64Binary(\"AE1hbg==\"),2,xs:base64Binary(\"TWFu\")) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-find-005.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-find-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:find(xs:base64Binary(\"AE1hbg==\"),0,xs:base64Binary(\"TWFu\")) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-find-006.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:integer") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-find-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:find(xs:base64Binary(\"TWFuAA==\"),0,xs:base64Binary(\"TWFu\")) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-find-007.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:integer") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-encode-string-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:encode-string(\"\",\"utf-8\") ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-encode-string-001.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:base64Binary") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:base64Binary(\"\")") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-encode-string-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:encode-string(\"\",\"NOTutf-8\") ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-encode-string-002.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"Q{http://expath.org/ns/binary}unknown-encoding") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: Q{http://expath.org/ns/binary}unknown-encoding " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-encode-string-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:encode-string(\"AêñüC\",\"utf-8\") ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-encode-string-003.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:base64Binary") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:base64Binary(\"QcOqw7HDvEM=\")") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-encode-string-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:to-octets(bin:encode-string(\"AêñüC\",\"utf-8\")) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-encode-string-004.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(65,195,170,195,177,195,188,67)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-encode-string-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " xs:hexBinary(bin:encode-string(\"This is UTF-16\",\"utf-16\")) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-encode-string-005.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"xs:hexBinary(\"feff00540068006900730020006900730020005500540046002d00310036\")") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-encode-string-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " xs:hexBinary(bin:encode-string(\"Ğ\",\"utf-16\")) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-encode-string-006.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"xs:hexBinary(\"feff011e\")") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-encode-string-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:encode-string(\"AêñüC\") =
                bin:encode-string(\"AêñüC\",\"utf-8\") ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-encode-string-007.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-encode-string-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:encode-string(\"£\",\"US-ASCII\") ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-encode-string-008.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"Q{http://expath.org/ns/binary}conversion-error") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: Q{http://expath.org/ns/binary}conversion-error " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-decode-string-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:decode-string((),\"utf-8\") ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-decode-string-001.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-decode-string-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:decode-string($empty.bin,\"utf-8\") ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-decode-string-002.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"\"\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-decode-string-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:decode-string($empty.bin,\"NOTutf-8\") ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-decode-string-003.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"Q{http://expath.org/ns/binary}unknown-encoding") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: Q{http://expath.org/ns/binary}unknown-encoding " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-decode-string-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:decode-string(bin:encode-string(\"Simple £ text\",\"utf-8\"),\"utf-8\") ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-decode-string-004.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"\"Simple £ text\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-decode-string-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:decode-string(xs:base64Binary(\"QcOqw7HDvEM=\"),\"utf-8\") ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-decode-string-005.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"\"AêñüC\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-decode-string-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:decode-string(bin:from-octets((65,195,170,195,177,195,188,67)),\"utf-8\") ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-decode-string-006.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"\"AêñüC\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-decode-string-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:decode-string(xs:base64Binary(\"QcOqw7HDvEM=\"),\"utf-8\",3) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-decode-string-007.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"\"ñüC\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-decode-string-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:decode-string(xs:base64Binary(\"QcOqw7HDvEM=\"),\"utf-8\",3,4) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-decode-string-008.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"\"ñü\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-decode-string-009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:decode-string(xs:base64Binary(\"QcOqw7HDvEM=\"),\"utf-8\",-3,4) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-decode-string-009.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"Q{http://expath.org/ns/binary}index-out-of-range") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: Q{http://expath.org/ns/binary}index-out-of-range " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-decode-string-010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:decode-string(xs:base64Binary(\"QcOqw7HDvEM=\"),\"utf-8\",3,-4) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-decode-string-010.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"Q{http://expath.org/ns/binary}negative-size") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: Q{http://expath.org/ns/binary}negative-size " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-decode-string-011'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:decode-string(xs:base64Binary(\"QcOqw7HDvEM=\"),\"utf-8\",3,6) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-decode-string-011.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"Q{http://expath.org/ns/binary}index-out-of-range") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: Q{http://expath.org/ns/binary}index-out-of-range " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-decode-string-012'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:decode-string(xs:base64Binary(\"QcOqw7HDvEM=\"),\"utf-8\",2) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-decode-string-012.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"Q{http://expath.org/ns/binary}conversion-error") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: Q{http://expath.org/ns/binary}conversion-error " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-decode-string-013'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:decode-string(xs:base64Binary(
                xs:hexBinary(\"feff00540068006900730020006900730020005500540046002d00310036\")),
                \"utf-16\") ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-decode-string-013.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"\"This is UTF-16\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-decode-string-014'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:decode-string(xs:base64Binary(xs:hexBinary(\"feff011e\")),\"utf-16\") ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-decode-string-014.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"\"Ğ\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-decode-string-015'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:decode-string(xs:base64Binary(xs:hexBinary(\"fffe1e01\")),\"utf-16\") ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-decode-string-015.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"\"Ğ\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-decode-string-016'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:decode-string(xs:base64Binary(\"QcOqw7HDvEM=\")) =
                bin:decode-string(xs:base64Binary(\"QcOqw7HDvEM=\"),\"utf-8\") ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-decode-string-016.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-pack-integer-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:pack-integer(0,1,'MOST-sign-first') ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-pack-integer-001.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"Q{http://expath.org/ns/binary}unknown-significance-order") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: Q{http://expath.org/ns/binary}unknown-significance-order " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-pack-integer-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " for $b in bin:pack-integer(34567,3,'most-significant-first') return $b eq
                bin:pack-integer(34567,3,'big-endian') and $b eq bin:pack-integer(34567,3,'BE') ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-pack-integer-002.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-pack-integer-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " for $b in bin:pack-integer(34567,3,'least-significant-first') return $b eq
                bin:pack-integer(34567,3,'little-endian') and $b eq bin:pack-integer(34567,3,'LE') ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-pack-integer-003.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-pack-integer-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:pack-integer(34567,3,'most-significant-first') eq
                bin:pack-integer(34567,3,'least-significant-first') ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-pack-integer-004.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-pack-integer-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:pack-integer(34567,-3,'most-significant-first') ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-pack-integer-005.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"Q{http://expath.org/ns/binary}negative-size") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: Q{http://expath.org/ns/binary}negative-size " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-pack-integer-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:pack-integer(34567,0,'most-significant-first') ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-pack-integer-006.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:base64Binary") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:base64Binary(\"\")") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-pack-integer-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:pack-integer(0,1) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-pack-integer-007.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:base64Binary") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:base64Binary(\"AA==\")") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-pack-integer-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:pack-integer($int.short,1) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-pack-integer-008.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:base64Binary") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:base64Binary(\"BQ==\")") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-pack-integer-009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:pack-integer(0,2) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-pack-integer-009.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:base64Binary") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:base64Binary(\"AAA=\")") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-pack-integer-010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:pack-integer($int.short,2) eq  bin:pack-integer($int.short,2,'BE')", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-pack-integer-010.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-pack-integer-011'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:pack-integer($int.short,2,'least-significant-first') ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-pack-integer-011.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:base64Binary") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:base64Binary(\"BQE=\")") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-pack-integer-012'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:pack-integer($int.short,2,'most-significant-first') ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-pack-integer-012.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:base64Binary") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:base64Binary(\"AQU=\")") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-pack-integer-013'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:to-octets(bin:pack-integer($int.short,2)) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-pack-integer-013.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(1,5)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-pack-integer-014'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:to-octets(bin:pack-integer($int.short,2,'most-significant-first')) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-pack-integer-014.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(1,5)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-pack-integer-015'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:to-octets(bin:pack-integer($int.3,3,'LE')) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-pack-integer-015.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(5,1,1)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-pack-integer-016'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:to-octets(bin:pack-integer($int.3,3,'most-significant-first')) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-pack-integer-016.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(1,1,5)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-pack-integer-017'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:to-octets(bin:pack-integer($int.int,4,'LE')) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-pack-integer-017.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(5,1,1,1)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-pack-integer-018'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:to-octets(bin:pack-integer($int.int,4,'most-significant-first')) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-pack-integer-018.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(1,1,1,5)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-pack-integer-019'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:to-octets(bin:pack-integer($int.long,8,'LE')) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-pack-integer-019.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(5,1,1,1,1,0,0,0)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-pack-integer-020'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:to-octets(bin:pack-integer($int.long,8,'most-significant-first')) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-pack-integer-020.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(0,0,0,1,1,1,1,5)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-pack-integer-021'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:to-octets(bin:pack-integer(12345678901234,12,'most-significant-first')) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-pack-integer-021.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(0, 0, 0, 0, 0, 0, 11, 58, 115, 206, 47, 242)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-pack-double-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:pack-double(xs:double(0.0),'MOST-sign-first') ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-pack-double-001.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"Q{http://expath.org/ns/binary}unknown-significance-order") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: Q{http://expath.org/ns/binary}unknown-significance-order " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-pack-double-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:pack-double(xs:double(0.0)) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-pack-double-002.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:base64Binary") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:base64Binary(\"AAAAAAAAAAA=\")") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-pack-double-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:to-octets(bin:pack-double(+xs:double(0.0),'most-significant-first')) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-pack-double-003.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(0,0,0,0,0,0,0,0)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-pack-double-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:to-octets(bin:pack-double(-xs:double(0.0),'most-significant-first')) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-pack-double-004.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(128,0,0,0,0,0,0,0)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-pack-double-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:to-octets(bin:pack-double(xs:double(1.0),'LE')) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-pack-double-005.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(0,0,0,0,0,0,240,63)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-pack-double-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:to-octets(bin:pack-double(xs:double(1.0),'most-significant-first')) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-pack-double-006.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(63,240,0,0,0,0,0,0)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-pack-double-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:pack-double(xs:double(1.0),'most-significant-first') ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-pack-double-007.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:base64Binary") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:base64Binary(xs:hexBinary('3ff0000000000000'))") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-pack-double-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:to-octets(bin:pack-double(xs:double(2.0),'most-significant-first')) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-pack-double-008.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(64,0,0,0,0,0,0,0)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-pack-double-009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:to-octets(bin:pack-double(1 div 0e0,'most-significant-first')) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-pack-double-009.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(127,240,0,0,0,0,0,0)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-pack-double-010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:to-octets(bin:pack-double(-1 div 0e0,'most-significant-first')) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-pack-double-010.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(255,240,0,0,0,0,0,0)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-pack-double-011'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:to-octets(bin:pack-double(number(\"NaN\"),'most-significant-first')) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-pack-double-011.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(127,248,0,0,0,0,0,0)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-pack-float-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:pack-float(xs:float(0.0),'MOST-sign-first') ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-pack-float-001.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"Q{http://expath.org/ns/binary}unknown-significance-order") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: Q{http://expath.org/ns/binary}unknown-significance-order " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-pack-float-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:pack-float(xs:float(0.0)) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-pack-float-002.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:base64Binary") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:base64Binary(\"AAAAAA==\")") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-pack-float-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:to-octets(bin:pack-float(+xs:float(0.0),'most-significant-first')) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-pack-float-003.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(0,0,0,0)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-pack-float-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:to-octets(bin:pack-float(-xs:float(0.0),'most-significant-first')) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-pack-float-004.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(128,0,0,0)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-pack-float-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:to-octets(bin:pack-float(xs:float(1.0),'LE')) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-pack-float-005.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(0,0,128,63)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-pack-float-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:to-octets(bin:pack-float(xs:float(1.0),'most-significant-first')) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-pack-float-006.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(63,128,0,0)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-pack-float-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:to-octets(bin:pack-float(xs:float(2.0),'most-significant-first')) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-pack-float-007.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(64,0,0,0)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-pack-float-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:to-octets(bin:pack-float(xs:float(1 div 0e0),'most-significant-first')) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-pack-float-008.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(127,128,0,0)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-pack-float-009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:to-octets(bin:pack-float(xs:float(-1 div 0e0),'most-significant-first')) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-pack-float-009.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(255,128,0,0)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-pack-float-010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:to-octets(bin:pack-float(xs:float(number(\"NaN\")),'most-significant-first')) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-pack-float-010.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(127,192,0,0)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-unpack-double-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:unpack-double(bin:from-octets($double.1.octets),0,'MOST-sign-first') ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-unpack-double-001.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"Q{http://expath.org/ns/binary}unknown-significance-order") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: Q{http://expath.org/ns/binary}unknown-significance-order " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-unpack-double-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:unpack-double(bin:from-octets($double.1.octets),-1,'most-significant-first') ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-unpack-double-002.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"Q{http://expath.org/ns/binary}index-out-of-range") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: Q{http://expath.org/ns/binary}index-out-of-range " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-unpack-double-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:unpack-double(bin:from-octets($double.1.octets),1,'most-significant-first') ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-unpack-double-003.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"Q{http://expath.org/ns/binary}index-out-of-range") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: Q{http://expath.org/ns/binary}index-out-of-range " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-unpack-double-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:unpack-double($double.negative.0,0,'most-significant-first') ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-unpack-double-004.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:double") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"-0.0e0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-unpack-double-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:unpack-double(bin:from-octets($double.1.octets),0,'most-significant-first') ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-unpack-double-005.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:double") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"1.0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-unpack-double-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
                bin:unpack-double(bin:from-octets((127,248,0,0,0,0,0,0)),0,'most-significant-first') ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-unpack-double-006.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:double") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_deep_eq(Res,"number(\"NaN\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-unpack-double-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
                bin:unpack-double(bin:from-octets((127,248,0,0,0,0,0,1)),0,'most-significant-first') ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-unpack-double-007.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:double") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_deep_eq(Res,"number(\"NaN\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-unpack-double-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
                bin:to-octets(bin:pack-double(bin:unpack-double(bin:from-octets((127,248,0,0,0,0,0,1)),0,'most-significant-first'),'most-significant-first')) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-unpack-double-008.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(127,248,0,0,0,0,0,0)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-unpack-double-009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
                bin:to-octets(bin:pack-double(bin:unpack-double(bin:from-octets((127,240,0,0,0,0,0,1)),0,'most-significant-first'),'most-significant-first')) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-unpack-double-009.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(127,248,0,0,0,0,0,0)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-unpack-float-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:unpack-float(bin:from-octets($float.1.octets),0,'MOST-sign-first') ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-unpack-float-001.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"Q{http://expath.org/ns/binary}unknown-significance-order") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: Q{http://expath.org/ns/binary}unknown-significance-order " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-unpack-float-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:unpack-float(bin:from-octets($float.1.octets),-1,'most-significant-first') ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-unpack-float-002.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"Q{http://expath.org/ns/binary}index-out-of-range") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: Q{http://expath.org/ns/binary}index-out-of-range " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-unpack-float-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:unpack-float(bin:from-octets($float.1.octets),1,'most-significant-first') ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-unpack-float-003.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"Q{http://expath.org/ns/binary}index-out-of-range") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: Q{http://expath.org/ns/binary}index-out-of-range " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-unpack-float-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:unpack-float($float.negative.0,0,'most-significant-first') ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-unpack-float-004.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:float") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"-0.0e0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-unpack-float-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:unpack-float(bin:from-octets($float.1.octets),0,'most-significant-first') ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-unpack-float-005.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:float") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"1.0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-unpack-float-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:unpack-float(bin:from-octets((127,192,0,0)),0,'most-significant-first') ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-unpack-float-006.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:float") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_deep_eq(Res,"xs:float(number(\"NaN\"))") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-unpack-float-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:unpack-float(bin:from-octets((127,192,0,1)),0,'most-significant-first') ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-unpack-float-007.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:float") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_deep_eq(Res,"number(\"NaN\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-unpack-float-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
                bin:to-octets(bin:pack-float(bin:unpack-float(bin:from-octets((127,192,0,1)),0,'most-significant-first'),'most-significant-first')) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-unpack-float-008.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(127,192,0,0)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-unpack-float-009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
                bin:to-octets(bin:pack-float(bin:unpack-float(bin:from-octets((127,248,0,1)),0,'most-significant-first'),'most-significant-first')) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-unpack-float-009.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(127,192,0,0)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-unpack-unsigned-integer-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:unpack-unsigned-integer($int.byte.B,0,1,'MOST-sign-first') ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-unpack-unsigned-integer-001.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"Q{http://expath.org/ns/binary}unknown-significance-order") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: Q{http://expath.org/ns/binary}unknown-significance-order " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-unpack-unsigned-integer-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " for $b in bin:unpack-unsigned-integer($int.short.B,0,2,'most-significant-first')
                return $b eq bin:unpack-unsigned-integer($int.short.B,0,2,'big-endian') and $b eq
                bin:unpack-unsigned-integer($int.short.B,0,2,'BE') ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-unpack-unsigned-integer-002.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-unpack-unsigned-integer-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " for $b in bin:unpack-unsigned-integer($int.short.B,0,2,'least-significant-first')
                return $b eq bin:unpack-unsigned-integer($int.short.B,0,2,'little-endian') and $b eq
                bin:unpack-unsigned-integer($int.short.B,0,2,'LE') ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-unpack-unsigned-integer-003.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-unpack-unsigned-integer-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:unpack-unsigned-integer($int.short.B,0,2,'most-significant-first') eq
                bin:unpack-unsigned-integer($int.short.B,0,2,'least-significant-first') ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-unpack-unsigned-integer-004.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-unpack-unsigned-integer-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:unpack-unsigned-integer($int.short.B,-1,2,'most-significant-first') ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-unpack-unsigned-integer-005.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"Q{http://expath.org/ns/binary}index-out-of-range") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: Q{http://expath.org/ns/binary}index-out-of-range " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-unpack-unsigned-integer-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:unpack-unsigned-integer($int.short.B,0,-2,'most-significant-first') ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-unpack-unsigned-integer-006.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"Q{http://expath.org/ns/binary}negative-size") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: Q{http://expath.org/ns/binary}negative-size " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-unpack-unsigned-integer-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:unpack-unsigned-integer($int.short.B,1,2,'most-significant-first') ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-unpack-unsigned-integer-007.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"Q{http://expath.org/ns/binary}index-out-of-range") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: Q{http://expath.org/ns/binary}index-out-of-range " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-unpack-unsigned-integer-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:unpack-unsigned-integer($int.byte.B,0,0,'most-significant-first') ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-unpack-unsigned-integer-008.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:integer") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-unpack-unsigned-integer-009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:unpack-unsigned-integer($int.byte.B,0,1,'most-significant-first') ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-unpack-unsigned-integer-009.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:integer") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"240") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-unpack-unsigned-integer-010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:unpack-unsigned-integer($int.short.B,0,2,'most-significant-first') ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-unpack-unsigned-integer-010.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:integer") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"61504") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-unpack-unsigned-integer-011'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
                bin:unpack-unsigned-integer(xs:base64Binary(xs:hexBinary('0000000000000001')),0,8,'most-significant-first') ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-unpack-unsigned-integer-011.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:integer") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-unpack-unsigned-integer-012'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
                bin:unpack-unsigned-integer(xs:base64Binary(xs:hexBinary('ffffffffffffffff')),0,8,'most-significant-first') ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-unpack-unsigned-integer-012.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:integer") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"18446744073709551615") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-unpack-unsigned-integer-013'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"limits:big_integer"}. 
'EXPath-binary-unpack-unsigned-integer-014'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"limits:big_integer"}. 
'EXPath-binary-unpack-integer-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:unpack-integer($int.byte.B,0,1,'MOST-sign-first') ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-unpack-integer-001.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"Q{http://expath.org/ns/binary}unknown-significance-order") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: Q{http://expath.org/ns/binary}unknown-significance-order " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-unpack-integer-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " for $b in bin:unpack-integer($int.short.B,0,2,'most-significant-first')
                return $b eq bin:unpack-integer($int.short.B,0,2,'big-endian') and $b eq
                bin:unpack-integer($int.short.B,0,2,'BE') ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-unpack-integer-002.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-unpack-integer-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " for $b in bin:unpack-integer($int.short.B,0,2,'least-significant-first')
                return $b eq bin:unpack-integer($int.short.B,0,2,'little-endian') and $b eq
                bin:unpack-integer($int.short.B,0,2,'LE') ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-unpack-integer-003.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-unpack-integer-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:unpack-integer($int.short.B,0,2,'most-significant-first') eq
                bin:unpack-integer($int.short.B,0,2,'least-significant-first') ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-unpack-integer-004.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-unpack-integer-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:unpack-integer($int.short.B,-1,2,'most-significant-first') ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-unpack-integer-005.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"Q{http://expath.org/ns/binary}index-out-of-range") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: Q{http://expath.org/ns/binary}index-out-of-range " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-unpack-integer-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:unpack-integer($int.short.B,0,-2,'most-significant-first') ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-unpack-integer-006.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"Q{http://expath.org/ns/binary}negative-size") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: Q{http://expath.org/ns/binary}negative-size " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-unpack-integer-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:unpack-integer($int.short.B,1,2,'most-significant-first') ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-unpack-integer-007.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"Q{http://expath.org/ns/binary}index-out-of-range") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: Q{http://expath.org/ns/binary}index-out-of-range " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-unpack-integer-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:unpack-integer($int.byte.B,0,0,'most-significant-first') ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-unpack-integer-008.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:integer") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-unpack-integer-009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:unpack-integer($int.byte.B,0,1,'most-significant-first') ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-unpack-integer-009.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:integer") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"-16") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-unpack-integer-010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:unpack-integer($int.short.B-1,0,2,'most-significant-first') ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-unpack-integer-010.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:integer") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-unpack-integer-011'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
                bin:unpack-integer(xs:base64Binary(xs:hexBinary('0001')),0,2,'most-significant-first') ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-unpack-integer-011.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:integer") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-unpack-integer-012'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:unpack-integer($int.short.B,0,2,'most-significant-first') ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-unpack-integer-012.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:integer") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"-4032") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-unpack-integer-013'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:unpack-integer($int.short.B-1,0,2,'most-significant-first') ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-unpack-integer-013.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:integer") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-unpack-integer-014'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
                bin:unpack-integer(xs:base64Binary(xs:hexBinary('0000000000000001')),0,8,'most-significant-first') ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-unpack-integer-014.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:integer") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-unpack-integer-015'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
                bin:unpack-integer(xs:base64Binary(xs:hexBinary('ffffffffffffffff')),0,8,'most-significant-first') ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary.numeric',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-unpack-integer-015.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:integer") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-bitwise-or-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:or($a,$c) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary-bitwise',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-bitwise-or-001.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"Q{http://expath.org/ns/binary}differing-length-arguments") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: Q{http://expath.org/ns/binary}differing-length-arguments " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-bitwise-or-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:or((),()) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary-bitwise',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-bitwise-or-002.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-bitwise-or-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:or($a,()) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary-bitwise',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-bitwise-or-003.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-bitwise-or-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:or((),$a) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary-bitwise',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-bitwise-or-004.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-bitwise-or-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:or($empty.bin,$empty.bin) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary-bitwise',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-bitwise-or-005.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:base64Binary") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:base64Binary('')") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-bitwise-or-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:or($a,$b) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary-bitwise',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-bitwise-or-006.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:base64Binary") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:base64Binary(xs:hexBinary(\"FFFF\"))") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-bitwise-and-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:and($a,$c) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary-bitwise',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-bitwise-and-001.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"Q{http://expath.org/ns/binary}differing-length-arguments") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: Q{http://expath.org/ns/binary}differing-length-arguments " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-bitwise-and-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:and((),()) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary-bitwise',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-bitwise-and-002.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-bitwise-and-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:and($a,()) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary-bitwise',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-bitwise-and-003.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-bitwise-and-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:and((),$a) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary-bitwise',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-bitwise-and-004.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-bitwise-and-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:and($empty.bin,$empty.bin) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary-bitwise',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-bitwise-and-005.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:base64Binary") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:base64Binary('')") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-bitwise-and-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:and($a,$b) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary-bitwise',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-bitwise-and-006.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:base64Binary") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:base64Binary(xs:hexBinary(\"0000\"))") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-bitwise-xor-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:xor($a,$c) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary-bitwise',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-bitwise-xor-001.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"Q{http://expath.org/ns/binary}differing-length-arguments") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: Q{http://expath.org/ns/binary}differing-length-arguments " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-bitwise-xor-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:xor((),()) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary-bitwise',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-bitwise-xor-002.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-bitwise-xor-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:xor($a,()) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary-bitwise',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-bitwise-xor-003.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-bitwise-xor-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:xor((),$a) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary-bitwise',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-bitwise-xor-004.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-bitwise-xor-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:xor($empty.bin,$empty.bin) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary-bitwise',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-bitwise-xor-005.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:base64Binary") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:base64Binary('')") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-bitwise-xor-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:xor($a,$b) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary-bitwise',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-bitwise-xor-006.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:base64Binary") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:base64Binary(xs:hexBinary(\"FFFF\"))") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-bitwise-not-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:not($empty.bin) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary-bitwise',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-bitwise-not-001.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:base64Binary") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:base64Binary(xs:hexBinary(\"\"))") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-bitwise-not-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:not($a) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary-bitwise',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-bitwise-not-002.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:base64Binary") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:base64Binary(xs:hexBinary(\"0FF0\"))") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-bitwise-shift-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:shift((),5) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary-bitwise',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-bitwise-shift-001.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-bitwise-shift-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " bin:shift($a,0) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary-bitwise',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-bitwise-shift-002.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:base64Binary") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"xs:base64Binary(xs:hexBinary(\"F00F\"))") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-bitwise-shift-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " xs:hexBinary(bin:shift($a,1)) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary-bitwise',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-bitwise-shift-003.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"xs:hexBinary(\"E01E\")") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-bitwise-shift-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " xs:hexBinary(bin:shift($a,4)) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary-bitwise',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-bitwise-shift-004.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"xs:hexBinary(\"00F0\")") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-bitwise-shift-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " xs:hexBinary(bin:shift($a,8)) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary-bitwise',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-bitwise-shift-005.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"xs:hexBinary(\"0F00\")") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-bitwise-shift-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " xs:hexBinary(bin:shift($a,9)) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary-bitwise',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-bitwise-shift-006.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"xs:hexBinary(\"1E00\")") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-bitwise-shift-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " xs:hexBinary(bin:shift($a,12)) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary-bitwise',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-bitwise-shift-007.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"xs:hexBinary(\"F000\")") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-bitwise-shift-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " xs:hexBinary(bin:shift($a,16)) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary-bitwise',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-bitwise-shift-008.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"xs:hexBinary(\"0000\")") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-bitwise-shift-009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " xs:hexBinary(bin:shift($a,17)) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary-bitwise',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-bitwise-shift-009.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"xs:hexBinary(\"0000\")") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-bitwise-shift-010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " xs:hexBinary(bin:shift($a,-1)) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary-bitwise',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-bitwise-shift-010.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"xs:hexBinary(\"7807\")") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-bitwise-shift-011'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " xs:hexBinary(bin:shift($a,-4)) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary-bitwise',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-bitwise-shift-011.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"xs:hexBinary(\"0F00\")") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-bitwise-shift-012'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " xs:hexBinary(bin:shift($a,-8)) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary-bitwise',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-bitwise-shift-012.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"xs:hexBinary(\"00F0\")") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-bitwise-shift-013'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " xs:hexBinary(bin:shift($a,-9)) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary-bitwise',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-bitwise-shift-013.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"xs:hexBinary(\"0078\")") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-bitwise-shift-014'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " xs:hexBinary(bin:shift($a,-12)) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary-bitwise',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-bitwise-shift-014.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"xs:hexBinary(\"000F\")") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-bitwise-shift-015'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " xs:hexBinary(bin:shift($a,-16)) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary-bitwise',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-bitwise-shift-015.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"xs:hexBinary(\"0000\")") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'EXPath-binary-bitwise-shift-016'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " xs:hexBinary(bin:shift($a,-17)) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('EXPath-binary-bitwise',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "EXPath-binary-bitwise-shift-016.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"xs:hexBinary(\"0000\")") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.