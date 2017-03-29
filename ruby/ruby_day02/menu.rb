require_relative 'service/exercise_service.rb'

class Menu
  include ExerciseService

  def menu_select
    while true do
      begin
        show_menu
        num_case = gets.chomp.to_i
        raise "Please enter a number to select" if num_case == 0
        case num_case
        when 1
          exercise_05
        when 2
          exercise_06
        when 3
          exercise_07
        else
          raise "Please enter a number from 1-3"
        end
      rescue Exception => e
        puts e.message
        retry
      end
    end
  end

  def show_menu
    puts "=================================="
    puts "1. Write a function to print nth Fibonacci number"
    puts "2. Write a function to check a prime number"
    puts "3. Write a function to check a  perfect number"
    print "Select: "
  end
end
