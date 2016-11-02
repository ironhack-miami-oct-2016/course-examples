function averageColon (numbersString) {
  // #1 split the string
  var stringArray = numbersString.split(":");


  // #2 turn the strings into numbers
  var numbersArray = [];
  stringArray.forEach(function (x) {
    numbersArray.push(Number(x));
  });


  // #3 add the numbers
  var counter = 0;
  numbersArray.forEach(function (eachNumber) {
    counter += eachNumber;
  });


  // #4 divide by the amount numbers
  var finalNumber = counter / numbersArray.length;


  // #5 return the result
  return finalNumber;
  
  // #6 happy dance
}


module.exports = averageColon;
