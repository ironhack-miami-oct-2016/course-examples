$(document).ready(function() {

  $(".js-artist-form").on("submit", fetchSpotifyArtists);

    //  EVENT DELEGATION!
    //  -----------------
    //
    // This tag is already on the page
    //      |
  // $(".js-artist-list").on("click", ".js-artist-albums", fetchSpotifyAlbums);
    //                                      |
    //                      These buttons will be appended to the DOM later

});


function fetchSpotifyArtists (theEvent) {
  theEvent.preventDefault();

  var searchTermInput = $(".js-artist-input").val();
  var finalSearchTerm = searchTermInput.split(" ").join("+");

  $.ajax({
    type: "GET",
    url: `https://api.spotify.com/v1/search?type=artist&q=${finalSearchTerm}`,
    success: showArtists,
    error: handleError
  });
}


function showArtists(artistResponse){
  $(".js-artist-list").empty();
  $(".js-albums-list").empty();

  artistResponse.artists.items.forEach(function (theArtist) {
    appendArtistHtml(theArtist);
  });

  $(".js-artist-albums").on("click", fetchSpotifyAlbums);
}


function appendArtistHtml (artist) {
  var image;

  if (artist.images.length > 0){
    image = artist.images[0].url;
  }
  else {
    image = "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQCk2bayZHUJsWeglTeTOvjcX3PvSpnkqU3T-6YmCE6bT1nFQ56Bw";
  }

  var html = `
    <li class="artist-item">
      <h4> ${artist.name} </h4>
      <img class="artist-image" src="${image}">

      <button class="albums-btn js-artist-albums" data-blah="${artist.id}">
        Show albums for ${artist.name}
      </button>
    </li>`;

  $(".js-artist-list").append(html);
}


function handleError (theError) {
  console.log("You dun goofed");
  console.log(theError.responseText);
}


function fetchSpotifyAlbums () {

  // <button class="albums-btn js-artist-albums" data-blah="4x1nvY2FN8jxqAFA0DA02H">
  //   Show albums for John Lennon
  // </button>

  console.log( "$(this).data(\"blah\")",  $(this).data("blah") );

    // <button           data-blah="..."
    //                     |    |
  var artistId = $(this).data("blah");

  $.ajax({
    type: "GET",
    url: `https://api.spotify.com/v1/artists/${artistId}/albums`,
    success: displayAlbums,
    error: handleError
  });
}


function displayAlbums (data) {
  $(".js-albums-list").empty();

  data.items.forEach(function (theAlbum) {
    appendAlbumHtml(theAlbum);
  });
}


function appendAlbumHtml (album) {
  var image;

  if (album.images.length > 0){
    image = album.images[0].url;
  } else {
    image = "http://static.gigwise.com/artists/03122015_cat_music_science.jpg";
  }

  var html = `
    <li>
      <h4> ${album.name} </h4>
      <img class="album-image" src="${image}">
    </li>`;

  $(".js-albums-list").append(html);
}
