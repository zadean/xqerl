%% @author Zack
%% @doc @todo Add description to xqerl_try.
-module(xqerl_try).
-include("xqerl.hrl").



%-export([d/0]).



-export([main/1]).

-variables([{{qname, 'no-namespace', [], "board"},
        {xqSeqType, 'xs:integer', one_or_many}, [], {'var$^1', 1}},
       {{qname, 'no-namespace', [], "groups"}, {xqSeqType, 'xs:integer', one_or_many},
        [], {'var$^3', 1}},
       {{qname, 'no-namespace', [], "rowStarts"},
        {xqSeqType, 'xs:integer', one_or_many}, [], {'var$^2', 1}}]).

-functions([{{qname, "sudoku", "fn1", "solveSudoku"},
        {xqSeqType, 'xs:integer', one_or_many}, [], {'fx$^41', 2}, 1,
        [{xqSeqType, 'xs:integer', one_or_many}]},
       {{qname, "sudoku", "fn1", "populateValues"},
        {xqSeqType, 'xs:integer', one_or_many}, [], {'fx$^36', 3}, 2,
        [{xqSeqType, 'xs:integer', one_or_many},
         {xqSeqType, 'xs:integer', zero_or_many}]},
       {{qname, "sudoku", "fn1", "tryValues"}, {xqSeqType, 'xs:integer', one_or_many},
        [], {'fx$^30', 4}, 3,
        [{xqSeqType, 'xs:integer', one_or_many}, {xqSeqType, 'xs:integer', one_or_many},
         {xqSeqType, 'xs:integer', one_or_many}]},
       {{qname, "sudoku", "fn1", "getAllowedValues"},
        {xqSeqType, 'xs:integer', zero_or_many}, [], {'fx$^23', 3}, 2,
        [{xqSeqType, 'xs:integer', one_or_many}, {xqSeqType, 'xs:integer', one}]},
       {{qname, "sudoku", "fn1", "getGroup"}, {xqSeqType, 'xs:integer', one_or_many},
        [], {'fx$^18', 3}, 2,
        [{xqSeqType, 'xs:integer', one_or_many}, {xqSeqType, 'xs:integer', one}]},
       {{qname, "sudoku", "fn1", "getCol"}, {xqSeqType, 'xs:integer', one_or_many}, [],
        {'fx$^13', 3}, 2,
        [{xqSeqType, 'xs:integer', one_or_many}, {xqSeqType, 'xs:integer', one}]},
       {{qname, "sudoku", "fn1", "getRow"}, {xqSeqType, 'xs:integer', one_or_many}, [],
        {'fx$^7', 3}, 2,
        [{xqSeqType, 'xs:integer', one_or_many}, {xqSeqType, 'xs:integer', one}]},
       {{qname, "sudoku", "fn1", "drawResult"}, {xqSeqType, element, one}, [],
        {'fx$^43', 2}, 1, [{xqSeqType, 'xs:integer', one_or_many}]},
       {{qname, "sudoku", "fn1", "drawBoard"}, {xqSeqType, element, one}, [],
        {'fx$^49', 2}, 1, [{xqSeqType, 'xs:integer', one_or_many}]}]).

-export(['var$^1'/1, 'var$^3'/1, 'var$^2'/1]).

-export(['fx$^41'/2, 'fx$^36'/3, 'fx$^30'/4, 'fx$^23'/3, 'fx$^18'/3, 'fx$^13'/3,
    'fx$^7'/3, 'fx$^43'/2, 'fx$^49'/2]).

