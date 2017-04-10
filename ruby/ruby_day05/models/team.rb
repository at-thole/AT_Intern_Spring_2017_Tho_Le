class Team < ActiveRecord::Base
  has_many :team_groups, dependent: :destroy, foreign_key: "team_id"
  belongs_to :group
end
