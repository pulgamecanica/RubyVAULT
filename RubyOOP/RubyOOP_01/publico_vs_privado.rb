class Employee
  attr_accessor :email
  attr_writer :deposit_account
  attr_reader :salary, :name
  
  def initialize (name, email, salary, deposit_account)
    @name = name
    @email = email
    @salary = salary
    @deposit_account = deposit_account
  end
  
  def to_s
    @deposit_account.gsub!(/[-]/, '')
    "#{@name} <email: #{@email}> acct: *****#{@deposit_account[-4,4]}"
  end
  
  def vacation_days
    coefficient * 7  
  end
  
  def bonus
    coefficient * 1000
  end

  private

  def coefficient
    coefficients = { 1 => 0...1_000, 1.2 => 1_000...2_000, 1.4 => 2_000...5_000, 1.5 => 5_000..10_000 }

    coefficients.find { |coefficient, range| range.include? @salary }.first
  end

end
employee = Employee.new('Juan Perez', 'juan@gmail.com', 1_800, '123-456-512')

employee.to_s
# => "Juan Perez <email: juan@gmail.com> acct: *****6512"

str = "The employee information is #{employee}"
puts str
# => "The employee information is Juan Perez <email: juan@gmail.com> acct: *****6512"

puts str == "The employee information is Juan Perez <email: juan@gmail.com> acct: *****6512"

puts employee.vacation_days == 8.4
puts employee.bonus == 1_200

