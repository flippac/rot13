# rot13

Quick Haskell rot13 implementation. Doesn't rot13 before the first ] in a line unless there isn't one, to ease writing rot13ed tweets with content notes.

Operates as a filter - input on stdin, output on stdout, no frills.
