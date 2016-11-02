class CountryCounter
  def count_countries(country, array)
    counter = 0

    array.each do |each_country|
      if each_country == country
        counter += 1
      end
    end

    counter
  end
end
