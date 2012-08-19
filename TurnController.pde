static class TurnState {
  static final int PLANNING = 0; // VanDam draws cards, chooses X to exec
  static final int COMBAT_VD = 1; // Execute next VanDam card
  static final int COMBAT_EVIL = 2; // Evil Player chooses response
}

/**
 * Tracks game state
 * States are: Van Dam's turn, Evil turn, and Execution stage
 */
class TurnController extends HObject {
  ArrayList<Card> _queue;
  Card _evilMove;
  int _state;

  TurnController() {
    _queue = null;
    _state = TurnState.PLANNING;
  }

  int getState() {
    return _state;
  }
  
  void setQueueForExec(ArrayList<Card> queue) {
    _state = TurnState.COMBAT_VD;
    _queue = queue;
  }
  
  Card getNextVDMove() {
    assert _queue.size() > 0: "TurnController: no more VD moves to play! go back to planning"
    return _queue.remove(0);
  }
  
  void setQueueForExec(Card queue) {
    
  }
}






