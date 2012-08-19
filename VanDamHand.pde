static class VanDamConsts {
  static final int ALEX_HAND_SIZE = 6;
  static final int CHAD_HAND_SIZE = 6;
  static final int QUEUE_SIZE = 6;

  static final int ALEX_X = 22;
  static final int ALEX_Y = 102;
  static final String ALEX_NAME = "images/UI/Name_Alex.png";
  static final int ALEX_NAME_X = 63;
  static final int ALEX_NAME_Y = 0;
  static final int ALEX_CARD1_X = 0;
  static final int ALEX_CARD1_Y = 47;
  static final int ALEX_CARD2_X = 127;
  static final int ALEX_CARD2_Y = 47;
  static final int ALEX_CARD3_X = 0;
  static final int ALEX_CARD3_Y = 247;
  static final int ALEX_CARD4_X = 127;
  static final int ALEX_CARD4_Y = 247;
  static final int ALEX_CARD5_X = 0;
  static final int ALEX_CARD5_Y = 443;
  static final int ALEX_CARD6_X = 127;
  static final int ALEX_CARD6_Y = 443;

  static final int CHAD_X = 298;
  static final int CHAD_Y = 102;
  static final String CHAD_NAME = "images/UI/Name_Chad.png";
  static final int CHAD_NAME_X = 40;
  static final int CHAD_NAME_Y = 0;
  static final int CHAD_CARD1_X = 0;
  static final int CHAD_CARD1_Y = 47;
  static final int CHAD_CARD2_X = 127;
  static final int CHAD_CARD2_Y = 47;
  static final int CHAD_CARD3_X = 0;
  static final int CHAD_CARD3_Y = 247;
  static final int CHAD_CARD4_X = 127;
  static final int CHAD_CARD4_Y = 247;
  static final int CHAD_CARD5_X = 0;
  static final int CHAD_CARD5_Y = 443;
  static final int CHAD_CARD6_X = 127;
  static final int CHAD_CARD6_Y = 443;
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
  
  ArrayList<Card> _queue;
  
  PImage alexName = loadImage(VanDamConsts.ALEX_NAME);
  PImage chadName = loadImage(VanDamConsts.CHAD_NAME);

  VanDamHand() {
    super();
    initAlexHand();
    initChadHand();
    _queue = new ArrayList<Card>(VanDamConsts.QUEUE_SIZE);
  }
  
  ArrayList<Card> getQueue() {
    assert _queue != null: "VanDamHand: Gotta pick 6 cards before you can execute them";
    ArrayList<Card> temp = _queue;
    _queue = null;
    return _queue;
  }

  void draw() {
    if(getTurn()) {
      // Translate to Alex's Hand
      pushMatrix();
      translate(VanDamConsts.ALEX_X, VanDamConsts.ALEX_Y);
      // Draw Title
      pushMatrix();
      translate(VanDamConsts.ALEX_NAME_X, VanDamConsts.ALEX_NAME_Y);
      image(alexName, 0, 0);
      popMatrix();

      // Draw cards
      pushMatrix();
      translate(VanDamConsts.ALEX_CARD1_X, VanDamConsts.ALEX_CARD1_Y);
      _alexHand[0].draw();
      popMatrix();
      pushMatrix();
      translate(VanDamConsts.ALEX_CARD2_X, VanDamConsts.ALEX_CARD2_Y);
      _alexHand[1].draw();
      popMatrix();
      pushMatrix();
      translate(VanDamConsts.ALEX_CARD3_X, VanDamConsts.ALEX_CARD3_Y);
      _alexHand[2].draw();
      popMatrix();
      pushMatrix();
      translate(VanDamConsts.ALEX_CARD4_X, VanDamConsts.ALEX_CARD4_Y);
      _alexHand[3].draw();
      popMatrix();
      pushMatrix();
      translate(VanDamConsts.ALEX_CARD5_X, VanDamConsts.ALEX_CARD5_Y);
      _alexHand[4].draw();
      popMatrix();
      pushMatrix();
      translate(VanDamConsts.ALEX_CARD6_X, VanDamConsts.ALEX_CARD6_Y);
      _alexHand[5].draw();
      popMatrix();

      popMatrix();

      // Translate to Chad's Hand
      pushMatrix();
      translate(VanDamConsts.CHAD_X, VanDamConsts.CHAD_Y);

      // Draw Title
      pushMatrix();
      translate(VanDamConsts.CHAD_NAME_X, VanDamConsts.CHAD_NAME_Y);
      image(chadName, 0, 0);
      popMatrix();

      // Draw cards
      pushMatrix();
      translate(VanDamConsts.CHAD_CARD1_X, VanDamConsts.CHAD_CARD1_Y);
      _chadHand[0].draw();
      popMatrix();
      pushMatrix();
      translate(VanDamConsts.CHAD_CARD2_X, VanDamConsts.CHAD_CARD2_Y);
      _chadHand[1].draw();
      popMatrix();
      pushMatrix();
      translate(VanDamConsts.CHAD_CARD3_X, VanDamConsts.CHAD_CARD3_Y);
      _chadHand[2].draw();
      popMatrix();
      pushMatrix();
      translate(VanDamConsts.CHAD_CARD4_X, VanDamConsts.CHAD_CARD4_Y);
      _chadHand[3].draw();
      popMatrix();
      pushMatrix();
      translate(VanDamConsts.CHAD_CARD5_X, VanDamConsts.CHAD_CARD5_Y);
      _chadHand[4].draw();
      popMatrix();
      pushMatrix();
      translate(VanDamConsts.CHAD_CARD6_X, VanDamConsts.CHAD_CARD6_Y);
      _chadHand[5].draw();
      popMatrix();

      popMatrix();
    }
  }

  void handleKeyMessage(KeyMessage m) {
    int key = m.getKeyCode();
    if(key == DELETE) {
      _queue.clear();
    } else if(key == ENTER && _queue.size() == VanDamConsts.QUEUE_SIZE) {
      setReady(true);
    }
    else if(_queue.size() < VanDamConsts.QUEUE_SIZE) {
      // Play card in Alex's hand
      if (key == Q) {
          _queue.add(_alexHand[0]);
      }
      else if (key == W) {
          _queue.add(_alexHand[1]);
      } 
      else if (key == A) {
          _queue.add(_alexHand[2]);
      }
      else if (key == S) {
          _queue.add(_alexHand[3]);
      }  
      else if (key == Z) {
          _queue.add(_alexHand[4]);
      }
      else if (key == X) {
          _queue.add(_alexHand[5]);
      }
      // Play card in Chad's hand
      else if (key == E) {
          _queue.add(_chadHand[0]);
      } 
      else if (key == R) {
          _queue.add(_chadHand[1]);
      }
      else if (key == D) {
          _queue.add(_chadHand[2]);
      } 
      else if (key == F) {
          _queue.add(_chadHand[3]);
      }   
      else if (key == C) {
          _queue.add(_chadHand[4]);
      } 
      else if (key == V) {
          _queue.add(_chadHand[5]);
      }
    }
  }

  void handleMouseMessage(MouseMessage m) {
    // TODO
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
    _alexHand[0] = alexDrawCard();
    _alexHand[1] = alexDrawCard();
    _alexHand[2] = new ForwardOneCard(Player.ALEX);
    _alexHand[3] = new AttackCard(Player.ALEX);
    _alexHand[4] = new RotateLeftCard(Player.ALEX);
    _alexHand[5] = new RotateRightCard(Player.ALEX);
  }

  void initChadHand() {
    _chadHand = new Card[VanDamConsts.CHAD_HAND_SIZE];
    _chadHand[0] = chadDrawCard();
    _chadHand[1] = chadDrawCard();
    _chadHand[2] = chadDrawCard();
    _chadHand[3] = chadDrawCard();
    _chadHand[4] = new StrafeLeftCard(Player.CHAD);
    _chadHand[5] = new StrafeRightCard(Player.CHAD);
  }
}





