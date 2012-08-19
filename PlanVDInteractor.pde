class PlanVDInteractor extends Interactor<TurnController, VanDamHand> {
  PlanVDInteractor() {
    super();
  }
  
  boolean detect(TurnController t, VanDamHand h) {
    return h.getReady() && t.getState() == TurnState.PLAN_VD;
  }
  
  void handle(TurnController t, VanDamHand h) {
    h.setReady(false);
    h.setTurn(false);
    t.setQueueForExec(h.getQueue());
  }
}


