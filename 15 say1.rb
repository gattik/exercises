class Say
  def initialize
    @s_tens = ["twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
    @to_nineteen = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight",
    "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen",
    "seventeen", "eighteen", "nineteen"]
  end

  def start
    puts "Enter a number from 0 to 99."
    @question = gets.chomp.to_i
  end

  def unique_number
    start
    if (0..19).include?(@question)
      answer = @to_nineteen[@question]
      puts "#{@question} is #{answer} in English."
    else
      number_strings
    end
  end

  def number_strings
    @s_question = @question.to_s
    @s_question = @s_question.split("")
      tens = @s_question[0]
      ones = @s_question[1]
      if ones.to_i == 0
        answer = "#{@s_tens[tens.to_i-2]}"
      else
        answer = "#{@s_tens[tens.to_i-2]}-#{@to_nineteen[ones.to_i]}"
      end
      puts "#{@question} is #{answer} in English."
  end

end

go = Say.new
go.unique_number
