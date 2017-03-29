require 'pry'
require 'active_support/all'
require_relative '../../../lib/input_number.rb'

module ExerciseService
  include InputNumber
  attr_accessor :name, :mentor, :team, :github

  def exercise_01
    input_attribute
    create_info_file
  end

  def exercise_02
    puts "Input your info file path: "
    @path = gets.chomp
    input_report
  end

  def exercise_03
    begin
      puts "Enter param 1: "
      param1 = gets.chomp.to_i
      raise "Please enter a number" if param1 == 0
      puts "Enter param 2: "
      param2 = gets.chomp.to_i
      raise "Please enter a number" if param2 == 0
      binding.pry
      puts "add(param1, param2) = #{param1+param2}"
    rescue Exception => e
      puts e.message
    end
  end

  def exercise_04
    while true do
      input
      if @num%100 > 0
        centuryFromYear = @num/100 +1
      else
        centuryFromYear = @num/100
      end
      puts "centuryFromYear(#{@num}): #{centuryFromYear}"
    end
  end

  def input_attribute
    puts "Input your name: "
    @name = gets.chomp
    puts "Input your mentor"
    @mentor = gets.chomp
    puts "Input your team"
    @team = gets.chomp
    puts "Input your link github"
    @github = gets.chomp
  end

  def create_info_file
    f = File.new("#{name}.txt", "w")
    File.open(f, 'w+') do |line|
      self.instance_variables.each_with_index do |attribute, index|
        line.write(set_file_template[index] + (self.instance_variable_get attribute) + "\n")
      end
    end
  end

  def set_file_template
    ["My name is ", "My team is ", "My mentor is ", "My link github is "]
  end

  def read_file
    @report_file = File.new("#{Time.now.to_s}.txt", "w")
    f = File.open @path
    f.each do |line|
      @report_file.write(line + "\n")
    end
  end

  def input_report
    read_file
    line = 1
    while true do
      write_report_to_file line
      line += 1
      select = gets.chomp
      case select
      when 'Y' && 'y'
      when 'N' && 'n'
        puts "Please check your input file in this path: #{@path}"
        break
      else
        puts "Please enter Y(yes) or N(no)"
        return
      end
    end
  end

  def write_report_to_file line
    title = "Please input your line #{line.ordinalize}: "
    puts title
    report_string = gets.chomp
    File.open(@report_file, 'w+') do |line|
      line.write(title + "\n")
      line.write(report_string + "\n")
    end
    puts "Do you want to input #{(line+1).ordinalize}? (Y/N)"
  end
end
