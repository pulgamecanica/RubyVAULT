class User < ActiveRecord::Base
  has_many :games
  has_many :decks, through: :games
end

class Game < ActiveRecord::Base
  belongs_to :user
  belongs_to :deck
  has_many :stats
end

class Deck < ActiveRecord::Base
  has_many :games
  has_many :questions
  has_many :users, through: :games
end

class Question <ActiveRecord::Base
  has_many :answers
  has_many :stats
  belongs_to :deck
end

class Answer <ActiveRecord::Base
  belongs_to :question
  has_many :stats
end

class Stat <ActiveRecord::Base
  belongs_to :game
  belongs_to :answer
  belongs_to :question
end 



