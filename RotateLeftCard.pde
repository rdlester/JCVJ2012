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
