"use strict";

var Animal = require("./lib/animal.js");


console.log("");


var thunder = new Animal("Thunder", "German Shepherd", "Woof?");

thunder.chase();
thunder.bark();


console.log("");


var bear = new Animal("Bear", "Border Collie", "Uoooah");

bear.chase();
bear.bark();
