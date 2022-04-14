class Stat < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :game
  belongs_to :answer
  belongs_to :question
  validates :correct, presence: true
end