'var$^1'(Ctx0) ->
    xqerl_seq2:sort_seq(xqerl_seq2:append({xqAtomicValue, 'xs:integer', 1},
                 xqerl_seq2:append({xqAtomicValue, 'xs:integer', 0},
                         xqerl_seq2:append({xqAtomicValue, 'xs:integer', 0},
                                 xqerl_seq2:append({xqAtomicValue, 'xs:integer', 0},
                                    xqerl_seq2:append({xqAtomicValue,
                                             'xs:integer', 0},
                                            xqerl_seq2:append({xqAtomicValue,
                                                     'xs:integer',
                                                     0},
                                                    xqerl_seq2:append({xqAtomicValue,
                                                             'xs:integer',
                                                             0},
                                                            xqerl_seq2:append({xqAtomicValue,
                                                                'xs:integer',
                                                                5},
                                                               xqerl_seq2:append({xqAtomicValue,
                                                                        'xs:integer',
                                                                        3},
                                                                       xqerl_seq2:append({xqAtomicValue,
                                                                                'xs:integer',
                                                                                0},
                                                                               xqerl_seq2:append({xqAtomicValue,
                                                                                        'xs:integer',
                                                                                        0},
                                                                                       xqerl_seq2:append({xqAtomicValue,
                                                                                           'xs:integer',
                                                                                           0},
                                                                                          xqerl_seq2:append({xqAtomicValue,
                                                                                                   'xs:integer',
                                                                                                   6},
                                                                                                  xqerl_seq2:append({xqAtomicValue,
                                                                                                           'xs:integer',
                                                                                                           0},
                                                                                                          xqerl_seq2:append({xqAtomicValue,
                                                                                                                   'xs:integer',
                                                                                                                   4},
                                                                                                                  xqerl_seq2:append({xqAtomicValue,
                                                                                                                      'xs:integer',
                                                                                                                      0},
                                                                                                                     xqerl_seq2:append({xqAtomicValue,
                                                                                                                              'xs:integer',
                                                                                                                              0},
                                                                                                                             xqerl_seq2:append({xqAtomicValue,
                                                                                                                                      'xs:integer',
                                                                                                                                      8},
                                                                                                                                     xqerl_seq2:append({xqAtomicValue,
                                                                                                                                              'xs:integer',
                                                                                                                                              7},
                                                                                                                                             xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                 'xs:integer',
                                                                                                                                                 0},
                                                                                                                                                xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                         'xs:integer',
                                                                                                                                                         3},
                                                                                                                                                        xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                 'xs:integer',
                                                                                                                                                                 5},
                                                                                                                                                                xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                         'xs:integer',
                                                                                                                                                                         0},
                                                                                                                                                                        xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                            'xs:integer',
                                                                                                                                                                            0},
                                                                                                                                                                           xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                    'xs:integer',
                                                                                                                                                                                    0},
                                                                                                                                                                                   xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                            'xs:integer',
                                                                                                                                                                                            0},
                                                                                                                                                                                           xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                    'xs:integer',
                                                                                                                                                                                                    9},
                                                                                                                                                                                                   xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                       'xs:integer',
                                                                                                                                                                                                       0},
                                                                                                                                                                                                      xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                               'xs:integer',
                                                                                                                                                                                                               4},
                                                                                                                                                                                                              xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                       'xs:integer',
                                                                                                                                                                                                                       0},
                                                                                                                                                                                                                      xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                               'xs:integer',
                                                                                                                                                                                                                               0},
                                                                                                                                                                                                                              xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                  'xs:integer',
                                                                                                                                                                                                                                  8},
                                                                                                                                                                                                                                 xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                          'xs:integer',
                                                                                                                                                                                                                                          0},
                                                                                                                                                                                                                                         xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                  'xs:integer',
                                                                                                                                                                                                                                                  0},
                                                                                                                                                                                                                                                 xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                          'xs:integer',
                                                                                                                                                                                                                                                          0},
                                                                                                                                                                                                                                                         xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                             'xs:integer',
                                                                                                                                                                                                                                                             0},
                                                                                                                                                                                                                                                            xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                     'xs:integer',
                                                                                                                                                                                                                                                                     0},
                                                                                                                                                                                                                                                                    xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                             'xs:integer',
                                                                                                                                                                                                                                                                             0},
                                                                                                                                                                                                                                                                            xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                     'xs:integer',
                                                                                                                                                                                                                                                                                     0},
                                                                                                                                                                                                                                                                                    xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                        'xs:integer',
                                                                                                                                                                                                                                                                                        0},
                                                                                                                                                                                                                                                                                       xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                'xs:integer',
                                                                                                                                                                                                                                                                                                0},
                                                                                                                                                                                                                                                                                               xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                        'xs:integer',
                                                                                                                                                                                                                                                                                                        0},
                                                                                                                                                                                                                                                                                                       xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                'xs:integer',
                                                                                                                                                                                                                                                                                                                6},
                                                                                                                                                                                                                                                                                                               xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                   'xs:integer',
                                                                                                                                                                                                                                                                                                                   1},
                                                                                                                                                                                                                                                                                                                  xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                           'xs:integer',
                                                                                                                                                                                                                                                                                                                           7},
                                                                                                                                                                                                                                                                                                                          xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                   'xs:integer',
                                                                                                                                                                                                                                                                                                                                   0},
                                                                                                                                                                                                                                                                                                                                  xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                           'xs:integer',
                                                                                                                                                                                                                                                                                                                                           0},
                                                                                                                                                                                                                                                                                                                                          xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                              'xs:integer',
                                                                                                                                                                                                                                                                                                                                              0},
                                                                                                                                                                                                                                                                                                                                             xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                                      'xs:integer',
                                                                                                                                                                                                                                                                                                                                                      3},
                                                                                                                                                                                                                                                                                                                                                     xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                                              'xs:integer',
                                                                                                                                                                                                                                                                                                                                                              6},
                                                                                                                                                                                                                                                                                                                                                             xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                                                      'xs:integer',
                                                                                                                                                                                                                                                                                                                                                                      9},
                                                                                                                                                                                                                                                                                                                                                                     xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                                                         'xs:integer',
                                                                                                                                                                                                                                                                                                                                                                         0},
                                                                                                                                                                                                                                                                                                                                                                        xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                                                                 'xs:integer',
                                                                                                                                                                                                                                                                                                                                                                                 0},
                                                                                                                                                                                                                                                                                                                                                                                xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                                                                         'xs:integer',
                                                                                                                                                                                                                                                                                                                                                                                         0},
                                                                                                                                                                                                                                                                                                                                                                                        xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                                                                                 'xs:integer',
                                                                                                                                                                                                                                                                                                                                                                                                 0},
                                                                                                                                                                                                                                                                                                                                                                                                xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                                                                                    'xs:integer',
                                                                                                                                                                                                                                                                                                                                                                                                    2},
                                                                                                                                                                                                                                                                                                                                                                                                   xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                                                                                            'xs:integer',
                                                                                                                                                                                                                                                                                                                                                                                                            5},
                                                                                                                                                                                                                                                                                                                                                                                                           xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                                                                                                    'xs:integer',
                                                                                                                                                                                                                                                                                                                                                                                                                    0},
                                                                                                                                                                                                                                                                                                                                                                                                                   xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                                                                                                            'xs:integer',
                                                                                                                                                                                                                                                                                                                                                                                                                            0},
                                                                                                                                                                                                                                                                                                                                                                                                                           xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                                                                                                               'xs:integer',
                                                                                                                                                                                                                                                                                                                                                                                                                               0},
                                                                                                                                                                                                                                                                                                                                                                                                                              xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                                                                                                                       'xs:integer',
                                                                                                                                                                                                                                                                                                                                                                                                                                       9},
                                                                                                                                                                                                                                                                                                                                                                                                                                      xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                                                                                                                               'xs:integer',
                                                                                                                                                                                                                                                                                                                                                                                                                                               0},
                                                                                                                                                                                                                                                                                                                                                                                                                                              xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                                                                                                                                       'xs:integer',
                                                                                                                                                                                                                                                                                                                                                                                                                                                       0},
                                                                                                                                                                                                                                                                                                                                                                                                                                                      xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                                                                                                                                          'xs:integer',
                                                                                                                                                                                                                                                                                                                                                                                                                                                          4},
                                                                                                                                                                                                                                                                                                                                                                                                                                                         xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  'xs:integer',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  0},
                                                                                                                                                                                                                                                                                                                                                                                                                                                                 xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                          'xs:integer',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                          0},
                                                                                                                                                                                                                                                                                                                                                                                                                                                                         xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  'xs:integer',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  0},
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     'xs:integer',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     0},
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             'xs:integer',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             5},
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     'xs:integer',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     0},
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             'xs:integer',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             2},
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                'xs:integer',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                0},
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        'xs:integer',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        0},
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                'xs:integer',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                0},
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        'xs:integer',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        6},
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           'xs:integer',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           0},
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   'xs:integer',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   0},
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           'xs:integer',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3},
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   'xs:integer',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   0},
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      'xs:integer',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      0},
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              'xs:integer',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              1},
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             xqerl_seq2:empty())))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))).

