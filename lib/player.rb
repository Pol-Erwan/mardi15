class Player
  attr_accessor :name, :life_points, :damage

  def initialize(name)
    @name = name
    @life_points = 10
    @damage = damage
    damage = 0
  end

  def show_state
    puts "#{self.name} a #{self.life_points} points de vie."  
  end

  def gets_damage(damage)
    @life_points = @life_points - damage
      if @life_points >= 0
          puts "#{self.name} a #{@life_points} points de vie."
      else
          puts "#{self.name} est mort"
      end
  end

  def attacks(player)
    puts "#{self.name} attaque #{player.name}"
    damage = compute_damage
    puts "-- > il lui inflige #{damage} points de dommage"
    player.gets_damage(damage) 
  end

  def compute_damage
    return rand(1..6)
  end

end

class HumanPlayer < Player
attr_accessor :weapon_level

  def initialize(name)
    @name = name
    @life_points = 100
    @weapon_level = 1
    @damage = damage
    damage = 0
  end

  def show_state
    puts "-> #{self.name} a #{self.life_points} points de vie et une arme de niveau #{self.weapon_level}"  
  end

  def compute_damage
    rand(1..6) * @weapon_level
  end

  def search_weapon
    weapon_find = rand(1..6)
    puts "tu as trouvé une arme de niveau #{weapon_find}"
    if weapon_find > weapon_level
      puts "Youhou ! elle est meilleure que ton arme actuelle : tu la prends."
      	@weapon_level = weapon_find
	puts "niveau de ton arme #{weapon_level}"
    else
      puts "AH ouais mais nan en fait elle n'est pas mieux que ton arme actuelle..."
	puts "niveau de ton arme #{weapon_level}"
    end
  end

  def search_health_pack
    health_find = rand(1..6)
    if health_find == 1
	puts "Tu n'as rien trouvé ... "
    else
      if health_find < 6	
	puts "Bravo, tu as trouvé un pack de +50 points de vie !"
	@life_points = @life_points + 50
	  if @life_points > 100
            @life_points = 100
	  end	
      else 
	puts "Waow, tu as trouvé un pack de +80 points de vie !"
	@life_points = @life_points + 80
	  if @life_points > 100
	    @life_points = 100
	  end
      end		
    end
  end
end



