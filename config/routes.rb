Rails.application.routes.draw do
 # get 'index', to: 'tasks#index'


#lo hacemos de esta fomrma porque lo que queremos esque en el URL
#sea: www.localhost:3000/tasks
  get 'tasks', to: 'tasks#index'

#adding a new task
# the 'show ' route needs to be * after** 'new' route
get 'tasks/new', to: 'tasks#new', as: :new
post 'tasks', to: "tasks#create"

  # showing one specific task
  get 'tasks/:id', to: 'tasks#show', as: :task
  #get 'restaurants/:id', to: 'restaurants#show', as: :restaurant

# adding the edit and update
get 'tasks/:id/edit', to: 'tasks#edit'
# patch is the post for updating the task
patch 'tasks/:id', to: 'tasks#update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
