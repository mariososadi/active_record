
class TasksView
	# Recuerda que la única responsabilidad de la vista es desplegar data al usuario

	def index(list)
    
   list.each do |task|
     puts "#{task.id}." + "   #{task.complete} " + "#{task.task}."
  end
	end

  def create(task)
    puts "Agregaste la tarea: \"#{task}\" a tu lista."
  end

  def delete(id)
    puts "Eliminaste la tarea: \"#{Task.find(id).task}\" de tu lista."
  end

  def update(id)
    puts "Completaste la tarea: \"#{Task.find(id).task}\" de tu lista."
  end

	def error
	end
end
