require 'date'
require 'rspec'
require_relative '../config/application'


describe User, "#name and #age" do

  before(:all) do
    raise RuntimeError, "be sure to run 'rake db:migrate' before running these specs" unless expect(ActiveRecord::Base.connection.table_exists?(:users)).to eq(true)
    User.delete_all

    @user = User.new
    @user.assign_attributes(
      :first_name => "Cuauhtemoc",
      :last_name => "Blanco",
      :gender => 'male',
      :birthday => Date.new(1985,4,1)
    )
  end

  it "should have name and age methods" do

     [:name, :age].each { |mthd| @user.should respond_to mthd }
  end

  it "should concatenate first and last name" do
    @user.name.should == "Cuauhtemoc Blanco"
  end

  it "should be the right age" do
    now = Date.today
    age = now.year - @user.birthday.year - ((now.month > @user.birthday.month || (now.month == @user.birthday.month && now.day >= @user.birthday.day)) ? 0 : 1)
    @user.age.should == age
  end

end

describe User, "validations" do

  before(:all) do
    raise RuntimeError, "be sure to run 'rake db:migrate' before running these specs" unless expect(ActiveRecord::Base.connection.table_exists?(:users)).to eq(true)
    User.delete_all
  end

  before(:each) do
    @user = User.new
    @user.assign_attributes(
      :first_name => "Fernando",
      :last_name => "López",
      :birthday => Date.new(1990,4,2),
      :gender => 'male',
      :email => 'fer@codea.mx',
      :phone => '(456) 435-3456 x4657'
    )
  end

  it "should accept valid info" do
    @user.should be_valid
  end

  it "shouldn't accept invalid emails" do
    ["XYZ!bitnet", "@.", "a@b.c"].each do |address|
      @user.assign_attributes(:email => address)
      @user.should_not be_valid
    end
  end

  it "should accept valid emails" do
    ["jose@example.com", "info@codea.co.uk", "bugs@codea.com"].each do |address|
      @user.assign_attributes(:email => address)
      @user.should be_valid
    end
  end

  it "shouldn't accept toddlers" do
    @user.assign_attributes(:birthday => Date.today - 3.years)
    @user.should_not be_valid
  end

  it "shouldn't allow two users with the same email" do
    another_user = User.create!(
      :birthday => @user.birthday,
      :email => @user.email,
      :phone => @user.phone
    )
    @user.should_not be_valid
  end

end

describe User, "advanced validations" do

  before(:all) do
    raise RuntimeError, "be sure to run 'rake db:migrate' before running these specs" unless expect(ActiveRecord::Base.connection.table_exists?(:users)).to eq(true)
    User.delete_all
  end

  before(:each) do
    @user = User.new
    @user.assign_attributes(
      :first_name => "Fernando",
      :last_name => "López",
      :birthday => Date.new(1990,5,2),
      :gender => 'male',
      :email => 'fer@codea.mx',
      :phone => '(456) 435-3456 x4657'
    )
  end

  it "should accept valid info" do
    @user.should be_valid
  end

  it "shouldn't accept invalid phone numbers" do
    @user.assign_attributes(:phone => '123-5768')
    @user.should_not be_valid
  end

end
