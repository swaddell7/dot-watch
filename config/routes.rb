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

  root 'application#homepage'
  ##homepage of a user
end
