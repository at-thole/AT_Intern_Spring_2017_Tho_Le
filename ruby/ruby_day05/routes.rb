require "sinatra/activerecord"
require "mysql2"
require "sinatra"
require "pry"
require 'sinatra/flash'
require_relative "models/team.rb"
require_relative "models/tournament.rb"
require_relative "models/group.rb"
require_relative "models/team_group.rb"
require_relative "models/schedule.rb"

set :database, "mysql2://root:123123@localhost:3306/football"

get "/list-teams" do
  @teams = Team.all
  erb :list_team
end

get "/tournaments" do
  @tournaments = Tournament.all
  erb :tournaments
end

post "/tournaments/add" do
  @tournament = Tournament.new name: params[:name]
  @tournament.save
  redirect request.referer
end

delete "/tournaments/delete/:id" do
  Tournament.destroy params[:id]
  redirect request.referer
end

get "/tournaments/:id/groups" do
  @tournament = Tournament.find_by id: params[:id]
  group = Group.select("id").where tournament_id: params[:id]
  @teams = Team.where.not id: (TeamGroup.select("team_id").where group_id: (group))
  erb :groups
end

post "/tournaments/:id/groups/add" do
  @group = Group.new name: params[:name], tournament_id: params[:tournament_id]
  @group.save
  redirect request.referer
end

delete "/tournaments/:id/groups/delete/:id" do
  Group.destroy params[:id]
  redirect request.referer
end

post "/tournaments/:id/groups/addTeam" do
  unless params[:team_id].blank? || params[:team_id].length != 4
    params[:team_id].each do |team|
      @team_group = TeamGroup.new group_id: params[:group_id], team_id: team
      @team_group.save
    end
    for i in 0...params[:team_id].length do
      for j in (i + 1)...params[:team_id].length do
        @schedule = Schedule.new teamA_id: params[:team_id][i], teamB_id: params[:team_id][j],
          group_id: params[:group_id]
        @schedule.save
      end
    end
  end
  redirect request.referer
end

get "/tournaments/:id/schedules" do
  @groups = Group.where tournament_id: params[:id]
  # @tournament = Tournament.find_by tournament_id: params[:id]
  erb :group_details
end

post "/tournaments/:id/schedules/add_time" do
  Schedule.update params[:schedule_id], time: params[:time]
  redirect request.referer
end

post "/tournaments/:id/schedules/add_score" do
  Schedule.update params[:schedule_id],
    score: (params[:goal_teamA] + "-" + params[:goal_teamB])
  redirect request.referer
end
