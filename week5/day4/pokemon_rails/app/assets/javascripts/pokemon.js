$(document).on("ready", function () {

  $(".js-show-pokemon").on("click", function () {
    var pokemonUri = $(this).data("pokemon-uri");

    var pokemon = new PokemonApp.Pokemon(pokemonUri);
    pokemon.render();
  });

});


PokemonApp.Pokemon = class {
  constructor (pokemonUri) {
    this.apiUrl = pokemonUri;
  }

  render () {
    console.log(`Rendering pokemon with URL: ${this.apiUrl}`);

    $.ajax({
      type: "GET",
      url: `/${this.apiUrl}`,
      success: PokemonApp.showPokemonModal,
      error: PokemonApp.handleError
    });
  }
};


PokemonApp.showPokemonModal = function (apiResult) {
  console.log("Pokemon API success!");
  console.log(apiResult);

  $(".js-pkmn-name").text(apiResult.name);
  $(".js-pkmn-number").text(`#${apiResult.pkdx_id}`);
  $(".js-pkmn-height").text(apiResult.height);
  $(".js-pkmn-weight").text(apiResult.weight);
  $(".js-pkmn-hp").text(apiResult.hp);
  $(".js-pkmn-attack").text(apiResult.attack);
  $(".js-pkmn-defense").text(apiResult.defense);
  $(".js-pkmn-sp-attack").text(apiResult.sp_atk);
  $(".js-pkmn-sp-defense").text(apiResult.sp_def);
  $(".js-pkmn-speed").text(apiResult.speed);

  $(".js-pkmn-types").empty();
  apiResult.types.forEach(function (theType) {
    var typeHtml = `<li> ${theType.name} </li>`;

    $(".js-pkmn-types").append(typeHtml);
  });

  $(".js-pokemon-modal").modal("show");
};


PokemonApp.handleError = function (errorThang) {
  console.log("API Error");
  console.log(errorThang.responseText);
};
