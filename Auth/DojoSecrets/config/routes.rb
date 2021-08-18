Rails.application.routes.draw do
  
  resources :users
  get 'sessions/new' => 'sessions#new'
  post 'sessions/' => 'sessions#create'
  get 'sessions/:id' => 'sessions#destroy'
end
