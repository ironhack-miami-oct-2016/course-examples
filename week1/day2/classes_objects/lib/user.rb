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


  attr_accessor(:name, :email, :age, :ethnicity, :gender)

  
  # attr_reader(:name, :email, :age, :ethnicity, :gender)

  # def name
  #   @name
  # end
  #
  # def email
  #   @email
  # end
  #
  # def age
  #   @age
  # end
  #
  # def ethnicity
  #   @ethnicity
  # end
  #
  # def gender
  #   @gender
  # end


  # attr_writer(:age, :ethnicity)

  # def age=(new_age)
  #   @age = new_age
  # end
  #
  # def ethnicity=(new_ethnicity)
  #   @ethnicity = new_ethnicity
  # end
end


# GOOD
# class SuperUser

# BAD
# class Super_User
# class super_user
