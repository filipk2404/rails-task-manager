Rails.application.routes.draw do
  get 'tasks/index' , to: "tasks#index"

  post 'tasks/create', to: "tasks#create"

  get 'tasks/new' , to: "tasks#new"

  get 'tasks/edit'

  get 'tasks/show', to: "tasks#show"

  post 'tasks/update'

  get 'tasks/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
