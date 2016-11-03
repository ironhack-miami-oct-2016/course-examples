"use strict";

function realCaeserCipher (message, shift) {
  if (shift === undefined) {
    shift = -3;
  }

  var letters = message.split("");

  var cipheredLetters = letters.map(function (oneLetter) {
    if (oneLetter < "A" || (oneLetter > "Z" && oneLetter < "a") || oneLetter > "z") {
      return oneLetter;
    }
    else {
      var originalNumber = oneLetter.charCodeAt(0);
      var shiftedNumber = originalNumber + shift;
      var oneCipheredLetter = String.fromCharCode(shiftedNumber);
      return oneCipheredLetter;
    }
  });

  return cipheredLetters.join("");
}

module.exports = realCaeserCipher;
