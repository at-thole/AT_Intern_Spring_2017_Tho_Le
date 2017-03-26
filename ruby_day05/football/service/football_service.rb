module FootballService
  def input sqladapter
    check_integer "Enter a number of team(Multiples of 4): "
    if @num % 4 == 0
      (1..@num).each do |team_number|
        puts "Enter the name of team #{team_number}: "
        name_football = gets.chomp.to_s
        puts "Is this seed team ? (y/n)"
        is_seed = gets.chomp
        if ['y','Y'].include?is_seed
          is_seed = 1
        end
        sqladapter.client.query("INSERT INTO football_names(name_football, is_seed) VALUES ('#{name_football}','#{is_seed}')")
      end
    end
  end

  def create_group sqladapter
    groups = ["A", "B", "C", "D"]
    @all_fb_team = sqladapter.client.query("SELECT id from football_names").to_a
    @all_fb_team.map do |team|
      sqladapter.client.query("UPDATE football_names SET groups = '#{groups[rand(groups.length)]}' WHERE id = '#{team["id"]}'")
      groups.map do |i|
        group_limit = sqladapter.client.query("select count(id) as count from football_names where groups = '#{i}'").to_a
        if group_limit[0]["count"] == 4
          groups.delete"#{i}"
        end
      end
    end
  end

  def create_schedule sqladapter
    group = ["A", "B", "C", "D"]
    group.map do |gr|
      team_of_group = sqladapter.client.query("select name_football from football_names where groups = '#{gr}'").to_a
      for i in 0...team_of_group.length
        for j in (i+1)...team_of_group.length
          sqladapter.client.query("INSERT INTO schedule(teamA, teamB) VALUES
            ('#{team_of_group[i]['name_football']}','#{team_of_group[j]['name_football']}')")
        end
      end
    end
  end

  def input_time_match sqladapter
    while true do
      show_schedule sqladapter
      begin
        puts "Select id football match:"
        id_match = gets.chomp.to_i
        raise "Enter a number" if id_match == 0
        print "Enter schedule for match(#{id_match}):"
        time = gets.chomp
        sqladapter.client.query("update schedule set time = '#{time}' where id = #{id_match}")
      rescue Exception => e
        puts e.message
        retry
      end
    end
  end

  def input_score_match sqladapter
    while true do
      show_schedule sqladapter
      begin
        puts "Select id football match:"
        id_match = gets.chomp.to_i
        raise "Enter a number" if id_match == 0
        print "Enter score of match(#{id_match}):"
        score = gets.chomp
        sqladapter.client.query("update schedule set score = '#{score}' where id = #{id_match}")
      rescue Exception => e
        puts e.message
        retry
      end
    end
  end

  def show_schedule sqladapter
    schedules = sqladapter.client.query("SELECT * from schedule")
    puts "|---------------------------------------------------------------------|"
    puts "|id     |    Team A    |    Team B    |      Score       |    Time    |"
    puts "|---------------------------------------------------------------------|"
    schedules.map do |schedule|
      print "|", schedule["id"].to_s.rjust(5),"        ", schedule["teamA"].to_s.rjust(4),
        "          ", schedule["teamB"].to_s.rjust(5),"           ", schedule["score"].to_s.rjust(4),
        "            ", schedule["time"].to_s.ljust(10), "| \n"
    end
    puts "|---------------------------------------------------------------------|"
  end

  def check_integer alert
    begin
      puts "#{alert}"
      @num = gets.chomp.to_i
      raise "Please enter a number" if @num == 0
      raise unless @num % 4 == 0
    rescue Exception => ex
      puts ex.message
      retry
    end
  end
end
