require 'pry'
class Ex3

  def input_attribute
    puts "Enter param 1: "
    param1 = gets.chomp.to_i
    while param1 == 0
      puts "Please enter an integer number:"
      param1 = gets.chomp.to_i
      if param1 != 0
        break
      end
    end
    puts "Enter param 2: "
    param2 = gets.chomp.to_i
    while param2 == 0
      puts "Please enter an integer number:"
      param2 = gets.chomp.to_i
      if param2 != 0
        break
      end
    end
    puts "add(param1, param2) = #{param1+param2}"
  end

  ex3 = Ex3.new.input_attribute
end