'var$^3'(Ctx0) ->
    xqerl_seq2:sort_seq(xqerl_seq2:append({xqAtomicValue, 'xs:integer', 9},
                 xqerl_seq2:append({xqAtomicValue, 'xs:integer', 9},
                         xqerl_seq2:append({xqAtomicValue, 'xs:integer', 9},
                                 xqerl_seq2:append({xqAtomicValue, 'xs:integer', 8},
                                    xqerl_seq2:append({xqAtomicValue,
                                             'xs:integer', 8},
                                            xqerl_seq2:append({xqAtomicValue,
                                                     'xs:integer',
                                                     8},
                                                    xqerl_seq2:append({xqAtomicValue,
                                                             'xs:integer',
                                                             7},
                                                            xqerl_seq2:append({xqAtomicValue,
                                                                'xs:integer',
                                                                7},
                                                               xqerl_seq2:append({xqAtomicValue,
                                                                        'xs:integer',
                                                                        7},
                                                                       xqerl_seq2:append({xqAtomicValue,
                                                                                'xs:integer',
                                                                                9},
                                                                               xqerl_seq2:append({xqAtomicValue,
                                                                                        'xs:integer',
                                                                                        9},
                                                                                       xqerl_seq2:append({xqAtomicValue,
                                                                                           'xs:integer',
                                                                                           9},
                                                                                          xqerl_seq2:append({xqAtomicValue,
                                                                                                   'xs:integer',
                                                                                                   8},
                                                                                                  xqerl_seq2:append({xqAtomicValue,
                                                                                                           'xs:integer',
                                                                                                           8},
                                                                                                          xqerl_seq2:append({xqAtomicValue,
                                                                                                                   'xs:integer',
                                                                                                                   8},
                                                                                                                  xqerl_seq2:append({xqAtomicValue,
                                                                                                                      'xs:integer',
                                                                                                                      7},
                                                                                                                     xqerl_seq2:append({xqAtomicValue,
                                                                                                                              'xs:integer',
                                                                                                                              7},
                                                                                                                             xqerl_seq2:append({xqAtomicValue,
                                                                                                                                      'xs:integer',
                                                                                                                                      7},
                                                                                                                                     xqerl_seq2:append({xqAtomicValue,
                                                                                                                                              'xs:integer',
                                                                                                                                              9},
                                                                                                                                             xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                 'xs:integer',
                                                                                                                                                 9},
                                                                                                                                                xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                         'xs:integer',
                                                                                                                                                         9},
                                                                                                                                                        xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                 'xs:integer',
                                                                                                                                                                 8},
                                                                                                                                                                xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                         'xs:integer',
                                                                                                                                                                         8},
                                                                                                                                                                        xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                            'xs:integer',
                                                                                                                                                                            8},
                                                                                                                                                                           xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                    'xs:integer',
                                                                                                                                                                                    7},
                                                                                                                                                                                   xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                            'xs:integer',
                                                                                                                                                                                            7},
                                                                                                                                                                                           xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                    'xs:integer',
                                                                                                                                                                                                    7},
                                                                                                                                                                                                   xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                       'xs:integer',
                                                                                                                                                                                                       6},
                                                                                                                                                                                                      xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                               'xs:integer',
                                                                                                                                                                                                               6},
                                                                                                                                                                                                              xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                       'xs:integer',
                                                                                                                                                                                                                       6},
                                                                                                                                                                                                                      xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                               'xs:integer',
                                                                                                                                                                                                                               5},
                                                                                                                                                                                                                              xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                  'xs:integer',
                                                                                                                                                                                                                                  5},
                                                                                                                                                                                                                                 xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                          'xs:integer',
                                                                                                                                                                                                                                          5},
                                                                                                                                                                                                                                         xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                  'xs:integer',
                                                                                                                                                                                                                                                  4},
                                                                                                                                                                                                                                                 xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                          'xs:integer',
                                                                                                                                                                                                                                                          4},
                                                                                                                                                                                                                                                         xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                             'xs:integer',
                                                                                                                                                                                                                                                             4},
                                                                                                                                                                                                                                                            xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                     'xs:integer',
                                                                                                                                                                                                                                                                     6},
                                                                                                                                                                                                                                                                    xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                             'xs:integer',
                                                                                                                                                                                                                                                                             6},
                                                                                                                                                                                                                                                                            xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                     'xs:integer',
                                                                                                                                                                                                                                                                                     6},
                                                                                                                                                                                                                                                                                    xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                        'xs:integer',
                                                                                                                                                                                                                                                                                        5},
                                                                                                                                                                                                                                                                                       xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                'xs:integer',
                                                                                                                                                                                                                                                                                                5},
                                                                                                                                                                                                                                                                                               xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                        'xs:integer',
                                                                                                                                                                                                                                                                                                        5},
                                                                                                                                                                                                                                                                                                       xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                'xs:integer',
                                                                                                                                                                                                                                                                                                                4},
                                                                                                                                                                                                                                                                                                               xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                   'xs:integer',
                                                                                                                                                                                                                                                                                                                   4},
                                                                                                                                                                                                                                                                                                                  xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                           'xs:integer',
                                                                                                                                                                                                                                                                                                                           4},
                                                                                                                                                                                                                                                                                                                          xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                   'xs:integer',
                                                                                                                                                                                                                                                                                                                                   6},
                                                                                                                                                                                                                                                                                                                                  xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                           'xs:integer',
                                                                                                                                                                                                                                                                                                                                           6},
                                                                                                                                                                                                                                                                                                                                          xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                              'xs:integer',
                                                                                                                                                                                                                                                                                                                                              6},
                                                                                                                                                                                                                                                                                                                                             xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                                      'xs:integer',
                                                                                                                                                                                                                                                                                                                                                      5},
                                                                                                                                                                                                                                                                                                                                                     xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                                              'xs:integer',
                                                                                                                                                                                                                                                                                                                                                              5},
                                                                                                                                                                                                                                                                                                                                                             xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                                                      'xs:integer',
                                                                                                                                                                                                                                                                                                                                                                      5},
                                                                                                                                                                                                                                                                                                                                                                     xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                                                         'xs:integer',
                                                                                                                                                                                                                                                                                                                                                                         4},
                                                                                                                                                                                                                                                                                                                                                                        xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                                                                 'xs:integer',
                                                                                                                                                                                                                                                                                                                                                                                 4},
                                                                                                                                                                                                                                                                                                                                                                                xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                                                                         'xs:integer',
                                                                                                                                                                                                                                                                                                                                                                                         4},
                                                                                                                                                                                                                                                                                                                                                                                        xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                                                                                 'xs:integer',
                                                                                                                                                                                                                                                                                                                                                                                                 3},
                                                                                                                                                                                                                                                                                                                                                                                                xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                                                                                    'xs:integer',
                                                                                                                                                                                                                                                                                                                                                                                                    3},
                                                                                                                                                                                                                                                                                                                                                                                                   xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                                                                                            'xs:integer',
                                                                                                                                                                                                                                                                                                                                                                                                            3},
                                                                                                                                                                                                                                                                                                                                                                                                           xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                                                                                                    'xs:integer',
                                                                                                                                                                                                                                                                                                                                                                                                                    2},
                                                                                                                                                                                                                                                                                                                                                                                                                   xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                                                                                                            'xs:integer',
                                                                                                                                                                                                                                                                                                                                                                                                                            2},
                                                                                                                                                                                                                                                                                                                                                                                                                           xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                                                                                                               'xs:integer',
                                                                                                                                                                                                                                                                                                                                                                                                                               2},
                                                                                                                                                                                                                                                                                                                                                                                                                              xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                                                                                                                       'xs:integer',
                                                                                                                                                                                                                                                                                                                                                                                                                                       1},
                                                                                                                                                                                                                                                                                                                                                                                                                                      xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                                                                                                                               'xs:integer',
                                                                                                                                                                                                                                                                                                                                                                                                                                               1},
                                                                                                                                                                                                                                                                                                                                                                                                                                              xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                                                                                                                                       'xs:integer',
                                                                                                                                                                                                                                                                                                                                                                                                                                                       1},
                                                                                                                                                                                                                                                                                                                                                                                                                                                      xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                                                                                                                                          'xs:integer',
                                                                                                                                                                                                                                                                                                                                                                                                                                                          3},
                                                                                                                                                                                                                                                                                                                                                                                                                                                         xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  'xs:integer',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  3},
                                                                                                                                                                                                                                                                                                                                                                                                                                                                 xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                          'xs:integer',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                          3},
                                                                                                                                                                                                                                                                                                                                                                                                                                                                         xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  'xs:integer',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  2},
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     'xs:integer',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     2},
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             'xs:integer',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             2},
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     'xs:integer',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     1},
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             'xs:integer',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             1},
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                'xs:integer',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                1},
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        'xs:integer',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        3},
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                'xs:integer',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                3},
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        'xs:integer',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        3},
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           'xs:integer',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2},
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   'xs:integer',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   2},
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           'xs:integer',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2},
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   'xs:integer',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   1},
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      'xs:integer',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      1},
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     xqerl_seq2:append({xqAtomicValue,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              'xs:integer',
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              1},
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             xqerl_seq2:empty())))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))).

