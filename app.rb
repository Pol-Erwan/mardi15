require 'bundler'
require 'pry'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

player1 = Player.new("Sangoku")
player2 = Player.new("Végéta")

puts "Voici l'état de chaque joueur :"


print player1.show_state
print player2.show_state


puts "Passons à la phase d'attaque :"
puts "        FIGHT"


while player1.life_points >= 1 && player2.life_points >= 1

	sleep (0.5)
	print "        ."
	sleep (0.5)
	print " ."
	sleep (0.5)
	print " ."
	puts " "

  player1.attacks(player2)
if player2.life_points <= 0
	break
	end

	sleep (0.5)
	print "        ."
	sleep (0.5)
	print " ."
	sleep (0.5)
	print " ."
	puts " "

  player2.attacks(player1)
end

puts "-------->Game Over<---------"

