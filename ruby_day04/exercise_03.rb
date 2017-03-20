require 'pry'
class Ex3
  def main
    a1 = ["arp", "live", "strong"]
    a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
    array =  a2.map {|a| a1.detect{|i| a.include? i}}
    p array.uniq.sort
  end
  Ex3.new.main
end
