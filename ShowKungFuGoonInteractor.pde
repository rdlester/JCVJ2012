class ShowKungFuGoonInteractor extends Interactor<TurnController, KungFuGoonHand> {
  ShowKungFuGoonInteractor() {
    super();
  }
  
  boolean detect(TurnController t, KungFuGoonHand h) {
    return !h.getTurn() && t.getState() == TurnState.PLAN_GOON && t.getGoon() == TileType.KUNG_FU_GOON;
  }
  
  void handle(TurnController t, KungFuGoonHand h) {
    h.setReady(false);
    h.setTurn(true);
  }
}









