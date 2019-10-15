require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

player1 = Player.new("Josiane")
player2 = Player.new("José")

puts " "

puts" Voici l'etat de nos 2 combattans"

while player1.life_points > 0 && player2.life_points > 0

	player1.show_state
	player2.show_state

puts " "
 
puts "Passons a la phase d'attaque !"

	player1.attacks(player2)

	 if player2.life_points <= 0 
	 break	
	else
	player2.attacks(player1)
end

	puts " "
end





binding.pry
