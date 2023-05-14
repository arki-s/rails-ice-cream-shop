Rails.application.routes.draw do
  # root to: "pages#menus"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "menus#index"

  resources :menus, only:[:index, :new, :show, :create, :destroy] do
    resources :reviews, only: [:new, :create]
  end
  resources :reviews, only: [:destroy]
end
