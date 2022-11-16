Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # # Read all
  # get 'restaurants', to: 'restaurants#index'

  # # Create
  # get 'restaurants/new', to: 'restaurants#new'
  # post 'restaurants', to: 'restaurants#create'

  # # Read one
  # get 'restaurants/:id', to: 'restaurants#show', as: :restaurant

  resources :restaurants do
    resources :reviews, only: %i[index new create]
  end
  resources :reviews, only: [:show]
end
