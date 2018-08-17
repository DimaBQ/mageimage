Rails.application.routes.draw do
  devise_for :users
  resources :users
  root 'users#show'
  #get 'persons/profile'# as: 'user_root'
  
end
