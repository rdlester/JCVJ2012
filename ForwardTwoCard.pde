class ForwardTwoCard extends Card {
  ForwardTwoCard(int player) {
    super(player);
  }
  
  void execute(Character c) {
    println("Can't run ForwardTwo on unspecified character");
  }
  
  void execute(Alex c) {
    c.moveForward2();
  }
  
  void execute(Chad c) {
    c.moveForward2();
  }
  
  void execute(KungFuGoon c) {
    c.moveForward2();
  }
  
  void draw() {
    
  }
}
