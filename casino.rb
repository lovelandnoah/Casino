# Basic Objectives:
# Start game player has a name and an initial bank roll
# Player can go to different games via menu
# Slots
# High / Low
# Player places bet and wins / loses (hint: rand)
# Player's bankroll goes up and down with wins and losses


# a main class over the whole thing
# multiple menu's and submenus
# back to main 
# and a perpetual exit for all menu exit
# back option for submenus
# rules in game menu'


def rules_slots
	puts "You win when you get: three of <3, $, ^_^. Or one of each."
	puts "Press Enter to Continue."
	gets
	slots
end

def high_low_rules
	puts "This game is played with a full deck of 52 cards, minus the jokers. 
	The player plays against the dealer. The player  makes his wager, 
	and the dealer is asked to deal. After receiving a card, the player has 
	to say if the following card will be higher or lower in value. 
	If your prediction is right, the player wins!

	If you win the first bet, you can continue to play with the amount you won 
	plus your original bet, or you can collect your winnings and start afresh."
	puts "Press Enter to Continue."
	gets
	high_low
end


def high_low
	case @num
	when 1
		high_low_game
	when 2
		high_low_rules
	when 3
		bankroll
	when 4
		exit_now
	else
		puts "Not a Valid entry"
		#display menu
		high_low
	end
end


def slots
	case @num
	when 1
		slot_game
	when 2
		rules_slots
	when 3
		bankroll
		puts "Press Enter to go back to Slots Menu"
		@let
		slots
	when 4
		main_menu
		main_nav
	when 5
		exit_now
	else 
		puts "Not a Valid entry"
		#display menu
		slots
	end
end

def game_room
	case @num
	when 1
		slots
	when 2
		high_low
	when 3
		bankroll
	when 4 
		back_main_menu
	when 5 
		exit_now
	else 
		puts "Not a Valid entry"
		#display menu
		game_room	
	end
end

def exit_now
	sleep 1
	puts ""
	puts "Thanks for coming! Hope you enjoyed your time at the Casino"
	puts ""
	exit 0
end


def main_nav
	@num = gets.to_i
	case @num
		when 1
			game_room
		when 2
			bankroll
		when 3
			exit_now
		else 
			puts "Not a Valid entry"
			#display menu
			main_nav
	end
end


main_nav