'var$^2'(Ctx0) ->
    xqerl_seq2:sort_seq(xqerl_seq2:append({xqAtomicValue, 'xs:integer', 73},
                 xqerl_seq2:append({xqAtomicValue, 'xs:integer', 64},
                         xqerl_seq2:append({xqAtomicValue, 'xs:integer', 55},
                                 xqerl_seq2:append({xqAtomicValue, 'xs:integer', 46},
                                    xqerl_seq2:append({xqAtomicValue,
                                             'xs:integer', 37},
                                            xqerl_seq2:append({xqAtomicValue,
                                                     'xs:integer',
                                                     28},
                                                    xqerl_seq2:append({xqAtomicValue,
                                                             'xs:integer',
                                                             19},
                                                            xqerl_seq2:append({xqAtomicValue,
                                                                'xs:integer',
                                                                10},
                                                               xqerl_seq2:append({xqAtomicValue,
                                                                        'xs:integer',
                                                                        1},
                                                                       xqerl_seq2:empty())))))))))).

'fx$^41'(Ctx0, Param__var_37) ->
    begin
      VarTup__2 = fun Local__10() ->
           begin
             XQ__var_39 = begin
                  VarTup__1 = fun Local__7() ->
                            fun IterLoop__1(Iter__5, Local__4) ->
                               case xqerl_seq2:next(Iter__5) of
                            empty -> Local__4;
                            none -> Local__4;
                            {Local__5, Local__3, Iter__6} ->
                                [],
                                XQ__var_38 = Local__3,
                                IterLoop__1(Iter__6,
                                  xqerl_flwor:stream_append({XQ__var_38}, Local__4))
                               end
                            end(xqerl_seq2:get_seq_iter(xqerl_seq2:range(xqerl_types:as_seq({xqAtomicValue,
                                                'xs:integer',
                                                1},
                                                    {xqSeqType,
                                                'xs:integer',
                                                zero_or_one}),
                                           xqerl_types:as_seq({xqAtomicValue,
                                                'xs:integer',
                                                81},
                                                    {xqSeqType,
                                                'xs:integer',
                                                zero_or_one}))),
                           xqerl_flwor:stream_new())
                         end(),
                  fun IterLoop__2(Iter__7, Local__9) ->
                     case xqerl_flwor:stream_next(Iter__7) of
                       none -> xqerl_seq2:sort_seq(Local__9);
                       {_, {XQ__var_38}, Iter__8} ->
                          %?dbg("XQ__var_38",XQ__var_38),
                      IterLoop__2(Iter__8,
                             xqerl_seq2:append(case
                                  xqerl_seq2:singleton_value(xqerl_fn:boolean(Ctx0,
                                                     xqerl_operators:general_compare('=',
                                                                 begin
                                                                   Local__8 =
                                                                  Param__var_37,
                                                                   xqerl_step:filter(Ctx0,
                                                                        [XQ__var_38],
                                                                      Local__8)
                                                                 end,
                                                                 {xqAtomicValue,
                                                                  'xs:integer',
                                                                  0})))
                                    of
                                  {xqAtomicValue, 'xs:boolean', true} -> XQ__var_38;
                                  _ -> xqerl_seq2:empty()
                                     end,
                                     Local__9))
                     end
                  end(xqerl_flwor:stream_iter(VarTup__1), xqerl_seq2:empty())
                end,
             begin
               XQ__var_40 = 'fx$^36'(Ctx0,
                      xqerl_types:as_seq(Param__var_37, {xqSeqType, 'xs:integer', one_or_many}),
                      xqerl_types:as_seq(XQ__var_39, {xqSeqType, 'xs:integer', zero_or_many})),
               xqerl_flwor:stream_append({XQ__var_39, XQ__var_40}, xqerl_flwor:stream_new())
             end
           end
        end(),
      fun IterLoop__3(Iter__9, Local__11) ->
         case xqerl_flwor:stream_next(Iter__9) of
      none -> xqerl_seq2:sort_seq(Local__11);
      {_, {XQ__var_39, XQ__var_40}, Iter__10} ->
          IterLoop__3(Iter__10,
            xqerl_seq2:append(case xqerl_seq2:singleton_value(xqerl_fn:boolean(Ctx0,
                                       xqerl_fn:empty(Ctx0, XQ__var_40)))
                        of
                      {xqAtomicValue, 'xs:boolean', true} -> Param__var_37;
                      _ -> xqerl_fn:'one-or-more'(Ctx0, XQ__var_40)
                    end,
                    Local__11))
         end
      end(xqerl_flwor:stream_iter(VarTup__2), xqerl_seq2:empty())
    end.

'fx$^36'(Ctx0, Param__var_31, Param__var_32) ->
    case xqerl_seq2:singleton_value(xqerl_fn:boolean(Ctx0,
                       xqerl_fn:'not'(Ctx0, xqerl_fn:empty(Ctx0, Param__var_32))))
   of
      {xqAtomicValue, 'xs:boolean', true} ->
     begin
       VarTup__3 = fun Local__15() ->
            begin
              XQ__var_33 = xqerl_fn:'exactly-one'(Ctx0,
                              xqerl_types:as_seq(begin
                                    Local__14 = Param__var_32,
                                    xqerl_step:filter(Ctx0,
                                            [{xqAtomicValue, 'xs:integer',
                                              1}],
                                            Local__14)
                                  end,
                                  {xqSeqType, item, zero_or_many})),
              begin
                XQ__var_34 = xqerl_fn:'distinct-values'(Ctx0,
                               xqerl_types:as_seq('fx$^23'(Ctx0,
                                       xqerl_types:as_seq(erlang:get('var$^1'),
                                                {xqSeqType,
                                                 'xs:integer',
                                                 one_or_many}),
                                       xqerl_types:as_seq(XQ__var_33,
                                                {xqSeqType,
                                                 'xs:integer',
                                                 one})),
                                        {xqSeqType, 'xs:anyAtomicType',
                                    zero_or_many})),
                xqerl_flwor:stream_append({XQ__var_33, XQ__var_34}, xqerl_flwor:stream_new())
              end
            end
         end(),
       fun IterLoop__5(Iter__19, Local__23) ->
          case xqerl_flwor:stream_next(Iter__19) of
            none -> xqerl_seq2:sort_seq(Local__23);
            {_, {XQ__var_33, XQ__var_34}, Iter__20} ->
           IterLoop__5(Iter__20,
                  xqerl_seq2:append(case xqerl_seq2:singleton_value(xqerl_fn:boolean(Ctx0,
                                        xqerl_operators:general_compare('>',
                                                    xqerl_fn:count(Ctx0,
                                                         XQ__var_34),
                                                    {xqAtomicValue,
                                                     'xs:integer',
                                                     1})))
                         of
                       {xqAtomicValue, 'xs:boolean', true} ->
                           'fx$^30'(Ctx0, Param__var_31, xqerl_fn:'one-or-more'(Ctx0, Param__var_32),
                               xqerl_fn:'one-or-more'(Ctx0, XQ__var_34));
                       _ ->
                           case xqerl_seq2:singleton_value(xqerl_fn:boolean(Ctx0,
                                              xqerl_operators:general_compare('=',
                                                          xqerl_fn:count(Ctx0,
                                                               XQ__var_34),
                                                          {xqAtomicValue,
                                                      'xs:integer',
                                                      1})))
                          of
                        {xqAtomicValue, 'xs:boolean', true} ->
                            begin
                              VarTup__4 = fun Local__20() ->
                                   begin
                                     XQ__var_35 =
                                    xqerl_seq2:sort_seq(xqerl_seq2:append(begin
                                                   Local__19 =
                                                       erlang:get('var$^1'),
                                                   xqerl_step:filter(Ctx0,
                                                           [fun
                                                              (Ctx__4) ->
                                                             xqerl_operators:general_compare('>',
                                                                         xqerl_fn:position(Ctx__4),
                                                                         XQ__var_33)
                                                            end],
                                                           Local__19)
                                                      end,
                                                      xqerl_seq2:append(xqerl_fn:'exactly-one'(Ctx0,
                                                                      xqerl_types:as_seq(begin
                                                                            Local__18 =
                                                                           XQ__var_34,
                                                                            xqerl_step:filter(Ctx0,
                                                                                    [{xqAtomicValue,
                                                                                 'xs:integer',
                                                                                 1}],
                                                                                    Local__18)
                                                                          end,
                                                                          {xqSeqType,
                                                                           item,
                                                                           zero_or_many})),
                                                         xqerl_seq2:append(begin
                                                                   Local__17 =
                                                                  erlang:get('var$^1'),
                                                                   xqerl_step:filter(Ctx0,
                                                                           [fun
                                                                         (Ctx__2) ->
                                                                             xqerl_operators:general_compare('<',
                                                                                         xqerl_fn:position(Ctx__2),
                                                                                         XQ__var_33)
                                                                            end],
                                                                           Local__17)
                                                                 end,
                                                                 xqerl_seq2:empty())))),
                                     xqerl_flwor:stream_append({XQ__var_33,
                                                 XQ__var_34,
                                                 XQ__var_35},
                                                xqerl_flwor:stream_new())
                                   end
                                end(),
                              fun IterLoop__4(Iter__17, Local__22) ->
                                 case xqerl_flwor:stream_next(Iter__17) of
                              none -> xqerl_seq2:sort_seq(Local__22);
                              {_, {XQ__var_33, XQ__var_34, XQ__var_35}, Iter__18} ->
                                  IterLoop__4(Iter__18,
                                    xqerl_seq2:append('fx$^36'(Ctx0, XQ__var_35,
                                                begin
                                                  Local__21 =
                                                 Param__var_32,
                                                  xqerl_step:filter(Ctx0,
                                                          [fun
                                                        (Ctx__5) ->
                                                            xqerl_operators:general_compare('!=',
                                                                        xqerl_fn:position(Ctx__5),
                                                                        {xqAtomicValue,
                                                                         'xs:integer',
                                                                         1})
                                                      end],
                                                          Local__21)
                                                end),
                                            Local__22))
                                 end
                              end(xqerl_flwor:stream_iter(VarTup__4), xqerl_seq2:empty())
                            end;
                        _ -> []
                           end
                     end,
                     Local__23))
          end
       end(xqerl_flwor:stream_iter(VarTup__3), xqerl_seq2:empty())
     end;
      _ -> Param__var_31
    end.

