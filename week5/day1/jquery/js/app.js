console.log("CONSOLE LOG");

$(document).ready(function () {


  $(".js-button-thing").on("click", function () {
    $("body").append(`<img src="images/unicorn1.gif">`);
  });


  $(".js-change-button-color").on("click", function () {
    $(".js-button-thing").addClass("btn");

    if ($(".js-button-thing").hasClass("btn-info")) {
      $(".js-button-thing").addClass("btn-danger");
      $(".js-button-thing").removeClass("btn-info");
    }

    else {
      $(".js-button-thing").addClass("btn-info");
      $(".js-button-thing").removeClass("btn-danger");
    }
  });


});
