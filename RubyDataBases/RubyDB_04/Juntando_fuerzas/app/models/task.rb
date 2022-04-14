class Task < ActiveRecord::Base
  def index
    Task.all
  end

  def create(user_values)
    task = Task.new
    task.task_name = user_values[0]
    task.name = user_values[1]
    task.save
  end

  def delete(user_number)
    if Task.exists?(id: user_number) == false
      puts  "You cant delete a task that doesn't esist"
    else
      user = Task.find_by(id: user_number)
      user.destroy
      user.save
    end
  end


  def update(number)
    task = Task.find_by(id: number)
    if Task.exists?(id: number) == false
      puts "You cant complete a task that doesent exists"
    else
      task.status = 1
      task.save
    end
  end

end
