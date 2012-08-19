/**
 * A game level - Alex+Chad v. (Goons or Moon+Kara, see subclasses)
 * Contains a Board, TurnController, and Hands
 */
abstract class Level extends World {
  Board _board;
  PlayerHand _hand;
  TurnController _turn;
  
  Level() {
    super();
  }

  void setup() {
    
  }
}

