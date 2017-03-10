require 'pry'
class Ex4

  def input_attribute
    while true do
      puts "Enter a year : "
      year = gets.chomp.to_i
      if year%100 > 0
        centuryFromYear = year/100 +1
      else
        centuryFromYear = year/100
      end
      puts "centuryFromYear(#{year}): #{centuryFromYear}"
    end
  end

  ex4 = Ex4.new.input_attribute
end
