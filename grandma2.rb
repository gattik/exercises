class Talk

  def self.grandma
    puts "What do you have to say to Grandma?"
    something = gets.chomp
    if something == "BYE"
      puts "SO LONG!" 
    elsif something.upcase == something
      puts "NO, NOT SINCE 19#{30 + rand(20)}!"
      Talk.grandma
    else
      puts "HUH?! SPEAK UP, SONNY!"
      Talk.grandma
    end
  end

end
Talk.grandma