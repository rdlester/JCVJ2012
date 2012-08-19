class GoonExecInteractor extends Interactor<TurnController, GoonHand> {
  GoonExecInteractor() {
    super();
  }
  
  boolean detect(TurnController t, GoonHand h) {
    return h.getReady() && t.getState() == TurnState.EXEC_GOON;
  }
  
  void handle(TurnController t, GoonHand h) {
    h.setReady(false);
    h.setTurn(false);
    t.setQueueForExec(h.getQueue());
  }
}
