class TracksApiController < ApplicationController
  def index
    tracks_list = Track.all.select(:id, :name, :artist, :album, :genre, :picture)
    render json: tracks_list
  end
end
