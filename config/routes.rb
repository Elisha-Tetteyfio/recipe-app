Rails.application.routes.draw do
  devise_for :users

  devise_scope  :user do
    get 'users/sign_out' => 'devise/sessions#destroy'
  end

  root 'foods#index'
   
  resources :recipe_foods
  resources :foods
  get '/foods', to: 'foods#index'

  resources :users do
    resources :recipes, only: [:index, :destroy, :new, :show]
  end
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
