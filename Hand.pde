static class HandConsts {
  static final int HAND_X = 0;
  static final int HAND_Y = 600;
  static final int HAND_W = 500;
  static final int HAND_H = 200;

  static final int ALEX_HAND_SIZE = 6;
  static final int CHAD_HAND_SIZE = 6;
}

/**
 * Hand of Cards
 */
class Hand extends Being {
  ArrayList<Card> _cards;
  
  Hand(Rectangle shape) {
    super(new Rectangle(HandConsts.HAND_X, HandConsts.HAND_Y, HandConsts.HAND_W, HandConsts.HAND_H);
    _cards = new ArrayList<Card>();
  }

  public void update() {
    // Add update method here
  }

  public void draw() {
    // Add your draw method here
  }
}



