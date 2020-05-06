Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :reviews
  #Stefani
  ##new, #create, ##edit, #update, ##delete
  
  resources :users #Isaac
  ##new #create ##index ##show ##edit #update ##delete /-/-/ ##login
  
  resources :screenplays, only: [:index, :show] 
  #Auz
  ##index, ##show

  post '/screenplays', to: 'screenplays#filter', as: 'screenplays_filter'

  put 'reviews/:id/like', to: 'reviews#like', as: 'like'

  get '/signup', to: 'users#new', as: 'signup'

  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy', as: 'logout'

  get '/reviews/:id/delete', to: 'reviews#delete', as: 'delete'
  get '/users/:id/delete', to: 'users#delete', as: 'delete_account'

  root 'application#homepage'
  ##homepage of a user
end
