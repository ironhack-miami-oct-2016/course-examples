# /---------------------------------------------------------
#  ------------------------- SETUP -------------------------
#  ---------------------------------------------------------/

class ProgrammingLanguage
  attr_accessor :name, :age, :type
  def initialize(name, age, type)
    @name = name
    @age = age
    @type = type
  end
end

ruby = ProgrammingLanguage.new("Ruby", 21, "Dynamic")
python = ProgrammingLanguage.new("Python", 24, "Dynamic")
javascript = ProgrammingLanguage.new("JavaScript", 20, "Dynamic")
go = ProgrammingLanguage.new("Go", 6, "Static")
rust = ProgrammingLanguage.new("Rust", 5, "Static")
swift = ProgrammingLanguage.new("Swift", 2, "Static")
java = ProgrammingLanguage.new("Java", 20, "Static")

array_of_languages = [ruby, python, javascript, go, rust, swift, java]



# /---------------------------------------------------------
#  ------------------------- EACH --------------------------
#  ---------------------------------------------------------/

def array_printer(array)
  array.each do | language |
    puts "Language: #{language.name} |  Age: #{language.age} |  Type System: #{language.type}"
  end
end

puts "\nThe original programming languages are:"
puts "---------------------------------------"
array_printer( array_of_languages )



# /---------------------------------------------------------
#  -------------------------- MAP --------------------------
#  ---------------------------------------------------------/

aged_languages = array_of_languages.map do | language |
  new_age = language.age + 1
    # |
    # ---------------------------------------
    #                                       |
    #                                       v
  ProgrammingLanguage.new(language.name, new_age, language.type)
end

puts "\nThe programming languages aged one year are:"
puts "--------------------------------------------"
array_printer( aged_languages )



# /---------------------------------------------------------
#  ------------------------- SORT --------------------------
#  ---------------------------------------------------------/

sorted_languages = aged_languages.sort do | language_a, language_b |
  # Switch A and B to get descending order (highest first)
  language_b.age <=> language_a.age
end

puts "\nThe programming languages sorted by age are:"
puts "--------------------------------------------"
array_printer( sorted_languages )



# /---------------------------------------------------------
#  ------------------------ DELETE -------------------------
#  ---------------------------------------------------------/

sorted_languages.delete_if do | language |
  language.name == "Java"
end

puts "\nThe programming languages sans-Java are:"
puts "-------------------------------------------"
array_printer( sorted_languages )



# /---------------------------------------------------------
#  ----------------------- SHUFFLE -------------------------
#  ---------------------------------------------------------/

random_languages = sorted_languages.shuffle

puts "\nThe programming languages in random order are:"
puts "-----------------------------------------------"
array_printer( random_languages )
