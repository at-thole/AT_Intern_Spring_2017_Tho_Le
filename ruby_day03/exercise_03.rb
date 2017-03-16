require 'pry'
class Ex1
  def main
    puts "Enter a number begin :"
    number_start = gets.chomp.to_i
    puts "Enter a number end :"
    number_end = gets.chomp.to_i
    range = (number_start..number_end).to_a
    range.collect{|i| puts  i*i if range.include?("#{i*i}".to_i)}
  end
  Ex1.new.main
end
