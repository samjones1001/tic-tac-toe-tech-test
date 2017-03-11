## Tic Tac Toe Tech Test
#### Technologies: Ruby, Rspec
### Week 10 tech test for [Makers Academy] (http://www.makersacademy.com)
[Outline](#outline) | [Usage Instructions](#usage-instructions) 

## Brief
The rules of tic-tac-toe are as follows:

* There are two players in the game (X and O)
* Players take turns until the game is over
* A player can claim a field if it is not already taken
* A turn ends when a player claims a field
* A player wins if they claim all the fields in a row, column or diagonal
* A game is over if a player wins
* A game is over when all fields are taken

Build the business logic for a game of tic tac toe. It should be easy to implement a working game of tic tac toe by combining your code with any user interface, whether web or command line. 

## Outline
My solution to this tech tests uses four classes - Game, Player, Board and Square.  Generally speaking I am happy with the simplicity of the solution and the clear responsibilities of each class.  However, given more time I would have liked to work more on the logic for determining if a play has yet won the game within the Board class, as I feel it is a little convoluted in its present state.

In retrospect, I also don't think that Player is a true class, and I feel it might better be represented as a constant within the Game class.

## Usage Instructions
* clone the repo and run bundle
```shell
$ git clone https://github.com/samjones1001/tic-tac-toe-tech-test
$ cd bank-tic-tac-toe-tech-test
$ rvm 2.3.0
$ bundle
```
* run tests
```shell
$ rspec
```
* usage 
```shell
$ irb
2.3.0 :001 > require './lib/game'
2.3.0 :002 > game = Game.new
2.3.0 :003 > game.play_turn('A1')
2.3.0 :004 > game.play_turn('A1')
2.3.0 :005 > game.play_turn('A2')
2.3.0 :006 > game.play_turn('B1')
2.3.0 :007 > game.play_turn('B2')
2.3.0 :008 > game.play_turn('C1')
RuntimeError: game over - X wins!
```
