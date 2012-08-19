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
