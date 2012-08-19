static class KungFuGoonConsts {
  static final String NAME = "images/UI/Name_Brawler1.png";

  static final int HAND_SIZE = 5;
}

class KungFuGoonHand extends GoonHand {
  Card[] _kungfuHand;

  PImage _kungfuName;

  KungFuGoonHand() {
    super();
    _kungfuName = loadImage(KungFuGoonConsts.NAME);
    _kungfuHand = new Card[KungFuGoonConsts.HAND_SIZE];
    _kungfuHand[0] = new ForwardOneCard(Player.GOON);
    _kungfuHand[1] = new ForwardTwoCard(Player.GOON);
    _kungfuHand[2] = new RotateLeftCard(Player.GOON);
    _kungfuHand[3] = new RotateRightCard(Player.GOON);
    _kungfuHand[4] = new MeleeCard(Player.GOON);
  }

  void draw() {
    if(getTurn()) {
      translate(GoonConsts.X, GoonConsts.Y);

      // Draw Title
      pushMatrix();
      translate(GoonConsts.NAME_X, GoonConsts.NAME_Y);
      image(_kungfuName, 0, 0);
      popMatrix();

      // Draw cards
      pushMatrix();
      translate(GoonConsts.CARD1_X, GoonConsts.CARD1_Y);
      _kungfuHand[0].draw();
      popMatrix();
      pushMatrix();
      translate(GoonConsts.CARD2_X, GoonConsts.CARD2_Y);
      _kungfuHand[1].draw();
      popMatrix();
      pushMatrix();
      translate(GoonConsts.CARD3_X, GoonConsts.CARD3_Y);
      _kungfuHand[2].draw();
      popMatrix();
      pushMatrix();
      translate(GoonConsts.CARD4_X, GoonConsts.CARD4_Y);
      _kungfuHand[3].draw();
      popMatrix();
      pushMatrix();
      translate(GoonConsts.CARD6_X, GoonConsts.CARD6_Y); // Note this is card 6, center of bottom row
      _kungfuHand[4].draw();
      popMatrix();
    }
  }
}



