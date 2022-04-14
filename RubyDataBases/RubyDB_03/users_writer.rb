require 'csv'
require 'faker'
require 'date'

class UserWriter
	def initialize(file_name)	
	 	@file = file_name
	end

	def create_csv
    CSV.open(@file,"w") do |csv|
      csv << [:first_name, :last_name, :gender, :birthday, :email, :phone]
      
      50.times do 
        csv << create_user
      end  
    end
    "File Created"
  end

  def create_user
		first_name = Faker::Name.first_name
	 	last_name = Faker::Name.last_name
		gender = ["male","female"].sample
	 	birthday = Faker::Date.between(Date.new(1950,1,1),Date.new(2008,1,1))
	 	email = Faker::Internet.email
	 	phone = Faker::PhoneNumber.phone_number

		[first_name,last_name,gender,birthday,email,phone]
	end
end

UserWriter.new('users.csv').create_csv
