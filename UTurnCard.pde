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