'fx$^30'(Ctx0, Param__var_24, Param__var_25, Param__var_26) ->
    begin
      VarTup__5 = fun Local__32() ->
           begin
             XQ__var_27 = begin
                  Local__31 = Param__var_25,
                  xqerl_step:filter(Ctx0, [{xqAtomicValue, 'xs:integer', 1}], Local__31)
                end,
             begin
               XQ__var_28 = xqerl_seq2:sort_seq(xqerl_seq2:append(begin
                                 Local__30 = erlang:get('var$^1'),
                                 xqerl_step:filter(Ctx0,
                                         [fun (Ctx__4) ->
                                             xqerl_operators:general_compare('>',
                                                         xqerl_fn:position(Ctx__4),
                                                         XQ__var_27)
                                          end],
                                         Local__30)
                               end,
                               xqerl_seq2:append(begin
                                         Local__29 = Param__var_26,
                                         xqerl_step:filter(Ctx0,
                                                 [{xqAtomicValue,
                                              'xs:integer', 1}],
                                                 Local__29)
                                       end,
                                       xqerl_seq2:append(begin
                                                 Local__28 =
                                                erlang:get('var$^1'),
                                                 xqerl_step:filter(Ctx0,
                                                    [fun
                                                       (Ctx__2) ->
                                                      xqerl_operators:general_compare('<',
                                                                  xqerl_fn:position(Ctx__2),
                                                                  XQ__var_27)
                                                     end],
                                                    Local__28)
                                               end,
                                               xqerl_seq2:empty())))),
               begin
            XQ__var_29 = 'fx$^36'(Ctx0,
                        xqerl_types:as_seq(XQ__var_28, {xqSeqType, 'xs:integer', one_or_many}),
                        xqerl_types:as_seq(begin
                              Local__27 = Param__var_25,
                              xqerl_step:filter(Ctx0,
                                      [fun (Ctx__1) ->
                                          xqerl_operators:general_compare('!=',
                                                      xqerl_fn:position(Ctx__1),
                                                      {xqAtomicValue,
                                                       'xs:integer',
                                                       1})
                                       end],
                                      Local__27)
                            end,
                            {xqSeqType, 'xs:integer', zero_or_many})),
            xqerl_flwor:stream_append({XQ__var_27, XQ__var_28, XQ__var_29},
                       xqerl_flwor:stream_new())
               end
             end
           end
        end(),
      fun IterLoop__6(Iter__27, Local__34) ->
         case xqerl_flwor:stream_next(Iter__27) of
      none -> xqerl_seq2:sort_seq(Local__34);
      {_, {XQ__var_27, XQ__var_28, XQ__var_29}, Iter__28} ->
          IterLoop__6(Iter__28,
            xqerl_seq2:append(case xqerl_seq2:singleton_value(xqerl_fn:boolean(Ctx0,
                                       xqerl_fn:empty(Ctx0, XQ__var_29)))
                        of
                      {xqAtomicValue, 'xs:boolean', true} ->
                     case xqerl_seq2:singleton_value(xqerl_fn:boolean(Ctx0,
                                        xqerl_operators:general_compare('>',
                                                    xqerl_fn:count(Ctx0,
                                                         Param__var_26),
                                                    {xqAtomicValue,
                                                     'xs:integer',
                                                     1})))
                         of
                       {xqAtomicValue, 'xs:boolean', true} ->
                           'fx$^30'(Ctx0, Param__var_24, Param__var_25,
                               xqerl_fn:'one-or-more'(Ctx0,
                                       begin
                                    Local__33 = Param__var_26,
                                    xqerl_step:filter(Ctx0,
                                            [fun (Ctx__6) ->
                                                xqerl_operators:general_compare('!=',
                                                            xqerl_fn:position(Ctx__6),
                                                            {xqAtomicValue,
                                                             'xs:integer',
                                                             1})
                                             end],
                                            Local__33)
                                       end));
                       _ -> []
                     end;
                      _ -> XQ__var_29
                    end,
                    Local__34))
         end
      end(xqerl_flwor:stream_iter(VarTup__5), xqerl_seq2:empty())
    end.

