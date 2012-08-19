static class TurnState {
  static final int PLAN_VD = 0; // VanDam draws cards, chooses X to exec
  static final int EXEC_VD = 1; // Execute next VanDam card,
  static final int ANIM_VD = 2; // animate it
  static final int PLAN_GOON = 3; // Evil Player chooses response
  static final int EXEC_GOON = 4;
  static final int ANIM_EVIL = 5; // Execute Evil card, animate it
}

/**
 * Tracks game state
 * States are: Van Dam's turn, Evil turn, and Execution stage
 */
class TurnController extends HObject {
  ArrayList<Card> _queue;
  int _nextGoon;
  Card _evilMove;
  int _state;

  TurnController() {
    _queue = null;
    _nextGoon = null;
    _evilMove = null;
    _state = TurnState.PLANNING;
  }

  int getState() {
    return _state;
  }
  
  void setQueueForExec(ArrayList<Card> queue) {
    _state = TurnState.EXEC_VD;
    _queue = queue;
  }
  
  boolean isNextVDMove() {
    return _queue.size() > 0;
  }
  
  Card getNextVDMove() {
    assert _queue != null: println("TurnController _queue is null, no next move");
    assert _queue.size() > 0: println("TurnController: no more VD moves to play! go back to planning");
    _state = TurnState.ANIM_VD;
    return _queue.remove(0);
  }
  
  void animVDFinished(int goon) {
    _state = TurnState.COMBAT_EVIL;
    _nextGoon = goon;
  }
  
  void setQueueForExec(Card queue) {
    _state = TurnState.EXEC_EVIL;
    _evilMove = queue;
  }
  
  Card getNextGoonMove() {
    assert _queue != null: println("TurnController _evilMove is null, no next move");
    _state = TurnState.ANIM_EVIL;
    Card temp = _evilMove;
    _evilMove = null;
    return temp;
  }
  
  void animGoonFinished() {
    if(_queue.size() > 0) {
      _state = TurnState.EXEC_VD;
    } else {
      _state = TurnState.PLANNING;
    }
  }
}






