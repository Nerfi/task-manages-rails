Rails.application.routes.draw do
 # get 'index', to: 'tasks#index'


#lo hacemos de esta fomrma porque lo que queremos esque en el URL
#sea: www.localhost:3000/tasks
  get 'tasks', to: 'tasks#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
