Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "site#home"

  resources :users, only: [:index, :new, :create, :show, :destroy] do
    resources :products, only: [:index, :new, :create], controller: "user_products"
  end

  resources :products, only: [:index, :show, :destroy] do
    resources :bids, only: [:create]
  end

end
