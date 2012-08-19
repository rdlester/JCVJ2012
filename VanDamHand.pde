static class VanDamConsts {
  static final int ALEX_HAND_SIZE = 6;
  static final int CHAD_HAND_SIZE = 6;
  
  static final int ALEX_X = 50;
  static final int ALEX_Y = 50;
  static final int CHAD_X = 50;
  static final int CHAD_Y = 50;
}

static class AlexProb {
  static final int F1 = 25;
  static final int F2 = F1 + 1;
  static final int RL = F2 + 1;
  static final int RR = RL + 1;
  static final int UTURN = RR + 1;
  static final int BACK = UTURN + 1;
  static final int STRAFE_L = BACK + 1;
  static final int STRAFE_R = STRAFE_L + 1;
  static final int DODGE = STRAFE_R + 1;
  static final int MELEE = DODGE + 1;
  static final int FIRE = MELEE + 1;
  static final int ATTACK = FIRE + 1;
  static final int ROUNDHOUSE = ATTACK + 1;
  static final int ROLL_L = ROUNDHOUSE + 1;
  static final int ROLL_R = ROLL_L + 1;
  static final int DIVE = ROLL_R + 1;
  static final int KICK = DIVE + 1;
}

static class ChadProb {
  static final int F1 = 25;
  static final int F2 = F1 + 1;
  static final int RL = F2 + 1;
  static final int RR = RL + 1;
  static final int UTURN = RR + 1;
  static final int BACK = UTURN + 1;
  static final int STRAFE_L = BACK + 1;
  static final int STRAFE_R = STRAFE_L + 1;
  static final int DODGE = STRAFE_R + 1;
  static final int MELEE = DODGE + 1;
  static final int FIRE = MELEE + 1;
  static final int ATTACK = FIRE + 1;
  static final int ROUNDHOUSE = ATTACK + 1;
  static final int ROLL_L = ROUNDHOUSE + 1;
  static final int ROLL_R = ROLL_L + 1;
  static final int DIVE = ROLL_R + 1;
  static final int KICK = DIVE + 1;
}

/**
 * Van Dam Player's Hand
 * Displays on Screen
 * Two rows - one for Alex, one for Chad
 * Alex's cards are less random
 * Chad's are mostly random
 * Player queues multiple cards to execute in a turn
 */
class VanDamHand extends Hand {
  Card[] _alexHand;
  Card[] _chadHand;
  
  VanDamHand() {
    super();
    initAlexHand();
    initChadHand();
  }
  
  void initAlexHand() {
    _alexHand = new Card[HandConsts.ALEX_HAND_SIZE];
    _alexHand[0] = new ForwardOneCard();
    _alexHand[1] = new RotateLeftCard();
    _alexHand[2] = new RotateRightCard();
    _alexHand[3] = new AttackCard();
    _alexHand[4] = alexDrawCard();
    _alexHand[5] = alexDrawCard();
  }
  
  Card alexDrawCard() {
    int card = floor(random(KICK));
    Card next = null;
    if (card >= 0 && card < AlexProb.F1) {
      next = new ForwardOneCard();
    } 
    else if (card >= AlexProb.F1 && card < AlexProb.F2) {
      next = new ForwardTwoCard();
    } 
    else if (card >= AlexProb.F2 && card < AlexProb.RL) {
      next = new RotateLeftCard();
    } 
    else if (card >= AlexProb.RL && card < AlexProb.RR) {
      next = new RotateRightCard();
    } 
    else if (card >= AlexProb.RR && card < AlexProb.UTURN) {
      next = new UTurnCard();
    }
    else if (card >= AlexProb.UTURN && card < AlexProb.BACK) {
      next = new BackCard();
    }
    else if (card >= AlexProb.BACK && card < AlexProb.STRAFE_L) {
      next = new StrafeLeftCard();
    } 
    else if (card >= AlexProb.STRAFE_L && card < AlexProb.STRAFE_R) {
      next = new StrafeRightCard();
    }
    else if (card >= AlexProb.STRAFE_R && card < AlexProb.DODGE) {
      next = new DodgeCard();
    } 
    else if (card >= AlexProb.DODGE && card < AlexProb.FIRE) {
      next = new FireCard();
    } 
    else if (card >= AlexProb.FIRE && card < AlexProb.MELEE) {
      next = new MeleeCard();
    }
    else if (card >= AlexProb.MELEE && card < AlexProb.ATTACK) {
      next = new AttackCard();
    } 
    else if (card >= AlexProb.ATTACK && card < AlexProb.ROUNDHOUSE) {
      next = new RoundhouseCard();
    } 
    else if (card >= AlexProb.ROUNDHOUSE && card < AlexProb.ROLL_L) {
      next = new RollingAkimboLeftCard();
    } 
    else if (card >= AlexProb.ROLL_L && card < AlexProb.ROLL_R) {
      next = new RollingAkimboRightCard();
    } 
    else if (card >= AlexProb.ROLL_R && card < AlexProb.DIVE) {
      next = new DivingShotCard();
    } 
    else if (card >= AlexProb.DIVE && card < AlexProb.KICK) {
      next = new FlyingKickCard();
    }
    return next;
  }
  
