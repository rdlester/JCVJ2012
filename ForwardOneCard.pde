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
