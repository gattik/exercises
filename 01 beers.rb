class Beer
  def self.question
  	puts "How many bottles of beer would you like to count down?"
  	@answer = gets.chomp.to_i
  	unless @answer.is_a? Integer
  		puts "Try again."
  	end
  end
  def self.song
  	Beer.question
	@answer.downto(2) do |num|
		puts "#{num} bottles of beer on the wall"
		puts "Take it down and pass it around, #{num-1} bottles of beer on the wall."
		puts ""
		end
		puts "1 bottle of beer on the wall, 1 bottle of beer."
		puts "Take it down and pass it around, no more bottles of beer on the wall."
		puts "No more bottles of beer on the wall, no more bottles of beer."
		puts "Go to the store and buy some more, 99 bottles of beer on the wall."
	end
end

Beer.song
