"use strict";

class PitFight {
  constructor (viking1, viking2, turns) {
    this.viking1 = viking1;
    this.viking2 = viking2;
    this.state = {
      currentlyAttacking: viking1,
      beingAttacked: viking2
    }
    this.turns = turns;
  }

  initiate () {
    console.log(`The battle has begun between ${this.viking1.name} and ${this.viking2.name}`)
    this.battle();
  }

  vikingAlmostDead () {
    return (this.viking1.health <= (this.viking2.strength + 1))
     || (this.viking2.health <= (this.viking1.strength + 1));
  }

  battle () {
    for (var i = 1; i <= this.turns; i++){
      var attackingViking = this.state.currentlyAttacking;
      var beingAttacked = this.state.beingAttacked;
      if(!this.vikingAlmostDead()){
        attackingViking.attack(beingAttacked)
        // Switch the two vikings
        this.state.currentlyAttacking = beingAttacked;
        this.state.beingAttacked = attackingViking;
        // Print Board
        this.printStatus();
      } else {
        console.log("The match has ended");
        return;
      }
    }
  }

  printStatus () {
    var attacking = this.state.currentlyAttacking;
    var defending = this.state.beingAttacked;
  }
}

module.exports = PitFight;
