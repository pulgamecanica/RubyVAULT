require 'valid_email'
class User < ActiveRecord::Base
  has_many :games
  has_many :decks, through: :games
    # ej. User.authenticate('fernando@codea.mx', 'qwerty')
  validates :name, presence: true
  validates :password, presence: true
  validates :email, :presence => true, :email => true
  
  def self.authenticate(email, password)
    # si el email y el password corresponden a un usuario valido, regresa el usuario
    # de otra manera regresa nil
    user_confirm = User.find_by(email: email)
    if user_confirm.password == password
      return true
    else
      return false 
    end
  end
end



