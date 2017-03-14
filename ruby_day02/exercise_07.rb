require 'pry'
class Ex6

  def input
    sum =0
    puts "Enter a number :"
    number = gets.chomp.to_i
    for x in (1..number/2)
      sum += x if number % x == 0
    end
    return sum == number ? puts("#{number} is perfect number") : puts("#{number} is not perfect number")
  end

  Ex6.new.input
end
