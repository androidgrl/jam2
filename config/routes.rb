Rails.application.routes.draw do
  root to: 'welcome#index'

  resources :songs
  resources :playlists

  resources :users, only: [:create, :new]

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  namespace :admin do
    get '/categories', to: 'categories#index'
  end
end
