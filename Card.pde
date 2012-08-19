static class Player {
  static final int ALEX = 0;
  static final int CHAD = 1;
  static final int GOON = 2;
  static final int MOON = 3;
  static final int KARA = 4;
}

static class CardConsts {
  static final int CARD_W = 116;
  static final int CARD_H = 176;
}

/**
 * Card - represents game action
 * Associated with player
 */
abstract class Card {
  PImage _card;
  int _player;

  Card(int player, String card) {
    _card = loadImage(card);
    _player = player;
  }

  int getPlayer() {
    return _player;
  }

  abstract void execute(Character c);

  void draw() {
    image(_card, 0, 0);
  }
}




