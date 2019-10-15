require "pry"
class Player

	attr_accessor :name, :life_points

	def initialize(name)

		@life_points = 100
		@name = name

	end

	def show_state

		puts "Voici l'etat de chaque joueur"
		
		puts "#{name} a #{life_points} points de vie et une arme de niveau #{weapon_level}"

	end

	def gets_damaged(damage)


		@life_points = @life_points - damage

		
		puts " #{name} a été tué" if @life_points <= 0
	
	end

	def attacks(player_attacked)

	
		damage = compute_damage	

		puts"  #{name} attaque  #{player_attacked.name}"

		puts" Il lui a inflige #{damage} points de dommages !!!"

		player_attacked.gets_damaged(damage)

	end


	def compute_damage

    return rand(1..6)

    end	

end	

class HumanPlayer < Player

	attr_accessor :weapon_level

	def initialize(name)

		@weapon_level = 1
		
	super(name)

	end	


	def compute_damage
	    rand(1..6) * @weapon_level
	  end

	  def search_weapon
	  	new_weapon = rand(1..6)
	  	puts "Tu a trouvé une arme de niveau #{new_weapon}"
	  	if weapon_level < new_weapon
	  		puts" Youhou ! Elle est meilleure que ton arme actuelle: tu la prend ! "
	  	else weapon_level >= new_weapon
	  	puts "M@*#$... elle n'est pas mieux que ton arme actuelle"	
	  	end
	  end

	  def search_health_pack
	  rand(1..6)
	  if rand == 1
	  puts "Tu n'a rien trouvé..."	
	elsif rand == (2..5)
		puts"Bravo tu a trouve un pack +50 points de vie"
	else
		rand == 6
		puts"Waou tu a trouve un pack de +80 points de vie"
		end	
	end
end		  
#binding.pry