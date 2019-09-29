class TodosController < ApplicationController
  def index
    @projects = Project.all
    @todo = Todo.new
  end

  def create
    @todo = Todo.new({"text" => params[:todo][:text], "project" => Project.find(params[:todo][:project].to_i)})
    if (params[:todo][:text] != "")
      @todo.save
    end
    redirect_to root_path
  end

  def update
  end
end
