static class BoardConsts {
  static final String BACKGROUND = "images/Background.png";
  
  static final int BOARD_X = 542;
  static final int BOARD_Y = 0;
  static final int BOARD_W = WINDOW_WIDTH - BOARD_X;
  static final int BOARD_H = WINDOW_HEIGHT;

  // Actual grid will be + 2, outer ring will be Indestructible tiles
  static final int GRID_START_X = 56;
  static final int GRID_START_Y = 80;
  static final int GRID_START_W = BOARD_W - GRID_START_X*2;
  static final int GRID_START_H = BOARD_H - GRID_START_Y*2;
  static final int GRID_W = 8;
  static final int GRID_H = 10;

  static final int TILE_W = GRID_START_W / GRID_W;
  static final int TILE_H = GRID_START_H / GRID_H;
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
  
  PImage _background;

  Board() {
    super(new Rectangle(BoardConsts.BOARD_X, BoardConsts.BOARD_Y, BoardConsts.BOARD_W, BoardConsts.BOARD_H));
    _background = loadImage(BoardConsts.BACKGROUND);
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

  public void playCard(Card c) {
    int player = c.getPlayer();
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
    //image(_background, 0, 0);
  }
}