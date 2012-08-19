class ExecGoonInteractor extends Interactor<TurnController, GoonsBoard> {
  ExecGoonInteractor() {
    super();
  }
  
  boolean detect(TurnController t, GoonsBoard h) {
    return h.getReady() && t.getState() == TurnState.EXEC_GOON;
  }
  
  void handle(TurnController t, GoonsBoard h) {
    h.playCard(t.getNextGoonMove());
  }
}









