Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root(:to => "pokemon#index")

  get("/api(/v1)/*uri", :to => "pokemon_api#forward")
end
