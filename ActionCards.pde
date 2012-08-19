class DodgeCard extends Card {
  DodgeCard(int player) {
    super(player);
  }
  
  void execute(Character c) {
    c.actionDodge();
  }
  
  void draw() {
    
  }
}

class MeleeCard extends Card {
  MeleeCard(int player) {
    super(player);
  }
  
  void execute(Character c) {
    c.actionMelee();
  }
  
  void draw() {
    
  }
}

class FireCard extends Card {
  FireCard(int player) {
    super(player);
  }
  
  void execute(Character c) {
    println("Can't call Fire on Character!");
  }
  
  void execute(FiringCharacter c) {
    c.actionFire();
  }
  
  void draw() {
    
  }
}

class AttackCard extends Card {
  AttackCard(int player) {
    super(player);
  }
  
  void execute(Character c) {
    c.actionAttack();
  }
  
  void draw() {
    
  }
}

class RoundhouseCard extends Card {
  RoundhouseCard(int player) {
    super(player);
  }
  
  void execute(Character c) {
    c.actionRoundhouse();
  }
  
  void draw() {
    
  }
}

class RollingAkimboLeftCard extends Card {
  RollingAkimboLeftCard(int player) {
    super(player);
  }
  
  void execute(Character c) {
    c.actionRollingPistolsRight();
  }
  
  void draw() {
    
  }
}

class RollingAkimboRightCard extends Card {
  RollingAkimboRightCard(int player) {
    super(player);
  }
  
  void execute(Character c) {
    c.actionRollingPistolsLeft();
  }
  
  void draw() {
    
  }
}

class DivingShotCard extends Card {
  DivingShotCard(int player) {
    super(player);
  }
  
  void execute(Character c) {
    c.actionDivingShot();
  }
  
  void draw() {
    
  }
}

class FlyingKickCard extends Card {
  FlyingKickCard(int player) {
    super(player);
  }
  
  void execute(Character c) {
    c.actionFlyingKick();
  }
  
  void draw() {
    
  }
}

