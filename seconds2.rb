# require 'date'

# class Seconds

# 	def age
# 		years = seconds/31557600
# 		puts "You are #{years} years old."
# 	end
# end

# hi = Seconds.new
# hi.age
require 'date'

class Seconds

	def question
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
		rep = gets.chomp.to_i
		if rep == 1
			answer = Seconds.new
			puts "#{answer.earth_age} on Earth."
		end
		if rep == 2
			answer = Seconds.new
			puts "#{answer.mercury_age} on Mercury."
		end
		if rep == 3
			answer = Seconds.new
			puts "#{answer.venus_age} on Venus."
		end
		if rep == 4
			answer = Seconds.new
			puts "#{answer.mars_age} on Mars."
		end
		if rep == 5
			answer = Seconds.new
			puts "#{answer.jupiter_age} on Jupiter."
		end
		if rep == 6
			answer = Seconds.new
			puts "#{answer.saturn_age} on Saturn."
		end
		if rep == 7
			answer = Seconds.new
			puts "#{answer.uranus_age} on Uranus."
		end
		if rep == 8
			answer = Seconds.new
			puts "#{answer.neptune_age} on Neptune."
		end
		if rep == 9
			answer = Seconds.new
			puts "#{answer.seconds_age}"
			answer = answer.question
		end
end
	def age
		planets[0,31557600,7600544,19414149,59354033,374355659,
		929292363,2651370019,5200418560]
		puts "Your age in seconds?"
		seconds = gets.chomp.to_i
		years = seconds/planets[rep].to_i
		puts "You are #{years} years old"
	end
	def seconds_age
		puts "Your age in years?"
		years = gets.chomp.to_i
		seconds = years*31557600
		puts "You are #{seconds} seconds old."
	end
end

hi = Seconds.new
hi.question