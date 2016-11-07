"use strict";

class Saxon {
  constructor (health, strength) {
    this.name = "Saxon";
    this.health = health;
    this.strength = strength;
  }

  attack (otherNpc){
    otherNpc.health = otherNpc.health - this.strength;
  }
}

module.exports = Saxon;
