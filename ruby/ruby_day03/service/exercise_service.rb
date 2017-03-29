require 'pry'
require_relative '../../lib/input_number.rb'

module ExerciseService
  include InputNumber

  def exercise_01
    while true do
      input
      if @num < 0
        puts "#{number}<0"
      elsif @num == 0
        puts "#{number}=0"
      else
        sum=0
        (0..@num).map do |i|
          print i == @num ? "#{i}=" : "#{i}+"
          sum += i
        end
        puts "#{sum}"
      end
    end
  end

  def exercise_02
    puts "Enter a number begin :"
    number_start = gets.chomp.to_i
    puts "Enter a number end :"
    number_end = gets.chomp.to_i
    range = (number_start..number_end).to_a
    range.collect{|i| puts  i*i if range.include?("#{i*i}".to_i)}
  end
end
