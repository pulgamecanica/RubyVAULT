class Relation < ActiveRecord::Base
  validates :tag_id, presence: true
  validates :post_id, presence: true

  # Remember to create a migration!
   belongs_to :tag
  belongs_to :post
end
