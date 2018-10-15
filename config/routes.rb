Rails.application.routes.draw do
	
  root 'pages#home'

  devise_for :users, :controllers => { :registrations => :registrations }
  resources :users, only: [:index]
  resources :friends
  resources :accounts do
    resources :friends, except: [:update]
      #get 'add_friend', :on => :collection
     # get 'delete_friend', :on => :collection
     # get "friends/remove_request" #, :on => :collection
      resources :posts
      resources :conversations, shallow: true do
        resources :messages
      end
  end 


  
end
