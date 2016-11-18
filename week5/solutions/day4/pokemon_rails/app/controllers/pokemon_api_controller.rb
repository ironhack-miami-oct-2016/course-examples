require("net/http")

class PokemonApiController < ApplicationController
  def forward
    response = PokemonApi.request(params[:uri], :parse? => false)
    render(:json => response)
  end
end
