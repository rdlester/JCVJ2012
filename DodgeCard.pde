class DodgeCard extends Card {
  DodgeCard(int player) {
    super(player);
  }
  
  void execute(Character c) {
    c.actionDodge();
  }
  
  void draw() {
    
  }
}
