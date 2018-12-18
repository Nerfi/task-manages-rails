class TasksController < ApplicationController

  #creando el method uque hara que se puedan ver todos las tasks#index
  def index
    @tasks = Task.all

  end

  def show
    # elegimos @task porque lo que queremos
    # es solamente una determinada.

    @task = Task.find(params[:id])


  end

end
