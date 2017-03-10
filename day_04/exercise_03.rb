require 'pry'
class Ex3

  def input_attribute
    puts "Enter param 1: "
    param1 = gets.chomp.to_i
    check_integer param1
    puts "Enter param 2: "
    param2 = gets.chomp.to_i
    check_integer param2
    puts "add(param1, param2) = #{param1+param2}"
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

  ex3 = Ex3.new.input_attribute
end
