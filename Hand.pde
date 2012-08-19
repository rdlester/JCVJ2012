static class HandConsts {
  static final int HAND_X = 0;
  static final int HAND_Y = 0;
  static final int HAND_W = 542;
  static final int HAND_H = WINDOW_HEIGHT;
}

/**
 * Hand of Cards
 */
abstract class Hand extends Being {
  boolean _isTurn;
  boolean _ready;
  
  Hand() {
    super(new Rectangle(HandConsts.HAND_X, HandConsts.HAND_Y, HandConsts.HAND_W, HandConsts.HAND_H));
    _isTurn = false;
    _ready = false;
  }
  
  boolean getTurn() {
    return _isTurn;
  }
  
  void setTurn(boolean turn) {
    _isTurn = turn;
  }
  
  boolean getReady() {
    return _ready;
  }
  
  void setReady(boolean ready) {
    _ready = ready;
  }
}






