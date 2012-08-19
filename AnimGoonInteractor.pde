class AnimGoonInteractor extends Interactor<TurnController, GoonsBoard> {
  AnimGoonInteractor() {
    super();
  }
  
  boolean detect(TurnController t, GoonsBoard h) {
    return t.getState() == TurnState.ANIM_GOON && h.getReady();
  }
  
  void handle(TurnController t, GoonsBoard h) {
    t.animGoonFinished();
  }
}









