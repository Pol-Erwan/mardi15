require 'bundler'
require 'pry'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

player1 = Player.new("Sangoku") 			# declaration ennemi 1
player2 = Player.new("Végéta")				# déclaration ennemi 2	

puts "Voici l'état de chaque joueur :"


print player1.show_state				# etat joueur 1
print player2.show_state				# etat joueur 2


puts "Passons à la phase d'attaque :"			# phase attaque	
puts "        FIGHT"


while player1.life_points >= 1 && player2.life_points >= 1	# si joueur en vie le combat commence

	sleep (0.5)					# tempo
	print "        ."
	sleep (0.5)
	print " ."
	sleep (0.5)
	print " ."
	puts " "

  player1.attacks(player2)				# premiere attaque
if player2.life_points <= 0				# si adversaire mort = fin du jeu
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



