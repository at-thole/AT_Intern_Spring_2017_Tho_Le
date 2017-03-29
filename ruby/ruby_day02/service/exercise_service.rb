require 'pry'
require_relative '../../lib/input_number.rb'

module ExerciseService
  include InputNumber

  def exercise_05
    input
    fi1 = 1
    fi2 = 1
    fi = 2
    if @num == 1 || @num == 2
      puts "fibonacci"
      return
    end
    while (fi1+fi2 < @num) do
      fi = fi1 + fi2
      fi2 = fi1
      fi1 = fi
    end
    if fi == @num
      puts "fibonacci"
    else
      puts "not fibonacci"
    end
  end

  def exercise_06
    input
    if @num < 2
      puts "Not prime number"
      return
    elsif @num > 2
      if @num % 2 == 0
        puts "Not prime number"
        return
      else
        (3..Math.sqrt(@num)).each do |i|
          i += 2
          if @num%i == 0
            puts "Not prime number"
            return
          end
        end
      end
    end
    puts "Prime number"
  end

  def exercise_07
    input
    sum =0
    for x in (1..@num/2)
      sum += x if @num % x == 0
    end
    return sum == @num ? puts("#{@num} is perfect number") : puts("#{@num} is not perfect number")
  end
end
