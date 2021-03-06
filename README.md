
# pg-chessboard

## Fast, Compact Types for Chess Board Positions

[![Build Status](https://travis-ci.org/NCarson/pg-chessboard.svg?branch=master)](https://travis-ci.org/NCarson/pg-chessboard)

```sql
select pretty('rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1'::board);
```
```                  pretty                    
 --------------------------------------------
 rnbqkbnr                                   +
 pppppppp                                   +
 ........                                   +
 ........                                   +
 ........                                   +
 ........                                   +
 PPPPPPPP                                   +
 RNBQKBNR  w  KQkq  -  0                    +
 rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR+
                                            +
(1 row)
```

pg-chessboard is an extension for Postgres.
It is known to run on Postgres version 9.2 and up on linux. 
It may also run on other OS's but I have never tried.
Installation usually is: `make && sudo make install && make installcheck`.
https://github.com/theory/pgtap also has
good general instructions on how to install an extension for Postgres. It does 
not generate moves or play chess. See [pgchess](https://pgxn.org/dist/pgchess/0.1.0/) for
something does.

It is designed to efficiently store board positions from 
[fen](https://en.wikipedia.org/wiki/Forsyth%E2%80%93Edwards_Notation)
fen strings. The boards are then very searchable and can be used
with gin indexes to find certain types of positions quickly.

Its main types are board, square, piece, cpiece, and piecesquare.
Positions can be searched by unnesting the pieces:

```sql
SELECT 
	ps::square AS square, ps::cpiece AS cpiece, ps::cpiece::piece AS piece 
FROM (
	SELECT unnest(pieces('8/8/8/8/8/8/8/5NnR'::board)) ps
)t ;
```
``` square | cpiece | piece 
--------+--------+-------
 f1     | N      | N
 g1     | n      | N
 h1     | R      | R
(3 rows)
```

There are also many fast c search functions that can search the board.


## Types

## Functions