'fx$^23'(Ctx0, Param__var_19, Param__var_20) ->
    begin
      VarTup__6 = fun Local__36() ->
           begin
             XQ__var_21 = xqerl_seq2:sort_seq(xqerl_seq2:append('fx$^18'(Ctx0,
                                 xqerl_types:as_seq(erlang:get('var$^1'),
                                          {xqSeqType, 'xs:integer',
                                           one_or_many}),
                                 xqerl_types:as_seq(Param__var_20,
                                          {xqSeqType, 'xs:integer', one})),
                                  xqerl_seq2:append('fx$^13'(Ctx0,
                                         xqerl_types:as_seq(erlang:get('var$^1'),
                                                  {xqSeqType,
                                                   'xs:integer',
                                                   one_or_many}),
                                         xqerl_types:as_seq(Param__var_20,
                                                  {xqSeqType,
                                                   'xs:integer',
                                                   one})),
                                     xqerl_seq2:append('fx$^7'(Ctx0,
                                                xqerl_types:as_seq(erlang:get('var$^1'),
                                                         {xqSeqType,
                                                          'xs:integer',
                                                          one_or_many}),
                                                xqerl_types:as_seq(Param__var_20,
                                                         {xqSeqType,
                                                          'xs:integer',
                                                          one})),
                                             xqerl_seq2:empty())))),
             xqerl_flwor:stream_append({XQ__var_21}, xqerl_flwor:stream_new())
           end
        end(),
      fun IterLoop__9(Iter__35, Local__43) ->
         case xqerl_flwor:stream_next(Iter__35) of
      none -> xqerl_seq2:sort_seq(Local__43);
      {_, {XQ__var_21}, Iter__36} ->
          IterLoop__9(Iter__36,
            xqerl_seq2:append(begin
                      VarTup__7 = fun Local__41() ->
                           fun IterLoop__7(Iter__31, Local__38) ->
                              case xqerl_seq2:next(Iter__31) of
                                empty -> Local__38;
                                none -> Local__38;
                                {Local__39, Local__37, Iter__32} ->
                                    [],
                                    XQ__var_22 = Local__37,
                                    IterLoop__7(Iter__32,
                                      xqerl_flwor:stream_append({XQ__var_21,
                                                  XQ__var_22},
                                                 Local__38))
                              end
                           end(xqerl_seq2:get_seq_iter(xqerl_seq2:range(xqerl_types:as_seq({xqAtomicValue,
                                                    'xs:integer',
                                                    1},
                                                   {xqSeqType,
                                                    'xs:integer',
                                                    zero_or_one}),
                                               xqerl_types:as_seq({xqAtomicValue,
                                                    'xs:integer',
                                                    9},
                                                   {xqSeqType,
                                                    'xs:integer',
                                                    zero_or_one}))),
                               xqerl_flwor:stream_new())
                        end(),
                      fun IterLoop__8(Iter__33, Local__42) ->
                         case xqerl_flwor:stream_next(Iter__33) of
                           none -> xqerl_seq2:sort_seq(Local__42);
                           {_, {XQ__var_21, XQ__var_22}, Iter__34} ->
                          IterLoop__8(Iter__34,
                                 xqerl_seq2:append(case
                                      xqerl_seq2:singleton_value(xqerl_fn:boolean(Ctx0,
                                                         xqerl_fn:'not'(Ctx0,
                                                              xqerl_operators:general_compare('=',
                                                                          XQ__var_22,
                                                                          XQ__var_21))))
                                        of
                                      {xqAtomicValue, 'xs:boolean', true} ->
                                          XQ__var_22;
                                      _ -> []
                                    end,
                                    Local__42))
                         end
                      end(xqerl_flwor:stream_iter(VarTup__7), xqerl_seq2:empty())
                    end,
                    Local__43))
         end
      end(xqerl_flwor:stream_iter(VarTup__6), xqerl_seq2:empty())
    end.

'fx$^18'(Ctx0, Param__var_14, Param__var_15) ->
    begin
      VarTup__8 = fun Local__46() ->
           begin
             XQ__var_16 = begin
                  Local__45 = erlang:get('var$^3'),
                  xqerl_step:filter(Ctx0, [xqerl_seq2:singleton_value(Param__var_15)], Local__45)
                end,
             xqerl_flwor:stream_append({XQ__var_16}, xqerl_flwor:stream_new())
           end
        end(),
      fun IterLoop__12(Iter__43, Local__55) ->
         case xqerl_flwor:stream_next(Iter__43) of
      none -> xqerl_seq2:sort_seq(Local__55);
      {_, {XQ__var_16}, Iter__44} ->
          IterLoop__12(Iter__44,
             xqerl_seq2:append(xqerl_fn:'one-or-more'(Ctx0,
                             begin
                               Local__47 = Param__var_14,
                               xqerl_step:filter(Ctx0,
                                       [fun (Ctx__2) ->
                                           begin
                                        VarTup__9 = fun Local__52() ->
                                                  fun
                                                    IterLoop__10(Iter__39,
                                                       Local__49) ->
                                                   case
                                                     xqerl_seq2:next(Iter__39)
                                                       of
                                                     empty ->
                                                    Local__49;
                                                     none ->
                                                    Local__49;
                                                     {Local__50,
                                                      Local__48,
                                                      Iter__40} ->
                                                    [],
                                                    XQ__var_17 =
                                                        Local__48,
                                                    IterLoop__10(Iter__40,
                                                            xqerl_flwor:stream_append({XQ__var_16,
                                                                   XQ__var_17},
                                                                  Local__49))
                                                   end
                                                  end(xqerl_seq2:get_seq_iter(xqerl_fn:position(Ctx__2)),
                                                 xqerl_flwor:stream_new())
                                               end(),
                                        fun IterLoop__11(Iter__41,
                                               Local__54) ->
                                           case
                                             xqerl_flwor:stream_next(Iter__41)
                                               of
                                             none ->
                                                 xqerl_seq2:sort_seq(Local__54);
                                             {_,
                                              {XQ__var_16,
                                               XQ__var_17},
                                              Iter__42} ->
                                                 IterLoop__11(Iter__42,
                                                    xqerl_seq2:append(xqerl_operators:general_compare('=',
                                                                        begin
                                                                     Local__53 =
                                                                         erlang:get('var$^3'),
                                                                     xqerl_step:filter(Ctx__2,
                                                                             [ XQ__var_17 ],
                                                                             Local__53)
                                                                        end,
                                                                        XQ__var_16),
                                                            Local__54))
                                           end
                                        end(xqerl_flwor:stream_iter(VarTup__9),
                                            xqerl_seq2:empty())
                                           end
                                        end],
                                       Local__47)
                             end),
                     Local__55))
         end
      end(xqerl_flwor:stream_iter(VarTup__8), xqerl_seq2:empty())
    end.

'fx$^13'(Ctx0, Param__var_8, Param__var_9) ->
    begin
      VarTup__11 = fun Local__64() ->
            begin
              XQ__var_10 = xqerl_operators:modulo(xqerl_operators:subtract(Param__var_9,
                                   {xqAtomicValue, 'xs:integer', 1}),
                         {xqAtomicValue, 'xs:integer', 9}),
              begin
                XQ__var_12 = begin
                     VarTup__10 = fun Local__62() ->
                           fun IterLoop__13(Iter__49, Local__59) ->
                              case xqerl_seq2:next(Iter__49) of
                                empty -> Local__59;
                                none -> Local__59;
                                {Local__60, Local__58, Iter__50} ->
                               [],
                               XQ__var_11 = Local__58,
                               IterLoop__13(Iter__50,
                                       xqerl_flwor:stream_append({XQ__var_10,
                                              XQ__var_11},
                                             Local__59))
                              end
                           end(xqerl_seq2:get_seq_iter(erlang:get('var$^2')),
                               xqerl_flwor:stream_new())
                        end(),
                     fun IterLoop__14(Iter__51, Local__63) ->
                        case xqerl_flwor:stream_next(Iter__51) of
                     none -> xqerl_seq2:sort_seq(Local__63);
                     {_, {XQ__var_10, XQ__var_11}, Iter__52} ->
                         IterLoop__14(Iter__52,
                            xqerl_seq2:append(xqerl_operators:add(XQ__var_11, XQ__var_10),
                                    Local__63))
                        end
                     end(xqerl_flwor:stream_iter(VarTup__10), xqerl_seq2:empty())
                   end,
                xqerl_flwor:stream_append({XQ__var_10, XQ__var_12}, xqerl_flwor:stream_new())
              end
            end
         end(),
      fun IterLoop__15(Iter__53, Local__66) ->
         case xqerl_flwor:stream_next(Iter__53) of
      none -> xqerl_seq2:sort_seq(Local__66);
      {_, {XQ__var_10, XQ__var_12}, Iter__54} ->
          IterLoop__15(Iter__54,
             xqerl_seq2:append(xqerl_fn:'one-or-more'(Ctx0,
                             begin
                               Local__65 = Param__var_8,
                               xqerl_step:filter(Ctx0,
                                       [fun (Ctx__1) ->
                                           xqerl_operators:general_compare('=',
                                                       xqerl_fn:position(Ctx__1),
                                                       XQ__var_12)
                                        end],
                                       Local__65)
                             end),
                     Local__66))
         end
      end(xqerl_flwor:stream_iter(VarTup__11), xqerl_seq2:empty())
    end.

