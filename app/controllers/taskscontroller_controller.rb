class TaskcontrollerController < ApplicationController

  #creando el method uque hara que se puedan ver todos las tasks#index
  def index
    @tasks = Task.all

  end
end
