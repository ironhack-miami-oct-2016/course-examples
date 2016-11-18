class PokemonApi
  POKEMON_API_URL = "http://pokeapi.co/api/v1"
  REQUEST_DEFAULTS = { :parse? => true }

  def self.uri(path)
    url_string = "#{POKEMON_API_URL}/#{path}/"
    return URI.parse(url_string)
  end

  def self.request(path, given_options = {})
    options = REQUEST_DEFAULTS.merge(given_options)

    response = Rails.cache.fetch(path, expires_in: 12.hours) do
      uri = self.uri(path)
      Net::HTTP.get_response(uri)
    end

    body = response.body

    if options[:parse?]
      body = JSON.parse(body)
    end

    return body
  end
end