'fx$^7'(Ctx0, Param__var_4, Param__var_5) ->
    begin
      VarTup__12 = fun Local__68() ->
            begin
              XQ__var_6 = xqerl_operators:multiply(xqerl_fn:floor(Ctx0,
                               xqerl_types:as_seq(xqerl_operators:divide(xqerl_operators:subtract(Param__var_5,
                                                          {xqAtomicValue,
                                                           'xs:integer',
                                                           1}),
                                                {xqAtomicValue,
                                                 'xs:integer',
                                                 9}),
                                        {xqSeqType, 'xs:numeric',
                                         zero_or_one})),
                          {xqAtomicValue, 'xs:integer', 9}),
              xqerl_flwor:stream_append({XQ__var_6}, xqerl_flwor:stream_new())
            end
         end(),
      fun IterLoop__16(Iter__57, Local__70) ->
         case xqerl_flwor:stream_next(Iter__57) of
      none -> xqerl_seq2:sort_seq(Local__70);
      {_, {XQ__var_6}, Iter__58} ->
          IterLoop__16(Iter__58,
             xqerl_seq2:append(xqerl_fn:'one-or-more'(Ctx0,
                             begin
                               Local__69 = Param__var_4,
                               xqerl_step:filter(Ctx0,
                                       [fun (Ctx__1) ->
                                           xqerl_fn:boolean(Ctx__1,
                                             xqerl_operators:eff_bool_val(xqerl_operators:general_compare('>',
                                                                       xqerl_fn:position(Ctx__1),
                                                                       XQ__var_6))
                                               andalso
                                               xqerl_operators:eff_bool_val(xqerl_operators:general_compare('<=',
                                                                         xqerl_fn:position(Ctx__1),
                                                                         xqerl_operators:add(XQ__var_6,
                                                                              {xqAtomicValue,
                                                                               'xs:integer',
                                                                               9}))))
                                        end],
                                       Local__69)
                             end),
                     Local__70))
         end
      end(xqerl_flwor:stream_iter(VarTup__12), xqerl_seq2:empty())
    end.

'fx$^43'(Ctx0, Param__var_42) ->
    xqerl_node:new_fragment({xqElementNode, undefined, undefined,
              {qname, 'no-namespace', [], "html"}, undefined, [], [], [], undefined,
              'xs:anyType', {xqAtomicValue, 'xs:anyURI', undefined}, undefined,
              begin
                Ctx__1 = Ctx0,
                [{xqElementNode, undefined, undefined, {qname, 'no-namespace', [], "head"},
             undefined, [], [], [], undefined, 'xs:anyType',
             {xqAtomicValue, 'xs:anyURI', undefined}, undefined,
             begin
               Ctx__2 = Ctx__1,
               [{xqElementNode, undefined, undefined, {qname, 'no-namespace', [], "title"},
                 undefined, [], [], [], undefined, 'xs:anyType',
                 {xqAtomicValue, 'xs:anyURI', undefined}, undefined,
                 begin
                   Ctx__3 = Ctx__2,
                   {xqTextNode, undefined, undefined, true, undefined,
               {xqAtomicValue, 'xs:string', "Sudoku - XSLT"}}
                 end},
                {xqElementNode, undefined, undefined, {qname, 'no-namespace', [], "style"},
                 undefined, [], [], [], undefined, 'xs:anyType',
                 {xqAtomicValue, 'xs:anyURI', undefined}, undefined,
                 begin
                   Ctx__4 = Ctx__2,
                   {xqTextNode, undefined, undefined, true, undefined,
               {xqAtomicValue, 'xs:string',
                "table { border-collapse: collapse; border: 1px solid "
                "black; } td { padding: 10px; } .norm { border-left: "
                "1px solid #CCC; border-top: 1px solid #CCC; } .csep "
                "{ border-left: 1px solid black; } .rsep { border-top: "
                "1px solid black; }"}}
                 end}]
             end},
            {xqElementNode, undefined, undefined, {qname, 'no-namespace', [], "body"},
             undefined, [], [], [], undefined, 'xs:anyType',
             {xqAtomicValue, 'xs:anyURI', undefined}, undefined,
             begin
               Ctx__5 = Ctx__1,
               'fx$^49'(Ctx__5,
                   xqerl_types:as_seq(erlang:get('var$^1'),
                            {xqSeqType, 'xs:integer', one_or_many}))
             end}]
              end},
             {xqAtomicValue, 'xs:anyURI', undefined}).

