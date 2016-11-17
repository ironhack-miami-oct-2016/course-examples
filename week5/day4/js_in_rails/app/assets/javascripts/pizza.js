//  In Rails you shouldn't use $(document).ready()
//               |
// $(document).ready(function () {
// });


//  Use this instead of .ready() in Rails
//                     |
$(document).on("turbolinks:load", function () {
  console.log("the page has loaded from pizza.js");
});
