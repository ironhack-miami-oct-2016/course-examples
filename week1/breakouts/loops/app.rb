require_relative("lib/dog.rb")


# 2004 2008 2012 2016

year = 1792

while year == 2016
  puts year

  year += 4
end


#            0                1              2              3                4                  5
dogs = ["chihuahua", "german shepherd", "labrador", "border collie", "rodesian ridgeback", "shiba inu"]


puts ""
puts ""
puts "for..in"

for index in 0..(dogs.length - 1)
  puts "I would like to purchase a #{dogs[index]}"
end


puts ""
puts ""
puts ".each"

dogs.each do |a_dog|
  puts "I would like to purchase a #{a_dog}"
end


klaus = Dog.new("Klaus", "schnauzer", 7)
bear = Dog.new("Bear", "border collie", 9)
harley = Dog.new("Harley", "german shepherd", 3)
dango = Dog.new("Dango", "shiba inu", 2)
shika = Dog.new("Shika", "shiba inu", 3)

real_dogs = [klaus, bear, harley, dango, shika]


puts "List of dogs:"
puts "-------------"
puts ""

real_dogs.each do |a_dog|
  puts "Name: #{a_dog.name}"
  puts "Breed: #{a_dog.breed}"
  puts "Age: #{a_dog.age}"
  puts "Dog Years: #{a_dog.dog_years}"

  puts "Bark, #{a_dog.name}!"
  a_dog.bark

  puts ""
  puts "-----------------------"
  puts ""
end
