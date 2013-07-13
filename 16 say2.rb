class Chunks

  def start
    puts "Enter a number from 0 to 999,999,999,999."
    @question = gets.chomp.to_i
    number
  end

  def number
    if (0..999999999999).include?(@question)
      @question = @question.to_s
      if @question.length%3 == 0
        answer = @question.scan(/.{1,3}/).join(',')
        puts answer
    elsif (@question.length-1)%3 == 0
        @question.insert(0," ")
        @question.insert(0," ")
        answer = @question.scan(/.{1,3}/).join(',')
        puts answer.strip
    else (@question.length-2)%3 == 0
        @question.insert(0," ")
      answer = @question.scan(/.{1,3}/).join(',')
        puts answer.strip
      end
    else
      puts "Out of range, try again."
    end
  end

end

hi = Chunks.new
hi.start