require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

puts"______________________________________________"

puts " Bienvenue sur 'ILS VEULENT TOUS MA POO' !!
	Le but du jeu est d'etre le dernier survivant !"
puts"______________________________________________"

puts "Quel est ton prenom?"
	prenom = gets.chomp

	user = HumanPlayer.new("prenom")


	player1 = Player.new("Josiane")
	player2 = Player.new("José")

	ennemis = ["player1","player2"]

	while user.life_points > 0 &&(player1.life_points > 0 || player2.life_points > 0)

	end

	puts " La partie est fini"
		if user.life_points > 0 
			puts" BRAVO !! TU AS GAGNE !"
		else user.life_points =< 0
			puts "Loser ! Tu as perdu !	"
		end		
binding.pry