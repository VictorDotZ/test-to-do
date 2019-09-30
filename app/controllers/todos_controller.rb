class TodosController < ApplicationController
  def index
    @projects = Project.all
    @todo = Todo.new
  end

  def create
    @todo = Todo.new({
      :text => todo_params[:text],
      :project => Project.find(todo_params[:project_id])
      })
    if (todo_params[:text] != "")
      @todo.save
    end
    redirect_to root_path
  end

  def update
  end

  private def todo_params
    params.require(:todo).permit(:text, :project_id)
  end
end
