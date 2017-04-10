class Schedule < ActiveRecord::Base
  belongs_to :group
  belongs_to :teamA, class_name: Team.name, foreign_key: "teamA_id"
  belongs_to :teamB, class_name: Team.name, foreign_key: "teamB_id"
end
