Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "main#home"

  scope :api do
    resources(:tracks, { only: [:index], controller: "tracks_api" })
    resources(:playlists, { only: [:create], controller: "playlists_api" })
    post "/playlists/:playlist_id/tracks/add", to: "playlists_api#add_track"
  end
end
