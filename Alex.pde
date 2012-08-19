/**
 * Alex - player controlled character
 * Behaves less randomly
 */
class Alex extends VanDammes {
  Alex(Board board) {
    super(TileType.ALEX, board);
    _sprite.setActiveAnimation(Animations.iGEN_DWN_Fwd);
  }

  void draw() {
  }
  

}








