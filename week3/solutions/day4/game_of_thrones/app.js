"use strict";

var fs = require("fs");
var displayEpisodes = require("./lib/display-episodes.js");


function displayJsonData (theError, fileContents) {
    if (theError === null) {
      var episodes = JSON.parse(fileContents);

      console.log("");
      console.log("All season 1 episodes:");
      console.log("======================");

      displayEpisodes(episodes);


      console.log("");
      console.log("");
      console.log("Top rated episodes (8.5+):");
      console.log("==========================");

      var topEpisodes = episodes.filter(function (theEpisode) {
        return theEpisode.rating >= 8.5;
      });

      displayEpisodes(topEpisodes);
    }

    else {
      console.log("Oh no! There was an error.");
      console.log(theError);
    }
}

fs.readFile("episodes.json", "utf8", displayJsonData);
