#Appelle la Gemfiles
require 'bundler'
Bundler.require

#Appelle la lib Ruby
$:.unshift File.expand_path("./../lib", __FILE__)

require 'game'
require 'player'
require 'board'
require 'board_case'
require 'show'

# #Message d'acceuil
puts "-------------------------------------------------".colorize(:yellow)
puts "|          Aujourd'hui, c'est Morpion!          |".colorize(:red)
puts "|        *******************************        |".colorize(:yellow)
puts "-------------------------------------------------".colorize(:yellow)
puts
print "             Press Enter to continue             "
    temp = gets.chomp
    system("clear") if temp == ''

print "          Choisis ton pseudo Joueur 1 !       "
p1 = gets.chomp
j1 = Player.new("#{p1}", "X")
puts
print "        Et l'autre là, qui qu'c'est donc?     "
p2 = gets.chomp
j2 = Player.new("#{p2}", "O")
tab = [j1, j2]
nb = Board.new
ng = Game.new(tab, nb)
puts
puts "*************************************************".colorize(:yellow)
puts "-----Quelle originalité! Maintenant, jouons.-----".colorize(:red)
puts "*************************************************".colorize(:yellow)
puts
print "             Press Enter to continue             "
    temp = gets.chomp
    system("clear") if temp == ''

print "             Celui qui commencera est :     #{ng.current_player.name}"
final = ng.turn(ng.current_player.sign)
if final == 1
    puts
    puts "*************************************************".colorize(:yellow)
    puts "                 #{j1.name}, WIN!                ".colorize(:light_blue)
    puts "*************************************************".colorize(:yellow)
    puts
elsif final == 2
    puts
    puts "*************************************************".colorize(:yellow)
    puts "                 #{j2.name}, WIN!                ".colorize(:light_blue)
    puts "*************************************************".colorize(:yellow)
    puts
else
    puts
    puts "*************************************************".colorize(:yellow)
    puts "---------------------EX-AEQUO--------------------".colorize(:light_blue)
    puts "*************************************************".colorize(:yellow)
    puts
end

#binding.pry