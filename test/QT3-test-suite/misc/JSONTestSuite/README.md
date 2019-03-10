# JSON Parsing Test Suite
A comprehensive test suite for RFC 8259 compliant JSON parsers

**Preface**

This directory contains a snapshot of the JSON test cases at http://github.com/nst/JSONTestSuite.

The snapshot was taken on 2018-08-01 and may be replaced with a later snapshot.

The snapshot omits test drivers, test results, and other material that can be found in the GitHub repository.

The XQuery test driver relies on fn:uri-collection to read the contents of the test directory.
It runs all the tests in the `test_parsing` directory: tests prefixed `y_` must parse without
failure; tests prefixed `n_` must report a syntax error; and tests prefixed `i_` pass unconditionally
(but report to the results file whether parsing succeeded or failed).

Michael Kay, 2018-08-01 

**Original README**

This repository was created as an appendix to the article [Parsing JSON is a Minefield 💣](http://seriot.ch/parsing_json.php).

**/parsers/**

This directory contains several parsers and tiny wrappers to turn the parsers into JSON validators, by returning a specific value.

- `0` the parser did accept the content
- `1` the parser did reject the content
- `>1` the process did crash
- `timeout` happens after 5 seconds

**/test\_parsing/**

The name of these files tell if their contents should be accepted or rejected.

- `y_` content must be accepted by parsers
- `n_` content must be rejected by parsers
- `i_` parsers are free to accept or reject content

**/test\_transform/**

These files contain weird structures and characters that parsers may understand differently, eg:

- huge numbers
- dictionaries with similar keys
- NULL characters
- escaped invalid strings

These files were used to produce `results/transform.html`.

**/run_tests.py**

Run all parsers with all files:

    $ python3 run_tests.py

Run all parsers with a specific file:

    $ python3 run_tests.py file.json

Run specific parsers with all files:

    $ echo '["Python 2.7.10", "Python 3.5.2"]' > python_only.json
    $ python3 run_tests.py --filter=python_only.json

The script writes logs in `results/logs.txt`.

The script then reads `logs.txt` and generates `results/parsing.html`.

**/results/**

<img src="results/pruned_results.png" alt="JSON Parsing Tests" />
