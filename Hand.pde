static class HandConsts {
  static final int HAND_X = 0;
  static final int HAND_Y = 600;
  static final int HAND_W = 500;
  static final int HAND_H = 200;
}

/**
 * Hand of Cards
 */
class Hand extends Being {
  
  Hand() {
    super(new Rectangle(HandConsts.HAND_X, HandConsts.HAND_Y, HandConsts.HAND_W, HandConsts.HAND_H));
  }

  public void update() {
    // Add update method here
  }

  public void draw() {
    // Add your draw method here
  }
}


