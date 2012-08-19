static class ActionImgs {
  static final String BASE = "images/Cards/";
  static final String DODGE = BASE + "";
  static final String MELEE = BASE + "";
  static final String FIRE = BASE + "";
  static final String ATTACK = BASE + "";
  static final String ROUNDHOUSE = BASE + "";
  static final String ROLL_L = BASE + "";
  static final String ROLL_R = BASE + "";
  static final String DIVE = BASE + "";
  static final String KICK = BASE + "";
}

class DodgeCard extends Card {
  DodgeCard(int player) {
    super(player, ActionImgs.DODGE);
  }
  
  void execute(Character c) {
    c.actionDodge();
  }
  
  void draw() {
    
  }
}

class MeleeCard extends Card {
  MeleeCard(int player) {
    super(player, ActionImgs.MELEE);
  }
  
  void execute(Character c) {
    c.actionMelee();
  }
  
  void draw() {
    
  }
}

class FireCard extends Card {
  FireCard(int player) {
    super(player, ActionImgs.FIRE);
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
    super(player, ActionImgs.ATTACK);
  }
  
  void execute(Character c) {
    c.actionAttack();
  }
  
  void draw() {
    
  }
}

class RoundhouseCard extends Card {
  RoundhouseCard(int player) {
    super(player, ActionImgs.ROUNDHOUSE);
  }
  
  void execute(Character c) {
    c.actionRoundhouse();
  }
  
  void draw() {
    
  }
}

class RollingAkimboLeftCard extends Card {
  RollingAkimboLeftCard(int player) {
    super(player, ActionImgs.ROLL_L);
  }
  
  void execute(Character c) {
    c.actionRollingPistolsRight();
  }
  
  void draw() {
    
  }
}

class RollingAkimboRightCard extends Card {
  RollingAkimboRightCard(int player) {
    super(player, ActionImgs.ROLL_R);
  }
  
  void execute(Character c) {
    c.actionRollingPistolsLeft();
  }
  
  void draw() {
    
  }
}

class DivingShotCard extends Card {
  DivingShotCard(int player) {
    super(player, ActionImgs.DIVE);
  }
  
  void execute(Character c) {
    c.actionDivingShot();
  }
  
  void draw() {
    
  }
}

class FlyingKickCard extends Card {
  FlyingKickCard(int player) {
    super(player, ActionImgs.KICK);
  }
  
  void execute(Character c) {
    c.actionFlyingKick();
  }
  
  void draw() {
    
  }
}

