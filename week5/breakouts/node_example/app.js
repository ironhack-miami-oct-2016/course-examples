const express = require("express");
const mongoose = require("mongoose");

mongoose.connect("mongodb://localhost/blahhhh");

const Pokemon = mongoose.model("Pokemon", {
  name: "string",
  types: "string",
  description: "string"
});

var fera = new Pokemon({ name: "Feraligatr", types: "water" });
fera.save();

var pika = new Pokemon({ name: "Pikachu", types: "electric" });
pika.save();

var chari = new Pokemon({ name: "Charizard", types: "fire flying" });
chari.save();


var app = express();

app.set("view engine", "ejs");
app.use(express.static("public"));

app.get("/", function (requestThing, responseThing) {
  responseThing.render("home.html.ejs");
});

app.get("/about", function (requestThing, responseThing) {
  responseThing.render("about.html.ejs");
});

app.get("/pokemon", function (requestThing, responseThing) {
  Pokemon.find(function (errorThing, pokemonList) {
    responseThing.render("pokemon.html.ejs", { pokemonList });
  });
});

app.listen(3000);
