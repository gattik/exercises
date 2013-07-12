class Calculator

  def which_one
  	puts "What math question do you have?"
    question = gets.chomp.capitalize
    if question.match(/What is (-?\d+) plus (-?\d+)?/) do |m|
      answer = m[1].to_i + m[2].to_i
      puts "#{m[1].to_i} plus #{m[2].to_i} equals #{answer}."
      end
    elsif question.match(/What is (-?\d+) minus (-?\d+)?/) do |m|
      answer = m[1].to_i - m[2].to_i
      puts "#{m[1].to_i} minus #{m[2].to_i} equals #{answer}."
      end
    elsif question.match(/What is (-?\d+) times (-?\d+)?/) do |m|
      answer = m[1].to_i * m[2].to_i
      puts "#{m[1].to_i} times #{m[2].to_i} equals #{answer}."
      end
    else question.match(/What is (-?\d+) divided by (-?\d+)?/) do |m|
      answer = m[1].to_i / m[2].to_i
      puts "#{m[1].to_i} divided by #{m[2].to_i} equals #{answer}."
      end
    end
  end

end

hi = Calculator.new
hi.which_one