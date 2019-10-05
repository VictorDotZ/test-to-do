class TodosController < ApplicationController
  def index
    @projects = Project.includes(:todos)
    @todo = Todo.new
  end

  def create
    if !todo_params[:project_id].empty?
      @todo = Todo.new({
        :text => todo_params[:text],
        :project => Project.find(todo_params[:project_id])
        })
      if (todo_params[:text] != "")
        @todo.save
      end
    end
    redirect_to root_path
  end

  def update
    @todo = Todo.find(params[:todo_id])
    if @todo.isCompleted != true
      @todo.isCompleted = true
    else
      @todo.isCompleted = false
    end
    @todo.save
  end

  private def todo_params
    params.require(:todo).permit(:text, :project_id)
  end
end
