function countCountries (country, array) {
  var counter = 0;

  array.forEach(function (eachCountry) {
    if (eachCountry === country) {
      counter += 1;
    }
  });

  return counter;
}


// I want to share the countCountries function
module.exports = countCountries;
