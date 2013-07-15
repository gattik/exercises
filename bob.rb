class Bob

  def hey
    puts "What do you have to say to Bob?"
    something = gets.chomp
    if something.empty?
      puts "Fine, be that way."
    elsif something.downcase.include? "bob"
      puts "That's my name, don't wear it out."
    elsif something.end_with?("!?") || something.end_with?("?!")
      puts "Calm down, man!"
    elsif something.upcase == something
      puts "Whoa, chill out!"
    elsif something.end_with? "?"
      puts "Sure."
    elsif something.downcase.include?("fuck") || something.downcase.include?("shit") ||
     something.downcase.include?("damn") || something.downcase.include?("meekrob") || 
     something.downcase.include?("numbnuts") || something.downcase.include?("george bush")
      puts "Take care, Swear Bear!"
    elsif something.downcase.include?("later")|| something.downcase.include?("gator")
      puts "After a while, crocodile."
    else
      puts "Yeah, whatever."
    end
  end

  def leet
    puts "What do you have to say say in 133t?"
    something = gets.chomp.to_s
    something_leet = something.gsub(/[eoai]/, 'e' => 3, 'o' => '0',
        'a' => '@', 'i' => '1')
    something_leet = something_leet.gsub /..?/, &:capitalize
    puts something_leet
  end

end

yo = Bob.new
yo.hey
yo.leet