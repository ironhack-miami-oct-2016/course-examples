$(document).ready(function () {

  $(".js-the-button").on("click", addVideo);

});


function addVideo () {
  console.log("HELLO???");

  var videoHtml = `
    <iframe width="560" height="315"
      src="https://www.youtube.com/embed/3l7XAvJmbw0"
      frameborder="0" allowfullscreen></iframe>`;

  $("body")
    .append(videoHtml)
    .prepend("blah")
    .addClass("pink");
}
