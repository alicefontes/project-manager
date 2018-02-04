class ProjectsController < ApplicationController
  def index
  end

  def list
    render 'list'
  end

  def new
    render 'new'
  end

  def login
    render 'login'
  end

  def register
    render 'register'
  end
end
