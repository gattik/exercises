class Year
    def self.leap
    	puts "Enter a year to see if it's a leap year:"
    	iyear = gets.chomp.to_i
    	
        if iyear%4!=0
			puts "#{iyear} is not a leap year!"
		elsif iyear%4 == 0 && iyear%100 == 0 && iyear%400 != 0 
			puts "#{iyear} is not a leap year!"
		else
			puts "#{iyear} is a leap year!"
		end
	end
end

Year.leap