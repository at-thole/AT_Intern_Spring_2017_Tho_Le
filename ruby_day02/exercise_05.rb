require 'pry'
class Ex6

  def input
    fi1 = 1
    fi2 = 1
    fi = 2
    puts "Enter a number :"
    num = gets.chomp.to_i
    if num == 1 || num == 2
      puts "fibonacci"
      return
    end
    while (fi1+fi2 < num) do
      fi = fi1 + fi2
      fi2 = fi1
      fi1 = fi
    end
    if fi == num
      puts "fibonacci"
    else
      puts "not fibonacci"
    end
  end

  Ex6.new.input
end
