Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "main#home_page"

  resources :orders, only: [:new, :create, :show] do
    resources :pizzas, only: [:create]
  end

  resources :pizzas, only: [:show] do
    resources :toppings, only: [:create]
  end
end
