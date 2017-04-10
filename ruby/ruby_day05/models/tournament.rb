class Tournament < ActiveRecord::Base
  has_many :groups, dependent: :destroy
  has_many :team_groups, through: :groups
  validates :name, presence: true, uniqueness: {case_sensitive: true}
end
