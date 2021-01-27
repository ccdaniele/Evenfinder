Rails.application.routes.draw do
  
  resources :events
  resources :activities 
  root to: 'pages#home'
  
  devise_for :user
  resources :users, :only => [:show, :edit, :update]



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
