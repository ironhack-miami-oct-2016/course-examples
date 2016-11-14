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

});



function cookieMessage () {
  var cookieContent = `
    <div class="popup">
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
