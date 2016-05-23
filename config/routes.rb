Rails.application.routes.draw do
  
  
  root 'metis#home'
  get 'signup' => 'users#new'
  get 'metis/home'
  get 'help' => 'metis#help'
  
  get 'login' => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  
  resources :users
  
  resources :conversations do
    resources :messages
  end
  
  
end
