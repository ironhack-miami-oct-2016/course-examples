console.log("");


var thunder = {
  name: "Thunder",
  breed: "German Shepherd",
  sound: "Woof?",

  chase: function () {
    console.log(`${this.name} is chasing cars.`);
  },

  bark: function () {
    console.log(this.sound);
  }
};


thunder.chase();
thunder.bark();


console.log("");


var bear = {
  name: "Bear",
  breed: "Border Collie",
  sound: "Uoooah",

  chase: function () {
    console.log(`${this.name} is chasing cars.`);
  },

  bark: function () {
    console.log(this.sound);
  }
};


bear.chase();
bear.bark();
