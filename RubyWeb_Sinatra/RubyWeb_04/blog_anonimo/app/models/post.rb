class Post < ActiveRecord::Base
 validates :title, presence: true
 validates :content, presence: true
  # Remember to create a migration!
  has_many :relations
  has_many :tags, through: :relations
end
