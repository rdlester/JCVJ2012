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





<<<<<<< HEAD
=======


>>>>>>> db58a4b5f9878ae35a35db114657cc09f64c9e20
