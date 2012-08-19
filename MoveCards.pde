static class MoveImgs {
  static final String BASE = "images/Cards/";
  static final String F1 = BASE + "";
  static final String F2 = BASE + "";
  static final String RL = BASE + "";
  static final String RR = BASE + "";
  static final String UTURN = BASE + "";
  static final String SL = BASE + "";
  static final String SR = BASE + "";
  static final String BACK = BASE + "";
}

class ForwardOneCard extends Card {
  ForwardOneCard(int player) {
    super(player, MoveImgs.F1);
  }
  
  void execute(Character c) {
    c.moveForward();
  }
  
  void draw() {
    
  }
}

class ForwardTwoCard extends Card {
  ForwardTwoCard(int player) {
    super(player, MoveImgs.F2);
  }
  
  void execute(Character c) {
    c.moveForward2();
  }
  
  void draw() {
    
  }
}

class RotateLeftCard extends Card {
  RotateLeftCard(int player) {
    super(player, MoveImgs.RL);
  }
  
  void execute(Character c) {
    c.rotateLeft();
  }
  
  void draw() {
    
  }
}

class RotateRightCard extends Card {
  RotateRightCard(int player) {
    super(player, MoveImgs.RR);
  }
  
  void execute(Character c) {
    c.rotateRight();
  }
  
  void draw() {
    
  }
}

class UTurnCard extends Card {
  UTurnCard(int player) {
    super(player, MoveImgs.UTURN);
  }
  
  void execute(Character c) {
    c.rotateUTurn();
  }
  
  void draw() {
    
  }
}

class StrafeLeftCard extends Card {
  StrafeLeftCard(int player) {
    super(player, MoveImgs.SL);
  }
  
  void execute(Character c) {
    c.moveStrafeLeft();
  }
  
  void draw() {
    
  }
}

class StrafeRightCard extends Card {
  StrafeRightCard(int player) {
    super(player, MoveImgs.SR);
  }
  
  void execute(Character c) {
    c.moveStrafeRight();
  }
  
  void draw() {
    
  }
}

class BackCard extends Card {
  BackCard(int player) {
    super(player, MoveImgs.BACK);
  }
  
  void execute(Character c) {
    c.moveBackward();
  }
  
  void draw() {
    
  }
}

