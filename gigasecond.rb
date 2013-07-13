require 'highline/import'
require 'date'

class Giga

  attr_reader :today
  def initialize(today = Date.today)
    @today = today
  end

  def self.month
    month = ask("Please enter your month of birth.")
    if month.is_a? Integer
      month = month.to_i
    elsif Date::MONTHNAMES.include? month.capitalize
      month_number = Date::MONTHNAMES.rindex(month.capitalize)
      month = month_number.to_i
     else
     	puts "Try again."
    end
    month
end

  def get_date
  	year = ask("Please enter your 4-digit year of birth.").to_i
    m_month = Giga.month
    day = ask("Please enter your 2-digit day of birth.").to_i
    puts "You were born #{m_month}/#{day}/#{year}."
    dob = Date.civil(year.to_i, m_month.to_i, day.to_i)
    today = Date.today
      if dob >= today
        puts "Try again"
      end

    age = ((today - dob)/365.25).to_i

    end
  end

end


hi = Giga.new
hi.get_date