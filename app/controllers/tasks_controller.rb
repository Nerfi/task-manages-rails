class TasksController < ApplicationController

  #creando el method uque hara que se puedan ver todos las tasks#index
  def index
    @tasks = Task.all

  end

  def show
    @tasks = Task [params[:id].to_i]


  end

end
