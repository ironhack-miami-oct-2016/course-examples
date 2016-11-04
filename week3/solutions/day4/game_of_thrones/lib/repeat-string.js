"use strict";

function repeatString (theString, amount) {
  var result = "";

  for (var count = 1; count <= amount; count += 1) {
    result += theString;
  }

  return result;
}

module.exports = repeatString;
