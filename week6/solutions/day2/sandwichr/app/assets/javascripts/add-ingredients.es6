$(document).on("turbolinks:load", function () {

  $(".js-add-ingredient").on("click", addIngredient);

});


function addIngredient () {
  var sandwichId = $(".js-sandwich-id-tag").data("sandwich-id");
  var ingredientId= $(this).data("ingredient-id");

  var infoHash = {
    ingredient_id: ingredientId
  };

  $.ajax({
    type: "POST",
    url: `/api/sandwiches/${sandwichId}/ingredients/add`,
    data: infoHash,
    success: updateIngredientsUi,
    error: handleError
  });
}


function updateIngredientsUi (sandwichInfo) {
  $(".js-total-calories-tag").html(sandwichInfo.total_calories);
  $(".js-sandwich-ingredients-tag").empty();

  sandwichInfo.ingredients.forEach(function (oneIngredient) {
    var html = `
      <li>
        <h4> ${oneIngredient.name} </h4>
        <p>
          Calories:
          <em> ${oneIngredient.calories} </em>
        </p>
      </li>`;

    $(".js-sandwich-ingredients-tag").append(html);
  });
}


function handleError (errorThing) {
  console.log("ERROR!");
  console.log(errorThing.responseText);
}
