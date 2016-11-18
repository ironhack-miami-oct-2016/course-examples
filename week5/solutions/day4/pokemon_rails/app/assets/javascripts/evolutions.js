$(document).on("ready", function () {

  $(".js-evolutions-btn").on("click", function () {
    var theseEvolutions = PokemonApp.evolutionsArray;

    if (theseEvolutions.length > 0) {
      var evolutionsComponent = new PokemonApp.Evolutions(theseEvolutions);
      evolutionsComponent.render();
    }
  });

});


PokemonApp.Evolutions = class {
  constructor (evolutionsArray) {
    this.originalEvolutions = evolutionsArray;
    this.evolutions = this.removeDuplicates();
    this.sortEvolutions();
  }

  render () {
    $(".js-evolutions-list").empty();

    console.log(`Rendering ${this.evolutions.length} evolutions:`);
    console.log(this.evolutions);

    this.evolutions.forEach(function (theEvolution) {
      $.ajax({
        type: "GET",
        url: theEvolution.resource_uri,
        success: PokemonApp.showEvolution,
        error: PokemonApp.handleError
      });
    });

    $(".js-evolutions-modal").modal("show");
  }

  removeDuplicates () {
    var foundItems = {};

    var unduped = this.originalEvolutions.filter(function (anEvo) {
      if (foundItems[anEvo.to] === undefined) {
        foundItems[anEvo.to] = true;
        return true;
      }

      else {
        return false;
      }
    });

    return unduped;
  }

  sortEvolutions () {
    this.evolutions.sort(function (evoA, evoB) {
      if (evoA.resource_uri < evoB.resource_uri) {
        return -1;
      }

      else if (evoA.resource_uri > evoB.resource_uri) {
        return 1;
      }

      else {
        return 0;
      }
    });
  }
}


PokemonApp.showEvolution = function (evoResponse) {
  $.ajax({
    type: "GET",
    url: evoResponse.sprites[0].resource_uri,
    success: function (spriteResponse) {
      var pngPieces = spriteResponse.image.split("/");
      var imageUrl = `https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/${pngPieces[3]}`;

      var html = `
        <li>
          <h4>
            ${evoResponse.name}
            <small>#${evoResponse.pkdx_id}</small>
          </h4>
          <img class="img-circle" src="${imageUrl}"
            alt="Image for Pokemon ${evoResponse.name}">
        </li>`;

      $(".js-evolutions-list").append(html);
    },
    error: PokemonApp.handleError
  });
};


PokemonApp.prepareEvolutions = function (evolutionsFromApi) {
  if (evolutionsFromApi.length === 0) {
    $(".js-evolutions-start-ui").hide();
  }

  else {
    $(".js-evolutions-start-ui").show();
  }

  PokemonApp.evolutionsArray = evolutionsFromApi;
};
