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
My solution uses three classes - Account, Transaction, and Statement - and makes use of dependency injection to reduce coupling.  Overall, I am happy with the simplicity of my codebase - I think the classes and methods are well named and perform a clear function.  Given more time, I would have liked to continue working on the presentation of the final output of the Statment class, as this is still not quite right.

## Usage Instructions
* clone the repo and run bundle
```shell
$ git clone https://github.com/samjones1001/bank-tech-test
$ cd bank-tech-test
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
2.3.0 :001 > require './lib/account'
2.3.0 :002 > account = Account.new
2.3.0 :003 > account.deposit(1000)
2.3.0 :004 > account.withdraw(250)
2.3.0 :005 > puts account.statement.pretty_print
```
