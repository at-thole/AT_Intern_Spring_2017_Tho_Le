require_relative 'service/football_service.rb'
require_relative 'lib/mysql.rb'

class Menu
  include FootballService

  def show_menu sqladapter
    begin
      main_menu
      num_case = gets.chomp.to_i
      raise "Please enter a number to select" if num_case == 0
      case num_case
      when 1
        input sqladapter
      when 2
        create_group sqladapter
      when 3
        create_schedule sqladapter
      when 4
        input_time_match sqladapter
      when 5
        input_score_match sqladapter
      else
      end
    rescue Exception => e
      puts e.message
      retry
    end
  end

  def main_menu
    puts "=================="
    puts "What do you want ?"
    puts "1. Input number of team, name, seed"
    puts "2. Create groups"
    puts "3. Create schedule"
    puts "4. Input time match"
    puts "5. Input score match"
    print "Select: "
  end
end
