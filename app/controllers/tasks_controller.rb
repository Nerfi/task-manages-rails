class TasksController < ApplicationController

  #creando el method uque hara que se puedan ver todos las tasks#index
  def index
    @task = Task.all

  end

end
