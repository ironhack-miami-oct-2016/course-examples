"use strict";

var caeserCipher = require("./lib/caeser-cipher.js");

console.log( caeserCipher("brutus") === "_orqrp" );
console.log( caeserCipher("Et tu, brute?") === "Bq qr, _orqb?" );
console.log( caeserCipher("Et tu, brute?", -4) === "Ap pq, ^nqpa?" );
console.log( caeserCipher("Et tu, brute?", 6) === "Kz z{, hx{zk?" );
// TODO: Wrap around
console.log( caeserCipher("Et tu, brute?", 6) === "Kz za, hxazk?" );
