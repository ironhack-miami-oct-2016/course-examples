PokemonApp.Sprite = class {
  constructor (spritesArray) {
    this.sprites = spritesArray;
  }

  render () {
    $(".js-sprite-wrapper").empty();

    if (this.sprites.length === 0) {
      PokemonApp.showSprite("/assets/pokeball.png");
    }

    else {
      console.log(`Rendering sprite with URL: ${this.sprites[0].resource_uri}`);
      
      $.ajax({
        type: "GET",
        url: this.sprites[0].resource_uri,
        success: PokemonApp.spriteFromApi,
        error: PokemonApp.handleError
      });
    }
  }
};


PokemonApp.spriteFromApi = function (spriteResponse) {
  console.log("Sprite API success!");
  console.log(spriteResponse);

  var pngPieces = spriteResponse.image.split("/");
  var imageUrl = `https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/${pngPieces[3]}`;

  PokemonApp.showSprite(imageUrl);
};


PokemonApp.showSprite = function (spriteUrl) {
  var imgTag = `
    <img class="pokemon-image" src="${spriteUrl}" alt="Image of a pokemon">`;

  $(".js-sprite-wrapper").html(imgTag);
};
