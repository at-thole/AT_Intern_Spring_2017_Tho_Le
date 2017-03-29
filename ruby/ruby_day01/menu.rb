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
        when 3
          exercise_03
        when 4
          exercise_04
        else
          raise "Please enter a number from 1-4"
        end
      rescue Exception => e
        puts e.message
        retry
      end
    end
  end

  def show_menu
    puts "=================================="
    puts "1. Fix bug(write to file)"
    puts "2. Fix bug continue(write to file)"
    puts "3. Summation"
    puts "4. Rounding year"
    print "Select: "
  end
end
