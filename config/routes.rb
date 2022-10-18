Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  resources :recipe_foods
  resources :foods
  get '/users', to: 'users#new'

  resources :recipes, only: [:index, :destroy, :new, :show]
  resources :users
  root 'foods#new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
