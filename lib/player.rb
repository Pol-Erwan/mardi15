class Player
  attr_accessor :name, :life_points, :damage

  def initialize(name)
    @name = name
    @life_points = 10
    @damage = damage
    damage = 0
  end

  def show_state
    puts "-> #{self.name} a #{self.life_points} points de vie."  
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
    puts "il lui inflige #{damage} points de dommage"
    player.gets_damage(damage) 
  end

  def compute_damage
    return rand(1..6)
  end

end




