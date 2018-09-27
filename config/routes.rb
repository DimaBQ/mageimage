Rails.application.routes.draw do
	
  root 'accounts#show'

  devise_for :users, :controllers => { :registrations => :registrations }

  resources :accounts do
    resources :posts
    resources :conversations, shallow: true do
    	resources :messages
    end
  end 

  
end
