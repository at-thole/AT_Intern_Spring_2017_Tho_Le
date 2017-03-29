module InputNumber
  def input
    begin
      puts "Enter a number :"
      raise unless Integer @input = gets.chomp
      @num = @input.to_i
    rescue
      puts "Please enter a number"
      retry
    end
  end
end
