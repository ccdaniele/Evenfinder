Rails.application.routes.draw do

  
  post '/events/:id/join', to: 'events#join', as: 'join'
  post '/events/:id/leave', to: 'events#leave', as: 'leave'


  resources :events
  resources :activities 
  root to: 'pages#home'
  
  devise_for :user
  resources :users, :only => [:show, :edit, :update]
  resources :activities 


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
