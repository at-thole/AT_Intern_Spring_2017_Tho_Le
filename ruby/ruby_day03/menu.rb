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
          exercise_01
        when 2
          exercise_02
        else
          raise "Please enter a number from 1-2"
        end
      rescue Exception => e
        puts e.message
        retry
      end
    end
  end

  def show_menu
    p "=============================================="
    p "1. Function that computes the series starting from 0 and ending until the given number following the sequence"
    p "2. Perfect squares. A perfect square is defined as a whole number that, when square rooted, is a whole number."
    print "Select: "
  end
end
