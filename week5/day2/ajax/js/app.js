console.log("APP JS READY");


$(document).ready(function () {

  $(".js-fetch-characters").on("click", fetchCharacters);

});


function fetchCharacters () {
  $.ajax({
    type: "GET",
    url: "https://ironhack-characters.herokuapp.com/characters",
    success: showCharacters,
    error: handleError,
  });
}


function showCharacters (x) {
  console.log("Fetch characters success");
  console.log(x);

  x.forEach(function (oneCharacter) {
    var characterItem = `
      <li>
        <h3> ${oneCharacter.name} </h3>
        <p> Weapon: ${oneCharacter.weapon} </p>
        <p> Occupation: ${oneCharacter.occupation} </p>
        <p> Debt: ${oneCharacter.debt} </p>
        <p> Id: ${oneCharacter.id} </p>
      </li>`;

    $(".js-character-list").append(characterItem);
  });
}


function handleError (errorThing) {
  console.log("Fetch characters error");
  console.log(errorThing.responseText);
}
