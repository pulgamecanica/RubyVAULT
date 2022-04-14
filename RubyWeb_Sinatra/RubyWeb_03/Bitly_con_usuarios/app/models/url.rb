class Url < ActiveRecord::Base
  belongs_to :user
  validates :original, presence: true
  validates :visits, presence: true
  validates :original, format: { with: /(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?/, message: "formato de URL incorrecto" }
  
  before_create :short_url

  def short_url
    self.short = (0..8).map {[*"A".."Z", * 0..9].sample}.join
  end
end 