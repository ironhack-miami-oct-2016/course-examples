class MemorySaver
  def save(number)
    IO.write("memory.txt", number)
  end

  def load
    if File.exist?("memory.txt")
      number = IO.read("memory.txt")

      if number != ""
        number = number.to_i
      end
      
      number
    else
      nil
    end
  end
end
