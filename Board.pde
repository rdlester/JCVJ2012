static class BoardConsts {
  static final int BOARD_X = 100;
  static final int BOARD_Y = 50;
  static final int BOARD_W = 560;
  static final int BOARD_H = 700;

  static final int GRID_W = 8;
  static final int GRID_H = 10;

  static final int TILE_W = BOARD_W / GRID_W;
  static final int TILE_H = BOARD_H / GRID_H;
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
    _alex = new Alex(this);
    _chad = new Chad(this);
    initBoard();
    _playedCard = null;
  }

  // Sets up Grid, places Alex and Chad at start points
  abstract void initBoard();

  Tile get(int i, int j) {
    return _grid[i][j];
  }

  // Returns tile that was replaced
  Tile set(int i, int j, Tile t) {
    Tile replaced = _grid[i][j];
    _grid[i][j] = t;
    return replaced;
  }

  Alex getAlex() {
    return _alex;
  }

  Chad getChad() {
    return _chad;
  }

  public void nextCard(Card c) {
    _playedCard = c;
  }

  // Subclass updates should handle other players
  public void update() {
    if (_playedCard != null) {
      playCard(_playedCard.getPlayer());
    }
  }

  public void playCard(int player) {
    if (player == Player.ALEX) {
      _playedCard.execute(getAlex());
      _playedCard = null;
    } 
    else if (player == Player.CHAD) {
      _playedCard.execute(getChad());
      _playedCard = null;
    }
  }

  public void draw() {
    for (int i = 0; i < BoardConsts.GRID_W; i++) { // row by row
      pushMatrix();

      for (int j = 0; j < BoardConsts.GRID_H; j++) { // iterate down the columns
        pushStyle();
        get(i, j).draw();
        popStyle();
        translate(0, BoardConsts.TILE_H);
      }

      popMatrix();
      translate(BoardConsts.TILE_W, 0);
    }
  }
}


