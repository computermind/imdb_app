Rails.application.routes.draw do
  root 'welcome#index'

  devise_for :users

  resources :movies, only: [:index, :show, :create, :destroy] do
    resources :reviews, except: [:index, :show, :new], shallow: true
  end
  
   # search movies route
  get 'search' => 'movies#search' # search_path => /search
  # movie details route
  get 'details/:imdb_id' => 'movies#details', as: 'details' # details_path(:id) => /details/:id


end
