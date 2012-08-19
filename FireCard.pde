class FireCard extends Card {
  FireCard(int player) {
    super(player);
  }
  
  void execute(Character c) {
    println("Can't call Fire on Character!");
  }
  
  void execute(FiringCharacter c) {
    c.actionFire();
  }
  
  void draw() {
    
  }
}
