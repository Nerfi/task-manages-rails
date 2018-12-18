class TasksController < ApplicationController

  #creando el method uque hara que se puedan ver todos las tasks#index
  def index
    @tasks = Task.all

  end

  def new
    @task = Task.new


  end

  def create
    @task = Task.new(task_params)
    @task.save
    #una vez  que la hemos creado queremos que irnos a 'index', para poder enseñar la nueva creacion
    #por eso usamos 'redirect_to', para que una vez creado vayamos para alla.
    redirect_to tasks_path(@task)

  end




  def show
    # elegimos @task porque lo que queremos
    # es solamente una determinada.
    @task = Task.find(params[:id])


  end

  def edit
    @task = Task.find(params[:id])

  end

  def update
    @task = Task.find(params[:id])
    # never trust user data.
    @task.update(task_params)
    # redirecting the user
    redirect_to task_path(@task)

  end

  private
  #definimos un method privado para saber que la
  #creacion viene de nuestra pagina web.
  #ALSO: *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!

    def task_params
      params.require(:task).permit(:title,:details)

    end

end