  void initChadHand() {
    _chadHand = new Card[HandConsts.ALEX_HAND_SIZE];
    _chadHand[0] = new StrafeLeftCard();
    _chadHand[1] = new StrafeRightCard();
    _chadHand[2] = chadDrawCard();
    _chadHand[3] = chadDrawCard();
    _chadHand[4] = chadDrawCard();
    _chadHand[5] = chadDrawCard();
  }
  
  Card alexDrawCard() {
    int card = floor(random(KICK));
    Card next = null;
    if (card >= 0 && card < AlexProb.F1) {
      next = new ForwardOneCard();
    } 
    else if (card >= ChadProb.F1 && card < ChadProb.F2) {
      next = new ForwardTwoCard();
    } 
    else if (card >= ChadProb.F2 && card < ChadProb.RL) {
      next = new RotateLeftCard();
    } 
    else if (card >= ChadProb.RL && card < ChadProb.RR) {
      next = new RotateRightCard();
    } 
    else if (card >= ChadProb.RR && card < ChadProb.UTURN) {
      next = new UTurnCard();
    }
    else if (card >= ChadProb.UTURN && card < ChadProb.BACK) {
      next = new BackCard();
    }
    else if (card >= ChadProb.BACK && card < ChadProb.STRAFE_L) {
      next = new StrafeLeftCard();
    } 
    else if (card >= ChadProb.STRAFE_L && card < ChadProb.STRAFE_R) {
      next = new StrafeRightCard();
    }
    else if (card >= ChadProb.STRAFE_R && card < ChadProb.DODGE) {
      next = new DodgeCard();
    } 
    else if (card >= ChadProb.DODGE && card < ChadProb.FIRE) {
      next = new FireCard();
    } 
    else if (card >= ChadProb.FIRE && card < ChadProb.MELEE) {
      next = new MeleeCard();
    }
    else if (card >= ChadProb.MELEE && card < ChadProb.ATTACK) {
      next = new AttackCard();
    } 
    else if (card >= ChadProb.ATTACK && card < ChadProb.ROUNDHOUSE) {
      next = new RoundhouseCard();
    } 
    else if (card >= ChadProb.ROUNDHOUSE && card < ChadProb.ROLL_L) {
      next = new RollingAkimboLeftCard();
    } 
    else if (card >= ChadProb.ROLL_L && card < ChadProb.ROLL_R) {
      next = new RollingAkimboRightCard();
    } 
    else if (card >= ChadProb.ROLL_R && card < ChadProb.DIVE) {
      next = new DivingShotCard();
    } 
    else if (card >= ChadProb.DIVE && card < ChadProb.KICK) {
      next = new FlyingKickCard();
    }
    return next;
  }

  void update() {
    super.update();
  }

  void draw() {
    // Translate to Alex's Hand
    // Draw title
    // Draw cards
    
    // Translate to Chad's Hand
    // Draw Title
    // Draw cards
  }
  
  void handleKeyMessage(KeyMessage m) {
    
  }
  
  void handleMouseMessage(MouseMessage m) {
    
  }
}


