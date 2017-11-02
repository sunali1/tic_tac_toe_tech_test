•••The Brief

Build a tic-tac-toe game that can be played on the terminal, web interface or an app.


•••The Rules of the Game

The rules of tic-tac-toe are as follows:

There are two players in the game (X and O)
Players take turns until the game is over
A player can claim a field if it is not already taken
A turn ends when a player claims a field
A player wins if they claim all the fields in a row, column or diagonal
A game is over if a player wins
A game is over when all fields are taken
Build the business logic for a game of tic tac toe. It should be easy to implement a working game of tic tac toe by combining your code with any user interface, whether web or command line.

•••User Stories

As a player
so that I can play tic-tac-toe
I want an empty board of 3 X 3

As a player
so that I start the game
I would like to know the state of the game

As player 1
so that I can make a move
I would like to place an 'O' in an unoccupied cell on the Board

As player 2
so that I can make a counter move
I would like to place a 'X' in an unoccupied cell on the Board

As a player
so I know whether I have won or lost
I want the Board to tell me when I have won, lost or drawn



•••Domain Model

Board: initializes a new game of 3X3 cells

Cell: writes O or X  as per player input

Game: has responsibility of Board and players - each make move and counter move

Winning combinations

The Board is represented as an array of (0 to 8)indices. The WINNING COMBINATIONS are a constant, so as the board knows which combinations are a winner.

As player you will be prompted to make a move. The move options are
top left
top right
top middle
middle left
middle right
middle middle
bottom left
botton right
bottom middle
are given numbers 1 to 9 and mapped to the coordinates (x,y)
{"1"=>[0, 0], "2"=>[1, 0], "3"=>[2, 0], "4"=>[0, 1], "5"=>[1, 1], "6"=>[2, 1], "7"=>[0, 2], "8"=>[1, 2], "9"=>[2, 2]}
