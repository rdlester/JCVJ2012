class CombatVDExecInteractor extends Interactor<TurnController, GoonsBoard> {
  PlanningInteractor() {
    super();
  }
  
  boolean detect(TurnController t, GoonsBoard h) {
    return t.getState() == TurnState.COMBAT_VD && h.getReady();
  }
  
  void handle(TurnController t, GoonsBoard h) {
    h.nextCard(t.getNextVDMove());
    h.playCard();
  }
}