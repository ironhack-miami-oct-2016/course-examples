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

  $(".js-pokemon-modal").modal("show");
};


PokemonApp.handleError = function (errorThang) {
  console.log("API Error");
  console.log(errorThang.responseText);
};
