/**
 * Gun Goon, has a Gun, can shoot
 */
class GunGoon extends FiringCharacter {
  GunGoon(Board board) {
    super(TileType.GUN_GOON, board);
    _sprite.setActiveAnimation(Animations.iGEN_DWN_Fwd);
  }
  
  void draw() {
    
  }
  void drawAnimation() { 
    super.drawAnimation();
  }
}






