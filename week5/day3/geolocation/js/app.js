console.log("APP JS ONLINE");

$(document).ready(function () {

  console.log("The page has finished loading.");
  promptForLocation();
  beginWatch();

});


function beginWatch () {
  if ("geolocation" in navigator) {
    navigator.geolocation.watchPosition(watchSuccess, watchError);
  }
}


function watchSuccess (locInfo) {
  console.log("Watch location:");
  console.log(locInfo);

  var now = new Date(locInfo.timestamp);
  var time = now.toTimeString();

  var watchItem = `
    <li>
      Latitude: ${locInfo.coords.latitude}
      <br>
      Longitude: ${locInfo.coords.longitude}
      <br>
      Time: ${time}
    </li>`;

  $(".js-watch-list").append(watchItem);
}

function watchError (errInfo) {
  console.log("Watch error:");
  console.log(errInfo);
}




function promptForLocation () {
  if ("geolocation" in navigator) {
    var optionsThing = {
      enableHighAccuracy: true,
      timeout: 5000
    };

    navigator.geolocation.getCurrentPosition(showPositionInDom, showError, optionsThing);
  }

  else {
    var errorHtml = `
      <div class="alert alert-danger" role="alert">
        <strong> Sorry! </strong>
        Your browser is too old to use this site.
        Please upgrade to Google Chrome or something.
      </div>`;

    $("body").prepend(errorHtml);
  }
}



function showPositionInDom (locationInfo) {
  console.log("Got position successfully.");
  console.log(locationInfo);

  $(".js-lat").html(locationInfo.coords.latitude);
  $(".js-lng").html(locationInfo.coords.longitude);
}


function showError (errorInfo) {
  console.log("Error getting position.");
  console.log(errorInfo);

  var positionErrorHtml = `
    <div class="alert alert-warning" role="alert">
      <strong> Sorry! </strong>
      There was an error retrieving your position.

      <button class="js-try-again"> Try again </button>
    </div>`;

  $("body").prepend(positionErrorHtml);

  $(".js-try-again").on("click", function () {
    location.reload();
  });
}
