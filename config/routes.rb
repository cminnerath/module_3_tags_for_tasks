Rails.application.routes.draw do
  # get 'tasks/new' => 'tasks#new', as: :new_task
  resources :tasks
end
