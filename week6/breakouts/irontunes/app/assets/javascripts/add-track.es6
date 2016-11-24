$(document).on("turbolinks:load", function () {

  $(".js-track-container").on("click", ".js-add-track", addTrackToPlaylist);

});


function addTrackToPlaylist () {
  var playlistId = $(".js-current-playlist").data("playlist");
  var trackId = $(this).data("track-id");

  $(this).addClass("js-last-button-clicked");

  var apiData = { track_id: trackId };

  $.ajax({
    type: "POST",
    url: `/api/playlists/${playlistId}/tracks/add`,
    data: apiData,
    success: updatePlaylistCount,
    error: handleError
  });
}


function updatePlaylistCount (playlistDetails) {
  $(".js-current-playlist p").html(`${playlistDetails.tracks.length} tracks`);

  $(".js-last-button-clicked").html("Added");
  $(".js-last-button-clicked").addClass("btn-default disabled");
  $(".js-last-button-clicked").removeClass("btn-success js-last-button-clicked");
}
