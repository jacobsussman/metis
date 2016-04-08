Rails.application.routes.draw do
  
  get 'users/new'
  
  root 'metis#home'
  
  get 'metis/home'
  get 'metis/help'
  
  resources :users
end
