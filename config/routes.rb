Rails.application.routes.draw do
  
  get '/home', to: 'pages#home'
  
  root 'pages#home'
  
  #get '/recipes', to: 'recipes#index'
  #get '/recipes', to: 'recipes#new', as: 'new_recipe'
  #post '/recipes', to: 'recipes#create'
  #get '/recipes', to: 'recipes#edit', as: 'edit_recipe'
  #patch '/recipes/:id', to: 'recipes#update'
  #get '/recipes/:id', to: 'recipes#show', as: 'recipe'
  #delete '/recipes/:id', to: 'recipes#destroy'
  
  resources :recipes do
    member do
      post 'like'
    end
  end
  
  
end
