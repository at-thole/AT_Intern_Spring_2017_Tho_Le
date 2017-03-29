require 'pry'
require_relative 'lib/mysql.rb'
require_relative 'menu.rb'

@sqladapter = FootballSQL.new
Menu.new.show_menu @sqladapter

