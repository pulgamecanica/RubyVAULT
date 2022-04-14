class TasksController
  def initialize
    @view = TasksView.new
    @model = Task.new
    options(1)
  end   
  def options(option)
    case option
    when 1  
      @view.index(@model.index) 
    when 2
      @model.create(@view.create)
    when 3
      @model.delete(@view.delete)
    else
      puts "Nothing to do here"
      exit
    end
    option = @view.menu
    options(option)
  end
end