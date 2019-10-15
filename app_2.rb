require 'bundler'
require 'pry'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

def intro
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

end

puts "Quel est ton prénom ?"
print ">"
player1 = HumanPlayer.new(gets.chomp)

player2 = Player.new("Sangoku")
player3 = Player.new("Végéta")

enemies = []

enemies << player2
enemies << player3

while player1.life_points > 0 && (player2.life_points > 0 || player3.life_points >0)

  puts "Quelle action veux-tu effectuer ?"

  puts "a - chercher une meilleure arme"
  puts "s - chercher à se soigner" 

  puts "attaquer un joueur en vue :"
  print "0 - "
  print player2.show_state
  print "1 - "
  print player3.show_state

  print ">"
  choice = gets.chomp

  if choice == "a"
    puts " /\/\/\ arme /\/\/\ "	
    puts player1.search_weapon
    puts " "
  end
  if choice == "s"
    puts " + + + Health Pack + + + "
    puts player1.search_health_pack
    puts " "
  end
  if choice == "0"
    puts " "
    puts "o=)====>     FIGHT    <====(=o"
    player1.attacks(player2)
    puts " "
  end
  if choice == "1"
    puts " "
    puts "o=)====>     FIGHT    <====(=o"
    player1.attacks(player3)
    puts " "
  end

  puts "Les autres joueurs t'attaquent !"
  puts " "
  sleep (2)
  player2.attacks(player1)
  puts " "
  sleep (2)
  player3.attacks(player1)
  puts " "

  #puts "tableau attack"
  #puts enemies
  bot = 1
  while bot < enemies.size
    enemies.each do |bot|#attacks(player1)
      puts bot
      bot = bot + 1
      bot.attacks(player1)
    end
  end
  player2.attacks(player1)
  enemies.attacks(player1)

  
#bot.attacks(player1)
sleep (1)
end


while player1.life_points > 0 && (player2.life_points > 0 || player3.life_points >0)

  if player1.life_points > 0 && player2.life_points > 0
    player1.attacks(player2)
    puts player1.show_state
  end

  if player1.life_points > 0 && player3.life_points > 0
    player1.attacks(player3)
    puts player1.show_state
  end

  if player2.life_points > 0 && player1.life_points > 0
    player2.attacks(player1)
    puts player1.show_state
  end
  if player2.life_points > 0 && player3.life_points > 0
    player2.attacks(player3)
    puts player1.show_state
  end
	
  if player3.life_points > 0 && player1.life_points > 0
    player3.attacks(player1)
    puts player1.show_state
  end
  if player3.life_points > 0 && player2.life_points > 0
    player3.attacks(player2)
    puts player1.show_state		
  end		
end



puts "game over"







