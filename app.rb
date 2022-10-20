#Appelle la Gemfiles
require 'bundler'
Bundler.require

#Appelle la lib Ruby !!ERROR!!
$:.unshift File.expand_path("./../lib", __FILE__)

require 'game'
require 'player'
require 'board'
require 'board_case'
require 'show'

# #Message d'acceuil
puts "-------------------------------------------------"
puts "|          Aujourd'hui, c'est Morpion!          |"
puts "|        *******************************        |"
puts "-------------------------------------------------"

puts "Qui es-tu joueur 1 ?"
p1 = gets.chomp
j1 = Player.new("#{p1}", "X")
puts "Qui es-tu joueur 2 ?"
p2 = gets.chomp
j2 = Player.new("#{p2}", "O")
tab = [j1, j2]
nb = Board.new
ng = Game.new(tab, nb)

#binding.pry

puts "Celui qui commencera est : #{ng.current_player.name}"
final = ng.turn(ng.current_player.sign)
if final == 1
    puts "Féliciation #{j1.name}, tu l'as éclaté"
elsif final == 2
    puts "Féliciation #{j2.name}, tu l'as éclaté"
else
    puts "Match nul bande de naze"
end