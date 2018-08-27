Rails.application.routes.draw do
	
  root 'accounts#show'

  devise_for :users

  resources :accounts do
    resources :posts
  end 

  
end
