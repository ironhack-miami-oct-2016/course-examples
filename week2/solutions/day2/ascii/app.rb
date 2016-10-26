require "sinatra"
require "artii"

get "/ascii/:user_word/?:optional_font?/?:easter_egg?" do
    #                        |
  user_word = params[:user_word]
  font_string = params[:optional_font]
  easter_egg = params[:easter_egg]

  # If the easter egg is found...
    # /ascii/dinosaur/special/secret

  if user_word == "dinosaur" &&
     font_string == "special" &&
     easter_egg == "secret"

      # Display views/easter_egg.erb
      #                   |
      #      --------------
      #      |
    erb :easter_egg


  # Else it's just a normal ascii route
  else
    if font_string == nil
      font_string = "doh"
    end

    the_ascii_machine = Artii::Base.new(:font => font_string)

    @ascii_art = the_ascii_machine.asciify( user_word )
    @user_word = user_word

      # Display views/ascii_word.erb
      #                   |
      #      --------------
      #      |
    erb :ascii_word
  end
end
