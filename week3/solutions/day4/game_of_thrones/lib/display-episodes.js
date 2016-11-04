"use strict";

var repeatString = require("./repeat-string.js");


function displayEpisodes (episodesArray) {
  // JavaScript sort changes the original array, so no need for a new variable.
  episodesArray.sort(function (episodeA, episodeB) {
    return episodeA.episode_number - episodeB.episode_number;
  });

  episodesArray.forEach(function (theEpisode) {

    var amountOfStars = Math.round(theEpisode.rating);
    var stars = repeatString("*", amountOfStars);

    var prettyEpisode = `
Title: "${theEpisode.title}"  Episode #: ${theEpisode.episode_number}
${theEpisode.description}
Rating: ${theEpisode.rating} ${stars}`;

    console.log(prettyEpisode);

  });
}

module.exports = displayEpisodes;
