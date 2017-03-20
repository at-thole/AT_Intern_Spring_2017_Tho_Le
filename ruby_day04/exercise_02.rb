require 'pry'
class Ex2
  def main
    while true do
      begin
        puts "Enter time:"
        time = gets.chomp
        raise if time == nil || time.to_s.empty?
        arrTime = time.split(":").to_a
        seconds = arrTime[2].to_i
        minutes = arrTime[1].to_i
        hours = arrTime[0].to_i
        if seconds >= 60
          seconds -= 60
          minutes+=1
          seconds = "0#{seconds}" if seconds < 10
        end
        if minutes >= 60
          minutes -= 60
          minutes = "0#{minutes}" if minutes < 10
          if hours <= 22
            hours = arrTime[arrTime.length.to_i - 3].to_i + 1
          elsif hours == 23
            hours = "00"
          end
        end
        puts "#{hours}:#{minutes}:#{seconds}"
      rescue Exception => e
        puts "Null or Empty"
        retry
      end
    end
  end
  Ex2.new.main
end
