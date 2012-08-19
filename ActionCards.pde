static class ActionImgs {
  static final String BASE = "images/Cards/Card_";
  static final String DODGE = BASE + "Dodge.png";
  static final String MELEE = BASE + "Melee.png";
  static final String FIRE = BASE + "Fire.png";
  static final String ATTACK = BASE + "Attack.png";
  static final String ROUNDHOUSE = BASE + "Roundhouse.png";
  static final String ROLL_L = BASE + "AkimboLeft.png";
  static final String ROLL_R = BASE + "AkimboRight.png";
  static final String DIVE = BASE + "DivingShot.png";
  static final String KICK = BASE + "FlyingKick.png";
}

class DodgeCard extends Card {
  DodgeCard(int player) {
    super(player, ActionImgs.DODGE);
  }
  
  void execute(Character c) {
    c.actionDodge();
  }
}

class MeleeCard extends Card {
  MeleeCard(int player) {
    super(player, ActionImgs.MELEE);
  }
  
  void execute(Character c) {
    c.actionMelee();
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
}

class AttackCard extends Card {
  AttackCard(int player) {
    super(player, ActionImgs.ATTACK);
  }
  
  void execute(Character c) {
    c.actionAttack();
  }
}

class RoundhouseCard extends Card {
  RoundhouseCard(int player) {
    super(player, ActionImgs.ROUNDHOUSE);
  }
  
  void execute(Character c) {
    c.actionRoundhouse();
  }
}

class RollingAkimboLeftCard extends Card {
  RollingAkimboLeftCard(int player) {
    super(player, ActionImgs.ROLL_L);
  }
  
  void execute(Character c) {
    c.actionRollingPistolsRight();
  }
}

class RollingAkimboRightCard extends Card {
  RollingAkimboRightCard(int player) {
    super(player, ActionImgs.ROLL_R);
  }
  
  void execute(Character c) {
    c.actionRollingPistolsLeft();
  }
}

class DivingShotCard extends Card {
  DivingShotCard(int player) {
    super(player, ActionImgs.DIVE);
  }
  
  void execute(Character c) {
    c.actionDivingShot();
  }
}

class FlyingKickCard extends Card {
  FlyingKickCard(int player) {
    super(player, ActionImgs.KICK);
  }
  
  void execute(Character c) {
    c.actionFlyingKick();
  }
}



