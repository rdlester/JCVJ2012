class ExecVDInteractor extends Interactor<TurnController, GoonsBoard> {
  ExecVDInteractor() {
    super();
  }
  
  boolean detect(TurnController t, GoonsBoard h) {
    return t.getState() == TurnState.EXEC_VD && h.getReady();
  }
  
  void handle(TurnController t, GoonsBoard h) {
    h.playCard(t.getNextVDMove());
  }
}









