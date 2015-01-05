require 'swapi'
require 'json'

# Let's get a list of starships first

ships_request = Swapi.get_all('starships')
all_ships = JSON.parse(ships_request)['results']

# Pick a random ship

my_ship = all_ships.sample

# Take a look at what we get

puts my_ship

# Get a ship for the computer

cpu_ship = all_ships.sample

# Show a list of options

while true
	puts my_ship.keys
	item = gets.chomp
	my_value = my_ship[item]
	cpu_value = cpu_ship[item]
	puts "You have #{my_value}, computer has #{cpu_value}"
	if my_ship[item] > cpu_ship[item]
		puts 'Player wins'
	else
		puts 'Computer wins'
	end
end

