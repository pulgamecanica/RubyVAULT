class Question < ActiveRecord::Base
  # Remember to create a migration!
  has_many :answers
  has_many :stats
  belongs_to :deck
  validates :question, presence: true
end
