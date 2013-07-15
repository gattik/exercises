class Shape

	def initialize
		@shapes = ["none", "henagon", "digon", "triangle", "quadrilateral", "pentagon",
			"hexagon", "heptagon", "octagon", "nonagon", "decagon", "hendecagon",
			"dodecagon", "tridecagon", "tetradecagon", "pentadecagon", "hexadecagon",
			"heptadecagon", "octadecagon", "icosagon"]
	end

	def start
		puts "How many sides does your shape have? (Input between 3 and 20)."
		@answer = gets.chomp.to_i
		valid_test
	end

	def valid_test
		if @answer == 3
			triangle
		elsif (4..20).include? @answer
			size
		else
			puts "Try again."
			start
		end
	end

	def triangle
		puts "Enter your three angles, hitting Enter after each number."
		side_a = gets.chomp.to_i
		side_b = gets.chomp.to_i
		side_c = gets.chomp.to_i
		t_angles = side_a + side_b + side_c
		if  t_angles != 180
			puts "Check that your numbers add up to 180."
			start
		elsif side_a == side_b && side_b == side_c
			puts "Your triangle is equilateral."
		elsif side_a == side_b || side_b == side_c || side_a || side_c
			puts "Your triangle is isosceles."
		else
			puts "Your triangle is scalene."
		end
	end

	def size
		i = 0
		@s_answer = @answer.to_s
		@s_answer = @s_answer.split("")
		@sides = Array.new
		@s_length = @sides.length
		while @answer > @s_length.to_i
			@s_answer.each do |a|
				puts "Enter a side length."
				answer2 = gets.chomp.to_i
				@sides << answer2
				@s_length = @s_length+1
		end
		end
		calculate
	end

	def calculate
		perimeter = @sides.inject { |result, element| result * element }
		puts "Your shape is a #{@shapes[@s_length]} with a perimeter of #{perimeter}."
	end

end
yo = Shape.new
yo.start
