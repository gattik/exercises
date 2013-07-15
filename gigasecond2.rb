require 'highline/import'
require 'date'

class Giga

  attr_reader :today
  def initialize(today = Date.today)
    @today = today
  end

  def get_date
  	year = ask("Please enter your 4-digit year of birth.").to_i
    month = ask("Please enter your 2-digit month of birth.").to_i
    day = ask("Please enter your 2-digit day of birth.").to_i
    puts "You were born #{m_month}/#{day}/#{year}."
    valid_date
  end

  def valid_date
    @dob = Date.civil(year.to_i, m_month.to_i, day.to_i)
    today = Date.today
    billion
  end

  def billion
    billion_seconds_in_years = @dob + Rational(1000000000, 86400)
    if billion_seconds_in_years>@today
      puts "You will be one billion seconds old on about #{billion_seconds_in_years}"
    else billion_seconds_in_years<=@today
      puts "You were one billion seconds old on about #{billion_seconds_in_years}"
    end
  end

end

yo = Giga.new
yo.get_date