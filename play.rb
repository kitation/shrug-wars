require 'swapi'
require 'json'

# Let's get a list of starships first

ships_request = Swapi.get_all('starships')
all_ships = JSON.parse(ships_request)['results']

# Pick a random ship

my_ship = all_ships.sample

# Take a look at what we get

puts 'Your ship is'
puts my_ship

# TODO: Get a ship for the computer

# Show a list of options

ignored_fields = ['url', 'created', 'updated']

continue = true
while continue
	puts 'Type q to quit'
	puts 'Type show to look at your ship'

	# TODO: print out our options 

	# get the option from the user
	item = gets.chomp

	# if the user types q quit, or if they type show print the ship
	if item == 'q'
		continue = false
		break
	elsif item == 'show'
		puts my_ship
	end

	# TODO: get the values from the hashes

	# who wins?
	puts "You have #{my_value}, computer has #{cpu_value}"
	if my_ship[item] > cpu_ship[item]
		puts 'Player wins'
	else
		puts 'Computer wins'
	end
end

