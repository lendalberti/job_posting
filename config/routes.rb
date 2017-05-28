Rails.application.routes.draw do
 
 resources :users
 resources :categories
 resources :statuses
 resources :jobs

 root 'jobs#index' 

 get '/home',     to: 'jobs#index' 

 # resources :jobs
 # resources :users

end
