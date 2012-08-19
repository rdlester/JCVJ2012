class MeleeCard extends Card {
  MeleeCard(int player) {
    super(player);
  }
  
  void execute(Character c) {
    c.actionMelee();
  }
  
  void draw() {
    
  }
}
