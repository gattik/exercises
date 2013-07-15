class DNA
  def initialize
    @letters = ("A".."Z").to_a
    @letters.delete("A")
    @letters.delete("C")
    @letters.delete("G")
    @letters.delete("T")
    @n_letters = ["A", "C", "G", "T"]
  end

  def start
    puts "Are you:"
    puts "1) Counting"
    puts "2) Hamming"
    choice = gets.chomp.to_i
    if choice == 1
      counting
    elsif choice == 2
      hamming
    else
      "Invalid input, try again."
    end
  end

  def counting
    puts "Enter a DNA string."
    @question = gets.chomp.upcase
    valid_test_1
  end

  def hamming
    counting
    puts "Enter a second DNA string for comparison."
    @question2 = gets.chomp.upcase
    valid_test_2
  end

  def valid_test_1
    @question = @question.split("")
    if @question.any? { |l| @letters.include? l }
      puts "You patient is impossibly sick, try again."
      start
    else
      dna_letters
    end
  end

  def valid_test_2
    @question2 = @question2.split("")
    if @question.any? { |l| @letters.include? l } || @question.any? { |l| @letters.include? l }
      puts "You patient is impossibly sick, try again."
      start
    else
      dna_compare
    end
  end

  def dna_letters
    a_times = Hash.new(0)
    @question.each do |a|
      a_times[a] += 1
    end
    a_times.each do |l, v|
      puts "#{l}: #{v}."
    end
  end

  def dna_compare
    i = 0
    while @question.length>i do
      if @question[i] == @question2[i]
      puts "#{@question[i]}, #{@question2[i]}"
    else
      puts "#{@question[i]}, #{@question2[i]} <<<<<<!"
    end     
      i = i + 1
    end
  end

end

hi = DNA.new
hi.start
