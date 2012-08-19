class PlanningInteractor extends Interactor<TurnController, GoonHand> {
  PlanningInteractor() {
    super();
  }
  
  boolean detect(TurnController t, GoonHand h) {
    return h.getReady() && t.getState() == TurnState.COMBAT_EVIL;
  }
  
  void handle(TurnController t, GoonHand h) {
    h.setReady(false);
    h.setTurn(false);
    t.setEvilForExec(h.getQueue());
  }
}
