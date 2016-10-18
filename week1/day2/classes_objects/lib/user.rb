# lib/user.rb

# name
# email
# age
# ethnicity
# gender


class User
  def initialize(name, email, age, ethnicity, gender)
    @name = name
    @email = email
    @age = age
    @ethnicity = ethnicity
    @gender = gender
  end

  def login
    puts "#{@name} is logging in with email #{@email}."
  end

  def greet
    puts "Hello, my name is #{@name}."
    puts "I am #{@age} years old."
  end
end


# GOOD
# class SuperUser

# BAD
# class Super_User
# class super_user
