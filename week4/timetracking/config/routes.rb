Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get("/", { :to => "site#home" })
  # get("/", { to: "site#home" })
  # get "/", { to: "site#home" }

  get "/", to: "site#home"
    # app/views/site/home.html.erb

  get "/contact", to: "site#contact"
    # app/views/site/contact.html.erb

  get "/say_name/:name", to: "site#say_name"


  get "/calculator", to: "calculator#add_form"
  post "/calculate", to: "calculator#process_addition"
    # <form method="post" action="/calculate">

  get "/projects", to: "projects#index"

  get "/projects/new", to: "projects#new"
    #                                            project_path
    #                                               |
  get "/projects/:id", to: "projects#show", as: "project"

  get "/projects/:project_id/time_entries", to: "time_entries#index", as: "project_time_entries"
end
