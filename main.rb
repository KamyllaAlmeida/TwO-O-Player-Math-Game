require 'pry'
require './player'
require './game'

pp "Name of Player 1"

player1 = Player.new(gets.chomp)

pp "Name of Player 2"

player2 = Player.new(gets.chomp)

game = Game.new(player1, player2)

game.start