static class MoveImgs {
  static final String BASE = "images/Cards/Card_";
  static final String F1 = BASE + "Fwd.png";
  static final String F2 = BASE + "Fwd2.png";
  static final String RL = BASE + "RotateLeft.png";
  static final String RR = BASE + "RotateRight.png";
  static final String UTURN = BASE + "Rotate180.png";
  static final String SL = BASE + "StrafeLeft.png";
  static final String SR = BASE + "StrafeRight.png";
  static final String BACK = BASE + "Back.png";
}

class ForwardOneCard extends Card {
  ForwardOneCard(int player) {
    super(player, MoveImgs.F1);
  }
  
  void execute(Character c) {
    c.moveForward();
  }
}

class ForwardTwoCard extends Card {
  ForwardTwoCard(int player) {
    super(player, MoveImgs.F2);
  }
  
  void execute(Character c) {
    c.moveForward2();
  }
}

class RotateLeftCard extends Card {
  RotateLeftCard(int player) {
    super(player, MoveImgs.RL);
  }
  
  void execute(Character c) {
    c.rotateLeft();
  }
}

class RotateRightCard extends Card {
  RotateRightCard(int player) {
    super(player, MoveImgs.RR);
  }
  
  void execute(Character c) {
    c.rotateRight();
  }
}

class UTurnCard extends Card {
  UTurnCard(int player) {
    super(player, MoveImgs.UTURN);
  }
  
  void execute(Character c) {
    c.rotateUTurn();
  }
}

class StrafeLeftCard extends Card {
  StrafeLeftCard(int player) {
    super(player, MoveImgs.SL);
  }
  
  void execute(Character c) {
    c.moveStrafeLeft();
  }
}

class StrafeRightCard extends Card {
  StrafeRightCard(int player) {
    super(player, MoveImgs.SR);
  }
  
  void execute(Character c) {
    c.moveStrafeRight();
  }
}

class BackCard extends Card {
  BackCard(int player) {
    super(player, MoveImgs.BACK);
  }
  
  void execute(Character c) {
    c.moveBackward();
  }
}