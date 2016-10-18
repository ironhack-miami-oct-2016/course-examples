# GOOD
# class SuperUser

# BAD
# class Super_User
# class super_user

  #    ------------------------------
  #    |                            |
class User                       #  |
  def login                      #  |
    puts "User is logging in"    #  |
  end                            #  |
                                 #  |
  def greet                      #  |
    puts "Hello"                 #  |
  end                            #  |
end                              #  |
                                 #  |
  #            ----------------------
  #            |
first_user = User.new

first_user.login
first_user.greet
