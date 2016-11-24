class PlaylistsApiController < ApplicationController
  protect_from_forgery with: :null_session

  def create
    fresh_playlist = Playlist.new(playlist_params)
    fresh_playlist.save
    render json: fresh_playlist
  end

  def add_track
    the_playlist = Playlist.find(params[:playlist_id])
    the_track = Track.find(params[:track_id])

    the_playlist.tracks.push(the_track)
      # PlaylistTrack.create(playlist_id: 77, track_id: 6)

    render json: the_playlist.to_json(include: [:tracks])
  end


  private

  def playlist_params
    params.require(:playlist).permit(:name, :creator)
  end
end
