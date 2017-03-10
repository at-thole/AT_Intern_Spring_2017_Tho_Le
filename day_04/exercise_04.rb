require 'pry'
class Ex4

  def input_attribute
    while true do
      puts "Enter a year : "
      year = gets.chomp.to_i
      du = year%100
      if du > 0
        centuryFromYear = year/100 +1
      else
        centuryFromYear = year/100
      end
      puts "centuryFromYear(#{year}): #{centuryFromYear}"
    end
  end

  def check_integer value
    while value == 0
      puts "Please enter an integer number:"
      value = gets.chomp.to_i
      if value != 0
        break
      end
    end
  end

  ex4 = Ex4.new.input_attribute
end
