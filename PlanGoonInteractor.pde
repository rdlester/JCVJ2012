class PlanGoonInteractor extends Interactor<TurnController, GoonHand> {
  PlanGoonInteractor() {
    super();
  }
  
  boolean detect(TurnController t, GoonHand h) {
    return h.getReady() && t.getState() == TurnState.PLAN_GOON;
  }
  
  void handle(TurnController t, GoonHand h) {
    h.setReady(false);
    h.setTurn(false);
    t.setQueueForExec(h.getQueue());
  }
}









