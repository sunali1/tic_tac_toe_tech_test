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
so I know the outcome of the game
I want the Board to tell me when I have won, lost or drawn



•••Domain Model

Board: initializes a new game of 3X3 cells, is responsible for setting and getting of values for the grid and deciding win, lose or draw

Cell: writes O or X  as per player input

Game: has responsibility of Board and Players - each make move and counter move

Player: has responsibility of the names of 2 players and corresponding inputs of 'X' and 'O'

Winning combinations

The Board is represented as an array of of 3 nested arrays of (0 to 8)indices. The WINNING COMBINATIONS are a constant, so as the board knows which combinations are a winner.

As player you will be prompted to make a move. The move options are

2.4.0 :001 > example_array = [
2.4.0 :002 >     ['1', '2', '3'],
2.4.0 :003 >     ['4', '5', '6'],
2.4.0 :004 >     ['7', '8', '9']
2.4.0 :005?>   ]
=> [["1", "2", "3"], ["4", "5", "6"], ["7", "8", "9"]]
 so example_array[0][1] => '2'