'fx$^49'(Ctx0, Param__var_44) ->
    xqerl_node:new_fragment({xqElementNode, undefined, undefined,
              {qname, 'no-namespace', [], "table"}, undefined, [], [], [], undefined,
              'xs:anyType', {xqAtomicValue, 'xs:anyURI', undefined}, undefined,
              begin
                Ctx__1 = Ctx0,
                begin
             VarTup__13 = fun Local__75() ->
                        fun IterLoop__17(Iter__59, Local__72) ->
                           case xqerl_seq2:next(Iter__59) of
                        empty -> Local__72;
                        none -> Local__72;
                        {Local__73, Local__71, Iter__60} ->
                            [],
                            XQ__var_45 = Local__71,
                            IterLoop__17(Iter__60,
                               xqerl_flwor:stream_append({XQ__var_45}, Local__72))
                           end
                        end(xqerl_seq2:get_seq_iter(xqerl_seq2:range(xqerl_types:as_seq({xqAtomicValue,
                                                 'xs:integer', 1},
                                                {xqSeqType,
                                                 'xs:integer',
                                                 zero_or_one}),
                                       xqerl_types:as_seq({xqAtomicValue,
                                                 'xs:integer', 9},
                                                {xqSeqType,
                                                 'xs:integer',
                                                 zero_or_one}))),
                       xqerl_flwor:stream_new())
                     end(),
             fun IterLoop__20(Iter__67, Local__84) ->
                case xqerl_flwor:stream_next(Iter__67) of
                  none -> xqerl_seq2:sort_seq(Local__84);
                  {_, {XQ__var_45}, Iter__68} ->
                      IterLoop__20(Iter__68,
                         xqerl_seq2:append(xqerl_node:new_fragment({xqElementNode, undefined, undefined,
                                           {qname, 'no-namespace', [], "tr"},
                                           undefined, [], [], [], undefined,
                                           'xs:anyType',
                                           {xqAtomicValue, 'xs:anyURI',
                                       undefined},
                                           undefined,
                                           begin
                                        Ctx__2 = Ctx__1,
                                        begin
                                          VarTup__14 = fun Local__81() ->
                                                fun
                                                  IterLoop__18(Iter__61,
                                                          Local__77) ->
                                                      case
                                                   xqerl_seq2:next(Iter__61)
                                                     of
                                                   empty ->
                                                       Local__77;
                                                   none ->
                                                       Local__77;
                                                   {Local__78,
                                                    Local__76,
                                                    Iter__62} ->
                                                       XQ__var_46 =
                                                      {xqAtomicValue,
                                                       'xs:integer',
                                                       Local__78},
                                                       XQ__var_47 =
                                                      Local__76,
                                                       IterLoop__18(Iter__62,
                                                          begin
                                                            XQ__var_48 =
                                                                xqerl_operators:add(xqerl_operators:multiply(xqerl_operators:subtract(XQ__var_45,
                                                                                         {xqAtomicValue,
                                                                                          'xs:integer',
                                                                                          1}),
                                                                               {xqAtomicValue,
                                                                                'xs:integer',
                                                                                9}),
                                                                     XQ__var_47),
                                                            xqerl_flwor:stream_append({XQ__var_45,
                                                                        XQ__var_47,
                                                                        XQ__var_46,
                                                                        XQ__var_48},
                                                                       Local__77)
                                                          end)
                                                      end
                                                end(xqerl_seq2:get_seq_iter(xqerl_seq2:range(xqerl_types:as_seq({xqAtomicValue,
                                                                         'xs:integer',
                                                                         1},
                                                                        {xqSeqType,
                                                                         'xs:integer',
                                                                         zero_or_one}),
                                                                    xqerl_types:as_seq({xqAtomicValue,
                                                                         'xs:integer',
                                                                         9},
                                                                        {xqSeqType,
                                                                         'xs:integer',
                                                                         zero_or_one}))),
                                                    xqerl_flwor:stream_new())
                                             end(),
                                          fun IterLoop__19(Iter__65,
                                                 Local__83) ->
                                             case
                                               xqerl_flwor:stream_next(Iter__65)
                                                 of
                                               none ->
                                              xqerl_seq2:sort_seq(Local__83);
                                               {_,
                                                {XQ__var_45,
                                                 XQ__var_47,
                                                 XQ__var_46,
                                                 XQ__var_48},
                                                Iter__66} ->
                                              IterLoop__19(Iter__66,
                                                      xqerl_seq2:append(xqerl_node:new_fragment({xqElementNode,
                                                                   undefined,
                                                                   undefined,
                                                                   {qname,
                                                                    'no-namespace',
                                                                    [],
                                                                    "td"},
                                                                   undefined,
                                                                   [],
                                                                   [],
                                                                   [],
                                                                   undefined,
                                                                   'xs:anyType',
                                                                   {xqAtomicValue,
                                                                    'xs:anyURI',
                                                                    undefined},
                                                                   undefined,
                                                                   begin
                                                                     Ctx__3 =
                                                                         Ctx__2,
                                                                     [{xqAttributeNode,
                                                                       undefined,
                                                                       {qname,
                                                                        'no-namespace',
                                                                        [],
                                                                        "class"},
                                                                       undefined,
                                                                       undefined,
                                                                       undefined,
                                                                       undefined,
                                                                       [case
                                                                     xqerl_seq2:singleton_value(xqerl_fn:boolean(Ctx__3,
                                                                                        xqerl_operators:general_compare('=',
                                                                                                    xqerl_operators:modulo(XQ__var_46,
                                                                                                            {xqAtomicValue,
                                                                                                             'xs:integer',
                                                                                                             3}),
                                                                                                    {xqAtomicValue,
                                                                                                     'xs:integer',
                                                                                                     1})))
                                                                       of
                                                                     {xqAtomicValue,
                                                                      'xs:boolean',
                                                                      true} ->
                                                                         {xqAtomicValue,
                                                                          'xs:string',
                                                                          "csep"};
                                                                     _ ->
                                                                         {xqAtomicValue,
                                                                          'xs:string',
                                                                          "norm"}
                                                                        end,
                                                                        case
                                                                     xqerl_seq2:singleton_value(xqerl_fn:boolean(Ctx__3,
                                                                                        xqerl_operators:general_compare('=',
                                                                                                    xqerl_operators:modulo(XQ__var_45,
                                                                                                            {xqAtomicValue,
                                                                                                             'xs:integer',
                                                                                                             3}),
                                                                                                    {xqAtomicValue,
                                                                                                     'xs:integer',
                                                                                                     1})))
                                                                       of
                                                                     {xqAtomicValue,
                                                                      'xs:boolean',
                                                                      true} ->
                                                                         {xqAtomicValue,
                                                                          'xs:string',
                                                                          "rsep"};
                                                                     _ ->
                                                                         {xqAtomicValue,
                                                                          'xs:string',
                                                                          "norm"}
                                                                        end]},
                                                                      {xqAtomicValue,
                                                                       'xs:string',
                                                                       " "},
                                                                      begin
                                                                        Local__82 =
                                                                       erlang:get('var$^1'),
                                                                        xqerl_step:filter(Ctx__3,
                                                                           [XQ__var_48 ],
                                                                           Local__82)
                                                                      end]
                                                                   end},
                                                                  {xqAtomicValue,
                                                                   'xs:anyURI',
                                                                   undefined}),
                                                         Local__83))
                                             end
                                          end(xqerl_flwor:stream_iter(VarTup__14),
                                              xqerl_seq2:empty())
                                        end
                                           end},
                                          {xqAtomicValue, 'xs:anyURI',
                                           undefined}),
                                 Local__84))
                end
             end(xqerl_flwor:stream_iter(VarTup__13), xqerl_seq2:empty())
                end
              end},
             {xqAtomicValue, 'xs:anyURI', undefined}).

main(Options) ->
    Ctx0 = maps:put(namespaces,
          [{"", 'no-namespace'},
           {"local", "http://www.w3.org/2005/xquery-local-functions"},
           {"fn", "http://www.w3.org/2005/xpath-functions"},
           {"xsi", "http://www.w3.org/2001/XMLSchema-instance"},
           {"xml", "http://www.w3.org/XML/1998/namespace"},
           {"xs", "http://www.w3.org/2001/XMLSchema"},
           {"math", "http://www.w3.org/2005/xpath-functions/math"},
           {"map", "http://www.w3.org/2005/xpath-functions/map"},
           {"array", "http://www.w3.org/2005/xpath-functions/array"},
           {"err", "http://www.w3.org/2005/xqt-errors"}],
          maps:put('base-uri', {xqAtomicValue, 'xs:anyURI', undefined},
              maps:put(variables, [],
                  maps:put(ctx_var, 'Ctx',
                      maps:put(parameters, [],
                     lists:foldl(fun ({K, V}, M) -> maps:put(K, V, M) end, maps:new(), Options)))))),
    xqerl_context:init(),
    Ctx = Ctx0,
    erlang:put('var$^1', 'var$^1'(Ctx)),
    erlang:put('var$^3', 'var$^3'(Ctx)),
    erlang:put('var$^2', 'var$^2'(Ctx)),
    xqerl_types:return_value('fx$^43'(Ctx, 'fx$^41'(Ctx, erlang:get('var$^1')))).
