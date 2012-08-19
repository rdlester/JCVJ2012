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
  Board _board;
  VanDamHand _vamDamHand;
  ArrayList<Hand> _evilHands;
  int _state;

  TurnController(Board board, VanDamHand vanDamHand) {
    _board = board;
    _vamDamHand = vanDamHand;
    _state = TurnState.PLANNING;
  }

  void nextTurn() {
  }
}





