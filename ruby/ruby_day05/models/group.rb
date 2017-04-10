class Group < ActiveRecord::Base
  has_many :team_groups, dependent: :destroy, foreign_key: "group_id"
  has_many :teams, through: :team_groups, foreign_key: "group_id"
  has_many :schedules, dependent: :destroy, foreign_key: "group_id"
  has_one :tournament, foreign_key: "group_id"
  belongs_to :tournament, foreign_key: "tournament_id"
end
