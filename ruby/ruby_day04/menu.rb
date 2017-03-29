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
    p "=============================================="
    p "1. Regex validate a password (6 character, a upercase, a lowercase, a number)"
    p "2. Corrects a given time string"
    p "3. Given two arrays of strings a1 and a2 return a sorted array r in lexicographical order of the strings of a1 which are substrings of strings of a2."
    print "Select: "
  end
end
