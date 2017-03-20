require 'pry'
class Ex1
  def main
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
  Ex1.new.main
end
