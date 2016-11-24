
$(document).on("turbolinks:load", function () {

  $(".js-show-playlist-form").on("click", showCreatePlaylistModal);
  $(".js-playlist-form").on("submit", saveNewPlaylist);

});


function showCreatePlaylistModal () {
  $(".js-create-playlist-modal").modal("show");
}

function saveNewPlaylist (eventThing) {
  eventThing.preventDefault();

  var newPlaylistInfo = {
    name: $(".js-playlist-name-input").val(),
    creator: $(".js-playlist-creator-input").val(),
  };

    // playlist[name]
    // playlist[creator]
  var apiData = { playlist: newPlaylistInfo };

  $.ajax({
    type: "POST",
    url: "/api/playlists",
    data: apiData,
    success: updatePlaylistUi,
    error: handleError
  });
}


function updatePlaylistUi (playlistInfo) {
  $(".js-playlist-form").trigger("reset");
  $(".js-create-playlist-modal").modal("hide");

  $(".js-playlist-name").html(`Current Playlist: <small> ${playlistInfo.name} </small>`);
  $(".js-current-playlist").removeClass("hidden");

  $(".js-current-playlist").data("playlist", playlistInfo.id);
}
