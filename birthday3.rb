require 'highline/import'
require 'date'

class HappyBirthday

  attr_reader :today
  def initialize(today = Date.today)
    @today = today
  end

  def self.month
    month = ask("Please enter your month of birth.")
    if month.is_a? Integer
      puts "You were born in #{Date::MONTHNAMES[month]}."
      month = month.to_i
    elsif Date::MONTHNAMES.include? month.capitalize
      puts "You were born in #{month.capitalize}."
      month_number = Date::MONTHNAMES.rindex(month.capitalize)
      month = month_number.to_i
    end
    month
end

  def get_date
  	year = ask("Please enter your 4-digit year of birth.").to_i
    m_month = HappyBirthday.month
    day = ask("Please enter your 2-digit day of birth.").to_i
    puts "You were born #{m_month}/#{day}/#{year}."
    dob = Date.civil(year.to_i, m_month.to_i, day.to_i)
    today = Date.today
      if dob >= today
        puts "Try again"
      end

    age = ((today - dob)/365.25).to_i
    age.times do
      puts "SPANK"
    end
  end

end


hi = HappyBirthday.new
hi.get_date