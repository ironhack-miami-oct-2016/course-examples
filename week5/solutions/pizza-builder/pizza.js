// Write your Pizza Builder JavaScript in this file.

$(document).ready(function () {

  $(".btn-pepperonni").on("click", function () {
    $(".pep").toggle();
    $(".btn-pepperonni").toggleClass("active");
    $(".js-pepperonni-price").toggleClass("active");
    updatePrice();
  });

  $(".btn-mushrooms").on("click", function () {
    $(".mushroom").toggle();
    $(".btn-mushrooms").toggleClass("active");
    $(".js-mushroom-price").toggleClass("active");
    updatePrice();
  });

  $(".btn-green-peppers").on("click", function () {
    $(".green-pepper").toggle();
    $(".btn-green-peppers").toggleClass("active");
    $(".js-green-pepper-price").toggleClass("active");
    updatePrice();
  });

  $(".btn-sauce").on("click", function () {
    $(".js-sauce-wrapper").toggleClass("sauce-white");
    $(".btn-sauce").toggleClass("active");
    $(".js-white-sauce-price").toggleClass("active");
    updatePrice();
  });

  $(".btn-crust").on("click", function () {
    $(".js-crust-wrapper").toggleClass("crust-gluten-free");
    $(".btn-crust").toggleClass("active");
    $(".js-gluten-free-crust-price").toggleClass("active");
    updatePrice();
  });

});


function updatePrice () {
  var price = 10;

  if ( $(".btn-pepperonni").hasClass("active") ) {
    price += 1;
  }

  if ( $(".btn-mushrooms").hasClass("active") ) {
    price += 1;
  }

  if ( $(".btn-green-peppers").hasClass("active") ) {
    price += 1;
  }

  if ( $(".btn-sauce").hasClass("active") ) {
    price += 3;
  }

  if ( $(".btn-crust").hasClass("active") ) {
    price += 5;
  }

  $(".js-total-price").html(`$${price}`);
}
