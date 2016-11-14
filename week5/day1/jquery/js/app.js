console.log("CONSOLE LOG");


$(document).ready(function () {

  $(".js-pizza").on("click", function () {
    $(".js-small").append("PIZZA 🍕 PIZZA");
  });

  $(".empanadas").click(function () {
    $(".js-heading").append(`
      <span> EMPANADA TIME 😋 </span>
      <a href="#"> SEE MORE EMPANADAS </a>
    `);
  });

  $("#cookies").on("click", cookieMessage);

  $("#ice-cream").on("click", iceCreamMessage);

  $(".js-change-unicorn").on("click", changeUnicorn);

  $(".js-button-color").on("click", changeButtonColor);

});



function changeButtonColor () {
  $("button").addClass("btn");

  if ( $("button").hasClass("btn-success") ) {
    $("button").removeClass("btn-success");
    $("button").addClass("btn-info");
  }

  else if ( $("button").hasClass("btn-info") ) {
    $("button").removeClass("btn-info");
    $("button").addClass("btn-warning");
  }

  else if ( $("button").hasClass("btn-warning") ) {
    $("button").removeClass("btn-warning");
  }

  else {
    $("button").addClass("btn-success");
  }
}






var unicornCount = 2;

function changeUnicorn () {
  unicornCount += 1;

  if (unicornCount > 3) {
    unicornCount = 1;
  }

  $(".js-unicorn-image").attr("src", `images/unicorn${unicornCount}.gif`);
}


function iceCreamMessage () {
  var content = `
    <i> Ice cream 🍦 </i>`;

  $(".js-jq-paragraph").html(content);
}



function cookieMessage () {

  if ($(".js-cookie-div").length > 0) {
    $(".js-cookie-div").remove();
  }

  else {
    var cookieContent = `
      <div class="popup js-cookie-div">
        <h2> 🍪 Have some cookies. 🍪 </h2>

        <p> Cookies are good for you. Here's why: </p>

        <ul>
          <li> Cookies taste good. </li>
          <li> They have 0 calories. </li>
          <li> Cookies don't lie to you. </li>
        </ul>
      </div>`;

    $("body").append(cookieContent);
  }

}
