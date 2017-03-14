require 'mysql2'
require "pry"

begin
  client = Mysql2::Client.new(:host => 'localhost', :database => 'football', :username => "root", password: 123123)
  puts "Enter name football"
  name_football = gets.chomp
  i=0
  while i<5  do
    i+=1
    client.query("INSERT INTO football_names(name_football) VALUES ('#{name_football}#{i}')")
  end
  until i>9 do
    i+=1
    client.query("INSERT INTO football_names(name_football) VALUES ('#{name_football}#{i}')")
  end
  for x in 0..7
    i+=1
    client.query("INSERT INTO football_names(name_football) VALUES ('#{name_football}#{i}')")
  end
rescue Mysql2::Error => e
  puts e.errno
  puts e.error
ensure
  client.close if client
end
