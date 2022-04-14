class Tag < ActiveRecord::Base
  validates :name, presence: true
  # Remember to create a migration!
  has_many :relations
  has_many :posts, through: :relations
end

