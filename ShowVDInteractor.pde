class ShowVDInteractor extends Interactor<TurnController, VanDamHand> {
  ShowVDInteractor() {
    super();
  }
  
  boolean detect(TurnController t, VanDamHand h) {
    return !h.getTurn() && t.getState() == TurnState.PLAN_VD;
  }
  
  void handle(TurnController t, VanDamHand h) {
    h.setReady(false);
    h.setTurn(true);
  }
}









