Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "landing_pages#casa"

  get "/pies", { to: "pies#index" }

  get "/pies/new", { to: "pies#new" }
  post "/pies", { to: "pies#create" }
end
