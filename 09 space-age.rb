require 'date'

class Seconds
 	def initialize
 		@s_rep = ["Earth", "Mercury", "Venus","Mars", "Jupiter", "Saturn",
		"Uranus", "Neptune"]
		@planets = [31557600, 760064796, 1941423552, 5935416523, 37435581691,
	92929242600,265137014600, 520041856000]
	end

	def print_q
		puts "Please select an option below."
		puts "1) Your age on Earth."
		puts "2) Your age on Mercury."
		puts "3) Your age on Venus."
		puts "4) Your age on Mars."
		puts "5) Your age on Jupiter."
		puts "6) Your age on Saturn."
		puts "7) Your age on Uranus."
		puts "8) Your age on Neptune."
		puts "9) I don't knowy my age in seconds!"
		@rep = gets.chomp.to_i
	end

	def number_test
		print_q
		if (1..8).include?(@rep)
			age
		elsif @rep == 9
			seconds_age
			puts "You are #{seconds_age} seconds old."
			age
		else
			puts "Try again."
			age
		end
	end

	def age
		puts "Your age in seconds?"
		seconds = gets.chomp.to_i
		years = (seconds* 1.0)/(@planets[@rep-1])
		puts "You are #{years} years old on #{@s_rep[@rep-1]}."
	end

	def seconds_age
		puts "Your age in years?"
		years = gets.chomp.to_i
		seconds = years*31557600
		puts "You are #{seconds} seconds old."
		answer = Seconds.new
	end

end

hi = Seconds.new
hi.number_test
