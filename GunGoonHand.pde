static class GunGoonConsts {
  static final String NAME = "images/UI/Name_Gunner1.png";
  
  static final int HAND_SIZE = 7;
}

static class GoonConsts {
  static final int X = 38;
  static final int Y = 154;
  
  static final int NAME_X = 120;
  static final int NAME_Y = 0;
  static final int CARD1_X = 0;
  static final int CARD1_Y = 86;
  static final int CARD2_X = 127;
  static final int CARD2_Y = 86;
  static final int CARD3_X = 252;
  static final int CARD3_Y = 86;
  static final int CARD4_X = 377;
  static final int CARD4_Y = 86;
  static final int CARD5_X = 57;
  static final int CARD5_Y = 276;
  static final int CARD6_X = 189;
  static final int CARD6_Y = 276;
  static final int CARD7_X = 318;
  static final int CARD7_Y = 276;
}

class GunGoonHand extends GoonHand {
  Card[] _gunHand;
  
  PImage _gunName;
  
  GunGoonHand() {
    super();
    _gunName = loadImage(GunGoonConsts.NAME);
    _gunHand = new Card[GunGoonConsts.HAND_SIZE];
    _gunHand[0] = new ForwardOneCard(Player.GOON);
    _gunHand[1] = new RotateLeftCard(Player.GOON);
    _gunHand[2] = new RotateRightCard(Player.GOON);
    _gunHand[3] = new MeleeCard(Player.GOON);
    _gunHand[4] = new StrafeLeftCard(Player.GOON);
    _gunHand[5] = new StrafeRightCard(Player.GOON);
    _gunHand[6] = new FireCard(Player.GOON);
  }
  
  void draw() {
    if(getTurn()) {
      translate(GoonConsts.X, GoonConsts.Y);
    
      // Draw Title
      pushMatrix();
      translate(GoonConsts.NAME_X, GoonConsts.NAME_Y);
      image(_gunName, 0, 0);
      popMatrix();

      // Draw cards
      pushMatrix();
      translate(GoonConsts.CARD1_X, GoonConsts.CARD1_Y);
      _gunHand[0].draw();
      popMatrix();
      pushMatrix();
      translate(GoonConsts.CARD2_X, GoonConsts.CARD2_Y);
      _gunHand[1].draw();
      popMatrix();
      pushMatrix();
      translate(GoonConsts.CARD3_X, GoonConsts.CARD3_Y);
      _gunHand[2].draw();
      popMatrix();
      pushMatrix();
      translate(GoonConsts.CARD4_X, GoonConsts.CARD4_Y);
      _gunHand[3].draw();
      popMatrix();
      pushMatrix();
      translate(GoonConsts.CARD5_X, GoonConsts.CARD5_Y);
      _gunHand[4].draw();
      popMatrix();
      pushMatrix();
      translate(GoonConsts.CARD6_X, GoonConsts.CARD6_Y);
      _gunHand[5].draw();
      popMatrix();
      pushMatrix();
      translate(GoonConsts.CARD7_X, GoonConsts.CARD7_Y);
      _gunHand[6].draw();
      popMatrix();
    }
  }
}





