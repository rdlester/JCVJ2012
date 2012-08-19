static class Player {
  static final int ALEX = 0;
  static final int CHAD = 1;
  static final int GOON = 2;
  static final int MOON = 3;
  static final int KARA = 4;
}

/**
 * Card - represents game action
 * Associated with player
 */
abstract class Card {
  int _player;

  Card(int player) {
    _player = player;
  }

  int getPlayer() {
    return _player;
  }

  abstract void execute(Character c);

  abstract void draw();
}



