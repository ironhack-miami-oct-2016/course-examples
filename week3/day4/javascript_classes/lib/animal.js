// class Animal
//   def initialize(name, breed, sound)

function Animal (name, breed, sound) {
  // @name = name
  this.name = name;

  // @breed = breed
  this.breed = breed;

  // @sound = sound
  this.sound = sound;
}


Animal.prototype.chase = function () {
  console.log(`${this.name} is chasing cars.`)
};

Animal.prototype.bark = function () {
  console.log(this.sound);
};


module.exports = Animal;
