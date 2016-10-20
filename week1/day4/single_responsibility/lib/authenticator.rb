# lib/authenticator.rb

class Authenticator
  def valid_credentials?(entered_username, entered_password)
    if entered_username == "nizar" && entered_password == "whatever"
      true
    else
      false
    end
  end
end
