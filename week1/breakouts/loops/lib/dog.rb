class Dog
  attr_accessor(:name, :breed, :age)

  def initialize(name, breed, age)
    @name = name
    @breed = breed
    @age = age
  end

  def dog_years
    @age * 7
  end

  def bark
    puts "Woof woof woof"
  end
end
