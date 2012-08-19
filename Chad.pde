/**
 * Chad - player controlled character
 * Very random, uncontrolled, but has special moves
 */
class Chad extends VanDammes {
  Chad(Board board) {
    super(TileType.CHAD, board);
    _sprite.setActiveAnimation(Animations.iGEN_DWN_Fwd);
  }
 
  void draw() {
  }
  
  void drawAnimation() { 
    super.drawAnimation();
  }
}





