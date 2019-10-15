require 'bundler'
require 'pry'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'


print " - "				# illustration d'intro
sleep (0.1)
print " - "
sleep (0.1)
print " - "
sleep (0.1)
print " - "
sleep (0.1)
print " - "
sleep (0.1)
print " - "
sleep (0.1)
print " - "
sleep (0.1)
print " - "
sleep (0.1)
print " - "
sleep (0.1)
print " - "
sleep (0.1)
print " - "
sleep (0.1)
print " - "
sleep (0.1)
print " - "
sleep (0.1)
puts " - "
sleep (0.1)


print " | "
sleep (0.1)
print "  "
sleep (0.1)
print "  "
sleep (0.1)
print " B "
sleep (0.1)
print " i "
sleep (0.1)
print " e "
sleep (0.1)
print " n "
sleep (0.1)
print " v "
sleep (0.1)
print " e "
sleep (0.1)
print " n "
sleep (0.1)
print " u "
sleep (0.1)
print " e "
sleep (0.1)
print "  "
sleep (0.1)
print "  "
sleep (0.1)
puts " | "
puts " |      Le but du jeu est d'être       |"
puts " |       le dernier survivant !        |"

print " - "
sleep (0.1)
print " - "
sleep (0.1)
print " - "
sleep (0.1)
print " - "
sleep (0.1)
print " - "
sleep (0.1)
print " - "
sleep (0.1)
print " - "
sleep (0.1)
print " - "
sleep (0.1)
print " - "
sleep (0.1)
print " - "
sleep (0.1)
print " - "
sleep (0.1)
print " - "
sleep (0.1)
print " - "
sleep (0.1)
puts " - "
sleep (0.1)


puts "Quel est ton prénom ?"				# entrer son prénom
print ">"
player1 = HumanPlayer.new(gets.chomp)			# rentrer le prénom dans le programme

player2 = Player.new("Sangoku")				# déclaration ennemi
player3 = Player.new("Végéta")				# déclaration second ennei

enemies = []						# création tableau pour ranger les ennemis

enemies << player2					# on met les ennemis dans le tableau
enemies << player3

while player1.life_points > 0 && (player2.life_points > 0 || player3.life_points >0) #tant qu'un ennemi ou moi est en vie le combat continue

  puts "Quelle action veux-tu effectuer ?"		# menu choix des actions du jeu

  puts "a - chercher une meilleure arme"
  puts "s - chercher à se soigner" 

  puts "attaquer un joueur en vue :"
  print "0 - "
  print player2.show_state
  print "1 - "
  print player3.show_state

  print ">"
  choice = gets.chomp

  if choice == "a"					# aller à la foncton corespondante du choix entré
    puts " /\/\/\ arme /\/\/\ "	
    puts player1.search_weapon
  end
  if choice == "s"					# aller à la foncton corespondante du choix entré
    puts " + + + Health Pack + + + "
    puts player1.search_health_pack
    puts " "
  end
  if choice == "0"					# aller à la foncton corespondante du choix entré
    puts " "
    puts "o=)====>     FIGHT    <====(=o"
    player1.attacks(player2)
    puts " "
  end
  if choice == "1"					# aller à la foncton corespondante du choix entré
    puts " "
    puts "o=)====>     FIGHT    <====(=o"
    player1.attacks(player3)
    puts " "
  end

  puts "Les autres joueurs t'attaquent !"		# au tour des ennemis de m'attaquer
  puts " "
  sleep (2)
    if player2.life_points > 0 				# au tour du player 2 de jouer si il est en vie 
      player2.attacks(player1)
    else 
      puts "#{player2.name} est mort"			# sinon afficher qu'il est mort	
    end
  puts " "
  sleep (2)						# au tour du player 3 de jouer si il est en vie
    if player3.life_points > 0
      player3.attacks(player1)
    else 
      puts "#{player3.name} est mort"			# sinon affcher qu'il est mort
    end
  puts " "
  
sleep (1)
end

puts "game over"







