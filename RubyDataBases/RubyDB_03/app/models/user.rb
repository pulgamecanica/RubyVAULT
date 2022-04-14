class User < ActiveRecord::Base
# Implementa los métodos y validaciones de tu modelo aquí. 
  def name 
    "#{first_name} #{last_name}"
  end
  def age 
     now = Date.today
      age = now.year - birthday.year - ((now.month > birthday.month || (now.month == birthday.month && now.day >= birthday.day)) ? 0 : 1)
  end
   validates :email, format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/}
   validates :email, uniqueness: true
   validates_numericality_of :age, :only_integer => true, :greater_than_or_equal_to => 18

  def before_validation
     phone = phone.gsub(/[0-9]/, "")
  end   

  validates_length_of :phone, :minimum => 10
end
