# Tic-Tac-Toe

## Table of contents
* [Installation](#installation)
* [Tic Tac Toe Version 1](#version-1)
    * [Usage](#v1-usage)
    * [Demo](#v1-demo)
* [Tic Tac Toe Version 2](#version-2)
    * [Usage](#v2-usage)
    * [Demo](#v2-demo)
* [Tic Tac Toe Version 3](#version-3)
    * [Usage](#v3-usage)
    * [Demo](#v3-demo)

## Installation
It's required to install [ruby 2.7.0](https://www.ruby-lang.org/en/documentation/installation/)

If already installed try to get version Using *Comamnd* 
```bash 
ruby -v
```

## Version 1
In the first version of the game 
- The `Board` is static of *SIZE* ```3 * 3```

<img alt="Tic-Tac-Toe-Board" src="https://images-na.ssl-images-amazon.com/images/I/41eo33HEQRL.png" width="100">

- There're only `Two Human Players`

### V1 Usage

> **_NOTE:_** Make sure you are in the same directory of project files

Write these commands in your `CLI` or `Terminal`

```bash
$ irb # Run ruby from Terminal 
```
```ruby
load 'game.rb' # Load the game.rb file
game = Game.new(:X, :O) # Create instance from Game class
game.play # Call the play method to start playing
```
## V1 Demo

```ruby

irb(main):001:0> load 'game.rb'
=> true
irb(main):002:0> game = Game.new(:X, :O)
irb(main):003:0> game.play
     | _ | _ | _ 
   ----------
     | _ | _ | _ 
   ----------
     | _ | _ | _ 
   ----------
Player X, enter two numbers representing a position in the format `row col`: 0 0
     | X | _ | _ 
   ----------
     | _ | _ | _ 
   ----------
     | _ | _ | _ 
   ----------
Player O, enter two numbers representing a position in the format `row col`: 1 0
     | X | _ | _ 
   ----------
     | O | _ | _ 
   ----------
     | _ | _ | _ 
   ----------
Player X, enter two numbers representing a position in the format `row col`: 1 1
     | X | _ | _ 
   ----------
     | O | X | _ 
   ----------
     | _ | _ | _ 
   ----------
Player O, enter two numbers representing a position in the format `row col`: 1 2
     | X | _ | _ 
   ----------
     | O | X | O 
   ----------
     | _ | _ | _ 
   ----------
Player X, enter two numbers representing a position in the format `row col`: 2 2
=> "Player X WINS!!!"

```

## Version 2

We added to version 1 some featurs
1. Support a dynamic board size.
2. Support more than two players.

### V2 Usage

Write these commands in your `CLI` or `Terminal`

```bash
$ irb # Run ruby from Terminal 
```
```ruby
load 'game.rb' # Load the game.rb file
game = Game.new({players_marks}) # Create instance from Game class
game.play # Call the play method to start playing
```
## V2 Demo

```ruby
irb(main):001:0> load 'game.rb'
=> true
irb(main):002:0> g = Game.new(4, 'A', 'B', 'C')
irb(main):003:0> g.play
     | _ | _ | _ | _ 
  ---  ---  ---  ---
     | _ | _ | _ | _ 
  ---  ---  ---  ---
     | _ | _ | _ | _ 
  ---  ---  ---  ---
     | _ | _ | _ | _ 
  ---  ---  ---  ---
Player A, enter two numbers representing a position in the format `row col`: 0 0
     | A | _ | _ | _ 
  ---  ---  ---  ---
     | _ | _ | _ | _ 
  ---  ---  ---  ---
     | _ | _ | _ | _ 
  ---  ---  ---  ---
     | _ | _ | _ | _ 
  ---  ---  ---  ---
Player B, enter two numbers representing a position in the format `row col`: 1 1
     | A | _ | _ | _ 
  ---  ---  ---  ---
     | _ | B | _ | _ 
  ---  ---  ---  ---
     | _ | _ | _ | _ 
  ---  ---  ---  ---
     | _ | _ | _ | _ 
  ---  ---  ---  ---

```

## Version 3

### V3 Usage

Write these commands in your `CLI` or `Terminal`

```bash
$ irb # Run ruby from Terminal 
```
```ruby
load 'game.rb' # Load the game.rb file
machine_civil_war = Game.new(4, {marks:type}) # False for Human and True for Computer
machine_civil_war.play # Call the play method to start playing
```
## V3 Demo

```ruby

irb(main):001:0> load 'game.rb' # Load the game.rb file
=> true
irb(main):002:0> machine_civil_war = Game.new(4, X: false, Y: true, Z: false) # False for Human and True for Computer

irb(main):003:0> machine_civil_war.play # Call the play method to start playing
     | _ | _ | _ | _ 
  ---  ---  ---
     | _ | _ | _ | _ 
  ---  ---  ---
     | _ | _ | _ | _ 
  ---  ---  ---
     | _ | _ | _ | _ 
  ---  ---  ---
Player X, enter two numbers representing a position in the format `row col`: 0 0
     | X | _ | _ | _ 
  ---  ---  ---
     | _ | _ | _ | _ 
  ---  ---  ---
     | _ | _ | _ | _ 
  ---  ---  ---
     | _ | _ | _ | _ 
  ---  ---  ---
Computer Y chose position [2, 2]
     | X | _ | _ | _ 
  ---  ---  ---
     | _ | _ | _ | _ 
  ---  ---  ---
     | _ | _ | Y | _ 
  ---  ---  ---
     | _ | _ | _ | _ 
  ---  ---  ---
Player Z, enter two numbers representing a position in the format `row col`: 1 1
     | X | _ | _ | _ 
  ---  ---  ---
     | _ | Z | _ | _ 
  ---  ---  ---
     | _ | _ | Y | _ 
  ---  ---  ---
     | _ | _ | _ | _ 
  ---  ---  ---
Player X, enter two numbers representing a position in the format `row col`: 2 1
     | X | _ | _ | _ 
  ---  ---  ---
     | _ | Z | _ | _ 
  ---  ---  ---
     | _ | X | Y | _ 
  ---  ---  ---
     | _ | _ | _ | _ 
  ---  ---  ---
Computer Y chose position [3, 0]
     | X | _ | _ | _ 
  ---  ---  ---
     | _ | Z | _ | _ 
  ---  ---  ---
     | _ | X | Y | _ 
  ---  ---  ---
     | Y | _ | _ | _ 
  ---  ---  ---
Player Z, enter two numbers representing a position in the format `row col`: 

```
