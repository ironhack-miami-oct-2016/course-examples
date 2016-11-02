// require_relative("lib/country_counter.rb")
var countCountriesFn = require("./lib/count-countries.js");
  //                           ---
  //                            |
  //                           ./ lets node know that this is a local file


var averageColonBlah = require("./lib/average-colon.js");

console.log( averageColonBlah("80:70:90:100") === 85 );



//  countries = ["Puerto Rico", "USA", "Nicaragua", "France", "Zimbabwe", "Mongolia", "Argentina", "Cuba", "Nigeria", "Haiti"]
var countries = [
  "Puerto Rico", "Puerto Rico",
  "USA", "USA", "USA", "USA", "USA",
  "Nicaragua", "France", "Zimbabwe", "Mongolia", "Argentina",
  "Cuba", "Cuba", "Cuba", "Cuba",
  "Nigeria", "Haiti"
];


console.log( countCountriesFn("USA", countries) === 5 );
console.log( countCountriesFn("Puerto Rico", countries) === 2 );
console.log( countCountriesFn("Cuba", countries) === 4 );
console.log( countCountriesFn("Nicaragua", countries) === 1 );
console.log( countCountriesFn("Japan", countries) === 0 );


//     puts ""
//     puts "Countries represented in this room:"
//     puts "-----------------------------------"
console.log("");
console.log("Countries represented in this room:");
console.log("-----------------------------------");


// countries.each do |a_country|
//   puts "Some of us are from #{a_country}!!"
// end
countries.forEach(function (aCountry) {
  console.log(`Some of use are from ${aCountry}!!`);
});

//       Ruby -> snake case  -> snake_case, pizza_pie, lasagna
// JavaScript -> camel case  -> camelCase,  pizzaPie,  lasagna
//    Classes -> class case™ -> ClassCase,  PizzaPie,  Lasagna

// puts ""
console.log("");


// uppercase_countries = countries.map do |a_country|
//   a_country.upcase
// end
var uppercaseCountries = countries.map(function (aCountry) {
  return aCountry.toUpperCase();
});


// puts "COUNTRIES REPRESENTED IN THIS ROOM (IN UPPERCASE):"
// puts "--------------------------------------------------"
console.log("COUNTRIES REPRESENTED IN THIS ROOM (IN UPPERCASE):");
console.log("--------------------------------------------------");

// uppercase_countries.each do |a_country|
//   puts "SOME OF US ARE FROM #{a_country}!!"
// end
uppercaseCountries.forEach(function (aCountry) {
  console.log(`SOME OF US ARE FROM ${aCountry}!!`);
});
