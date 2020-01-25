Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # READ all tasks
  get    'tasks',          to: 'tasks#index'

  # CREATE a task
  get    'tasks/new',      to: 'tasks#new', as: 'new_task'
  post   'tasks',          to: 'tasks#create'

  # READ one task
  get    'tasks/:id',      to: 'tasks#show', as: 'task'

  # UPDATE one task
  get    'tasks/:id/edit', to: 'tasks#edit', as: 'edit'
  patch  'tasks/:id',      to: 'tasks#update'

  # DELETE a task
  delete 'tasks/:id',      to: 'tasks#destroy'
end
