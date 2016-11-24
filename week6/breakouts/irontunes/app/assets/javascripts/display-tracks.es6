$(document).on("turbolinks:load", function () {

  $(".js-display-tracks").on("click", fetchTrackList);

});


function fetchTrackList () {
  $.ajax({
    type: "GET",
    url: "/api/tracks",
    success: displayTracks,
    error: handleError
  });
}


function displayTracks (trackList) {
  $(".js-track-container").empty();

  trackList.forEach(function (a_track) {
    var html = `
      <li>
        <h3> ${a_track.name} </h3>
        <p> by <em> ${a_track.artist} </em> </p>
        <p> from ${a_track.album} </p>
        <img src="${a_track.picture}">
        <button class="btn btn-success js-add-track" data-track-id="${a_track.id}">
          Add this track
        </button>
      </li>`

    $(".js-track-container").append(html);
  });
}

function handleError (errorThing) {
  console.log("ERROR!");
  console.log(errorThing.responseText);
}
