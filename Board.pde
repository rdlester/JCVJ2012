static class BoardConsts {
  static final int BOARD_X = 100;
  static final int BOARD_Y = 50;
  static final int BOARD_W = 500;
  static final int BOARD_H = 500;
}

/**
 * Grid of Tiles making up the Board (accesible via get)
 * Special getters for Alex, Chad (subclasses contain getters for Moon, Kara, or goons)
 * Handles updating the Board when Cards are played (via double dispatch)
 */
abstract class Board extends Being {
  Tile[][] _grid;

  Alex _alex;
  Chad _chad;

  Card _playedCard;

  Board() {
    super(new Rectangle(BoardConsts.BOARD_X, BoardConsts.BOARD_Y, BoardConsts.BOARD_W, BoardConsts.BOARD_H));
    initBoard();
    _playedCard = null;
  }

  abstract void initBoard();

  Tile get(int i, int j) {
    return _grid[i][j];
  }

  Alex getAlex() {
    return _alex;
  }

  Chad getChad() {
    return _chad;
  }

  public void update() {
    if (_playedCard != null) {
      int player = _playedCard.getPlayer();
      if (player == Player.ALEX) {
      }
    }
  }

  public void draw() {
    // Add your draw method here
  }
}

