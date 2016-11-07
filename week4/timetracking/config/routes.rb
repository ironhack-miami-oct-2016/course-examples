Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get("/", { :to => "site#home" })
  # get("/", { to: "site#home" })
  # get "/", { to: "site#home" }

  get "/", to: "site#home"
    # app/views/site/home.html.erb

  get "/contact", to: "site#contact"
    # app/views/site/contact.html.erb

end
