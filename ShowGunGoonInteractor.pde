class ShowGunGoonInteractor extends Interactor<TurnController, GunGoonHand> {
  ShowGunGoonInteractor() {
    super();
  }
  
  boolean detect(TurnController t, GunGoonHand h) {
    return !h.getTurn() && t.getState() == TurnState.PLAN_GOON && t.getGoon() == TileType.GUN_GOON;
  }
  
  void handle(TurnController t, GunGoonHand h) {
    h.setReady(false);
    h.setTurn(true);
  }
}


