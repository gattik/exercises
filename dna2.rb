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
    puts "Enter a DNA string."
    @question = gets.chomp.upcase
    valid_test
  end

  def valid_test
    # @letters.to_s
    # @letters = @letters.join
    # @question.to_s
    @question = @question.split("")
    if @question.any? { |l| @letters.include? l }
      puts "You patient is impossibly sick, try again."
      start
    else
      dna_letters
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

end

hi = DNA.new
hi.start