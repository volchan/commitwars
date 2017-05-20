class Team
  include ActiveModel::Model
  attr_accessor :username, :repository
  validates :username, :repository, presence: true
end
