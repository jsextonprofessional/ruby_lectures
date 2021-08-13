Rails.application.routes.draw do
  get 'user2s/new' => 'user2s#new'
  post 'user2s' => 'user2s#create'

end
