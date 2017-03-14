require 'pry'
class Ex6

  def input
    puts "Enter a number :"
    n = gets.chomp.to_i

    if n < 2
      puts "Not prime number"
      return
    elsif n > 2
      if n % 2 == 0
        puts "Not prime number"
        return
      else
        (3..Math.sqrt(n)).each do |i|
          i += 2
          if n%i == 0
            puts "Not prime number"
            return
          end
        end
      end
    end
    puts "Prime number"
  end

  Ex6.new.input
end
