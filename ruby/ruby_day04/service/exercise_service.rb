require 'pry'
require_relative '../../lib/input_number.rb'

module ExerciseService
  include InputNumber

  def exercise_01
    while true do
      begin
        puts "Enter a number"
        password = gets.chomp
        alert_error = "Please enter password six character, contains a lowercase letter, auppercase letter, a number"
        raise alert_error unless (password.match /^(?=.*[a-z])(?=.*[A-Z])[a-zA-Z0-9]{6,}$/)
      rescue Exception => e
        puts e.message
        retry
      end
    end
  end

  def exercise_02
    while true do
      begin
        puts "Enter time:"
        @time = gets.chomp
        raise "Null or empty" if @time == nil || @time.empty?
        get_time_value
        check_time
        puts "#{@hours}:#{@minutes}:#{@seconds}"
      rescue Exception => e
        puts e.message
        retry
      end
    end
  end

  def exercise_03
    a1 = ["arp", "live", "strong"]
    a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
    array =  a2.map {|a| a1.detect{|i| a.include? i}}
    p array.uniq.sort
  end

  def get_time_value
    arrTime = @time.split(":").to_a
    @seconds = arrTime[2].to_i
    @minutes = arrTime[1].to_i
    @hours = arrTime[0].to_i
  end

  def check_time
    if @seconds >= 60
      @seconds -= 60
      @minutes+=1
      @seconds = "0#{@seconds}" if @seconds < 10
    end
    if @minutes >= 60
      @minutes -= 60
      @minutes = "0#{@minutes}" if @minutes < 10
      if @hours <= 22
        @hours += 1
      elsif @hours == 23
        @hours = "00"
      end
    end
  end
end
