class ProjectsController < ApplicationController
  def index
  end

  def list
    render 'list'
  end

  def new
    # @project = Project.new(params.require(:project).permit(:title, :text))
    # @project.save
    render 'new'
  end

  def login
    render 'login'
  end

  def register
    render 'register'
  end

  def added
    render 'added'
  end
end
