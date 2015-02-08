require 'swapi'
require 'json'
require_relative 'models/ship'

# Let's get a list of starships first

ships_request = Swapi.get_all('starships')
all_ships = JSON.parse(ships_request)['results']

# Pick a random ship

my_ship = Ship.new(all_ships.sample)

# Take a look at what we get

puts 'Your ship is'
puts my_ship

# Get a ship for the computer

cpu_ship = Ship.new(all_ships.sample)

# Show a list of options

continue = true
while continue
	puts 'Type q to quit'
	puts 'Type show to look at your ship'
	puts my_ship.options
	item = gets.chomp
	if item == 'q'
		continue = false
		break
	elsif item == 'show'
		puts my_ship
	else
		my_value = my_ship.send(item)
		cpu_value = cpu_ship.send(item)
		puts "You have #{my_value}, computer has #{cpu_value}"
		if my_value > cpu_value
			puts 'Player wins'
		else
			puts 'Computer wins'
		end
	end

end


