class ForwardOneCard extends Card {
  ForwardOneCard(int player) {
    super(player);
  }
  
  void execute(Character c) {
    c.moveForward();
  }
  
  void draw() {
    
  }
}

class ForwardTwoCard extends Card {
  ForwardTwoCard(int player) {
    super(player);
  }
  
  void execute(Character c) {
    c.moveForward2();
  }
  
  void draw() {
    
  }
}

class RotateLeftCard extends Card {
  RotateLeftCard(int player) {
    super(player);
  }
  
  void execute(Character c) {
    c.rotateLeft();
  }
  
  void draw() {
    
  }
}

class RotateRightCard extends Card {
  RotateRightCard(int player) {
    super(player);
  }
  
  void execute(Character c) {
    c.rotateRight();
  }
  
  void draw() {
    
  }
}

class UTurnCard extends Card {
  UTurnCard(int player) {
    super(player);
  }
  
  void execute(Character c) {
    c.rotateUTurn();
  }
  
  void draw() {
    
  }
}

class StrafeLeftCard extends Card {
  StrafeLeftCard(int player) {
    super(player);
  }
  
  void execute(Character c) {
    c.strafeLeft();
  }
  
  void draw() {
    
  }
}

class StrafeRightCard extends Card {
  StrafeRightCard(int player) {
    super(player);
  }
  
  void execute(Character c) {
    c.strafeRight();
  }
  
  void draw() {
    
  }
}

class BackCard extends Card {
  BackCard(int player) {
    super(player);
  }
  
  void execute(Character c) {
    c.moveBack();
  }
  
  void draw() {
    
  }
}

