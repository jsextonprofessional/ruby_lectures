Rails.application.routes.draw do

  get 'palaces' => 'palaces#index'
  get 'palaces/new' => 'palaces#new'
  get 'palaces/:id' => 'palaces#show'
end