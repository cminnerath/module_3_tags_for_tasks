Rails.application.routes.draw do
  get 'tasks/new' => 'tasks#new', as: :new_task
  get 'tasks' => 'tasks#index'
  post 'tasks' => 'tasks#create'
  get 'tasks/:id' => 'tasks#show', as: :task
  resources :users
  root "main#index"
  get "login" => "session#create"
  post "login" => "sessions#create"
  post "logout" => "sessions#destroy"
  resources :tags
end
