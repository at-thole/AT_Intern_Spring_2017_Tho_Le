require 'pry'
class Ex1
  def main
    while true do
      puts "Enter a number :"
      number = gets.chomp.to_i
      if number < 0
        puts "#{number}<0"
      elsif number == 0
        puts "#{number}=0"
      else
        sum=0
        (0..number).map do |i|
          print i == number ? "#{i}=" : "#{i}+"
          sum += i
        end
        puts "#{sum}"
      end
    end
  end

  Ex1.new.main
end
