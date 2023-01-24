Rails.application.routes.draw do
  resources :tweets, only:[:index, :create, :destroy]
  resources :users, only: [:index, :create]
end
