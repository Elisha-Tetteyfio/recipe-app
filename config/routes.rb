Rails.application.routes.draw do
  resources :foods
  get '/users', to: 'users#new'

  resources :recipes, only: [:index, :destroy, :new, :show]
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
