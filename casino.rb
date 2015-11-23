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

def exit
	sleep 2
	puts ""
	puts "Thanks for coming! Hope you enjoyed your time at the Casino"
	puts ""
	exit 0
end

def rules_slots
	puts " You win when you get: three of <3, $, ^_^. Or one of each."

end



def slots
	case @num
	when 1
		slot_game
	when 2
		rules_slots
	when 3
		bankroll
	when 4
		main_menu
		main_nav
	when 5
		exit
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
		exit	
	end
end



def main_nav
@num = gets.to_i
	case @num
		when 1
			game_room
		when 2
			bankroll
		when 3
			exit
		else 
			puts "Not a Valid entry"
	end
end






