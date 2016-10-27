require("sinatra")

require_relative("lib/password_checker.rb")


get "/" do
  erb(:form)
end

post "/login" do
  email = params[:email]
  password = params[:password]

  checker = PasswordChecker.new
  if checker.check_password(email, password) == false
    redirect to("/")
  else
    redirect to("/congratulations")
  end
end

get "/congratulations" do
  erb(:congratulations)
end
