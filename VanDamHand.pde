static class VanDamConsts {
  static final int ALEX_HAND_SIZE = 6;
  static final int CHAD_HAND_SIZE = 6;
  
  static final int ALEX_X = 50;
  static final int ALEX_Y = 50;
  static final int ALEX_NAME_X = 20;
  static final int ALEX_NAME_Y = 20;
  static final int ALEX_CARD1_X = 10;
  static final int ALEX_CARD1_Y = 10;
  static final int ALEX_CARD2_X = 10;
  static final int ALEX_CARD2_Y = 10;
  static final int ALEX_CARD3_X = 10;
  static final int ALEX_CARD3_Y = 10;
  static final int ALEX_CARD4_X = 10;
  static final int ALEX_CARD4_Y = 10;
  static final int ALEX_CARD5_X = 10;
  static final int ALEX_CARD5_Y = 10;
  static final int ALEX_CARD6_X = 10;
  static final int ALEX_CARD6_Y = 10;
  
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
  
  void update() {
    super.update();
  }

  void draw() {
    // Translate to Alex's Hand
    pushMatrix();
    translate(VanDamConsts.ALEX_X, VanDamConsts.ALEX_Y);
    // Draw Title
    translate(VanDamConsts.ALEX_NAME_X, VanDamConsts.ALEX_NAME_Y);
    // TODO: title
    
    // Draw cards
    
    popMatrix();
    
    // Translate to Chad's Hand
    pushMatrix();
    // Draw Title
    // Draw cards
    
    popMatrix();
  }
  
  void handleKeyMessage(KeyMessage m) {
    
  }
  
  void handleMouseMessage(MouseMessage m) {
    
  }
  
  public Card alexDrawCard() {
    int card = floor(random(AlexProb.KICK));
    Card next = null;
    if (card >= 0 && card < AlexProb.F1) {
      next = new ForwardOneCard(Player.ALEX);
    } 
    else if (card >= AlexProb.F1 && card < AlexProb.F2) {
      next = new ForwardTwoCard(Player.ALEX);
    } 
    else if (card >= AlexProb.F2 && card < AlexProb.RL) {
      next = new RotateLeftCard(Player.ALEX);
    } 
    else if (card >= AlexProb.RL && card < AlexProb.RR) {
      next = new RotateRightCard(Player.ALEX);
    } 
    else if (card >= AlexProb.RR && card < AlexProb.UTURN) {
      next = new UTurnCard(Player.ALEX);
    }
    else if (card >= AlexProb.UTURN && card < AlexProb.BACK) {
      next = new BackCard(Player.ALEX);
    }
    else if (card >= AlexProb.BACK && card < AlexProb.STRAFE_L) {
      next = new StrafeLeftCard(Player.ALEX);
    } 
    else if (card >= AlexProb.STRAFE_L && card < AlexProb.STRAFE_R) {
      next = new StrafeRightCard(Player.ALEX);
    }
    else if (card >= AlexProb.STRAFE_R && card < AlexProb.DODGE) {
      next = new DodgeCard(Player.ALEX);
    } 
    else if (card >= AlexProb.DODGE && card < AlexProb.FIRE) {
      next = new FireCard(Player.ALEX);
    } 
    else if (card >= AlexProb.FIRE && card < AlexProb.MELEE) {
      next = new MeleeCard(Player.ALEX);
    }
    else if (card >= AlexProb.MELEE && card < AlexProb.ATTACK) {
      next = new AttackCard(Player.ALEX);
    } 
    else if (card >= AlexProb.ATTACK && card < AlexProb.ROUNDHOUSE) {
      next = new RoundhouseCard(Player.ALEX);
    } 
    else if (card >= AlexProb.ROUNDHOUSE && card < AlexProb.ROLL_L) {
      next = new RollingAkimboLeftCard(Player.ALEX);
    } 
    else if (card >= AlexProb.ROLL_L && card < AlexProb.ROLL_R) {
      next = new RollingAkimboRightCard(Player.ALEX);
    } 
    else if (card >= AlexProb.ROLL_R && card < AlexProb.DIVE) {
      next = new DivingShotCard(Player.ALEX);
    } 
    else if (card >= AlexProb.DIVE && card < AlexProb.KICK) {
      next = new FlyingKickCard(Player.ALEX);
    }
    return next;
  }
  
  Card chadDrawCard() {
    int card = floor(random(ChadProb.KICK));
    Card next = null;
    if (card >= 0 && card < ChadProb.F1) {
      next = new ForwardOneCard(Player.CHAD);
    } 
    else if (card >= ChadProb.F1 && card < ChadProb.F2) {
      next = new ForwardTwoCard(Player.CHAD);
    } 
    else if (card >= ChadProb.F2 && card < ChadProb.RL) {
      next = new RotateLeftCard(Player.CHAD);
    } 
    else if (card >= ChadProb.RL && card < ChadProb.RR) {
      next = new RotateRightCard(Player.CHAD);
    } 
    else if (card >= ChadProb.RR && card < ChadProb.UTURN) {
      next = new UTurnCard(Player.CHAD);
    }
    else if (card >= ChadProb.UTURN && card < ChadProb.BACK) {
      next = new BackCard(Player.CHAD);
    }
    else if (card >= ChadProb.BACK && card < ChadProb.STRAFE_L) {
      next = new StrafeLeftCard(Player.CHAD);
    } 
    else if (card >= ChadProb.STRAFE_L && card < ChadProb.STRAFE_R) {
      next = new StrafeRightCard(Player.CHAD);
    }
    else if (card >= ChadProb.STRAFE_R && card < ChadProb.DODGE) {
      next = new DodgeCard(Player.CHAD);
    } 
    else if (card >= ChadProb.DODGE && card < ChadProb.FIRE) {
      next = new FireCard(Player.CHAD);
    } 
    else if (card >= ChadProb.FIRE && card < ChadProb.MELEE) {
      next = new MeleeCard(Player.CHAD);
    }
    else if (card >= ChadProb.MELEE && card < ChadProb.ATTACK) {
      next = new AttackCard(Player.CHAD);
    } 
    else if (card >= ChadProb.ATTACK && card < ChadProb.ROUNDHOUSE) {
      next = new RoundhouseCard(Player.CHAD);
    } 
    else if (card >= ChadProb.ROUNDHOUSE && card < ChadProb.ROLL_L) {
      next = new RollingAkimboLeftCard(Player.CHAD);
    } 
    else if (card >= ChadProb.ROLL_L && card < ChadProb.ROLL_R) {
      next = new RollingAkimboRightCard(Player.CHAD);
    } 
    else if (card >= ChadProb.ROLL_R && card < ChadProb.DIVE) {
      next = new DivingShotCard(Player.CHAD);
    } 
    else if (card >= ChadProb.DIVE && card < ChadProb.KICK) {
      next = new FlyingKickCard(Player.CHAD);
    }
    return next;
  }
  
  void initAlexHand() {
    _alexHand = new Card[VanDamConsts.ALEX_HAND_SIZE];
    _alexHand[0] = new ForwardOneCard(Player.ALEX);
    _alexHand[1] = new RotateLeftCard(Player.ALEX);
    _alexHand[2] = new RotateRightCard(Player.ALEX);
    _alexHand[3] = new AttackCard(Player.ALEX);
    _alexHand[4] = alexDrawCard();
    _alexHand[5] = alexDrawCard();
  }
  
  void initChadHand() {
    _chadHand = new Card[VanDamConsts.CHAD_HAND_SIZE];
    _chadHand[0] = new StrafeLeftCard(Player.CHAD);
    _chadHand[1] = new StrafeRightCard(Player.CHAD);
    _chadHand[2] = chadDrawCard();
    _chadHand[3] = chadDrawCard();
    _chadHand[4] = chadDrawCard();
    _chadHand[5] = chadDrawCard();
  }
}


