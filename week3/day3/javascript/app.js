//  countries = ["Puerto Rico", "USA", "Nicaragua", "France", "Zimbabwe", "Mongolia", "Argentina", "Cuba", "Nigeria", "Haiti"]
var countries = ["Puerto Rico", "USA", "Nicaragua", "France", "Zimbabwe", "Mongolia", "Argentina", "Cuba", "Nigeria", "Haiti"];


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
