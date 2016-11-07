"use strict";

class Viking {
  constructor (name, health, strength) {
    this.name = name;
    this.health = health;
    this.strength = strength;
  }

  attack (otherNpc) {
    otherNpc.health = otherNpc.health - this.strength;
    console.log(`${this.name} has wounded ${otherNpc.name} for ${this.strength} (current health ${otherNpc.health}) points of damage.`)
  }
}

module.exports = Viking;
