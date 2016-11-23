Rails.application.routes.draw do
  # This route sends requests to our naked
  # url to the home action in the users controller
  root to: 'users#home'

  # These routes will be for signup.
  # The first renders a form in the browse,
  # the second will receive the form and
  # create a user in our database using the
  # data given to us by the user.
  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  get '/profile' => 'users#show'
  get '/users' => 'users#index'

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  get "/secret_gif", to: "secrets#show"
end
