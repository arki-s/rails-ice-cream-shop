Rails.application.routes.draw do
  root to: "menus#index"

  resources :menus, only:[:index, :new, :show, :create, :destroy] do
    resources :reviews, only: [:create]
  end
  resources :reviews, only: [:destroy]
end
