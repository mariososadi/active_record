class TasksController


  def initialize(args)
    @view = TasksView.new
    @args = args
    actions
  end

  def actions
    command = @args.slice!(0)
    task = Array.new(1,@args.join(" ")).join 
    
    case command
    when "index" then self.index
    when "add" then self.add(task)
    when "delete" then self.delete(task)
    when "complete" then self.complete(task)
    end

  end

  def index
    list = Task.all
    @view.index(list)
  end

  def add(task)
    Task.create(task: task)
    @view.create(task)
  end

  def delete(task)
    id = task
    @view.delete(id)
    Task.delete(id)
  end

  def complete(task)
    id = task
    @view.update(id)
    Task.update(id, complete: "[x]")
  end

end




