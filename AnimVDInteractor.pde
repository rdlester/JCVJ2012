class AnimVDInteractor extends Interactor<TurnController, GoonsBoard> {
  AnimVDInteractor() {
    super();
  }
  
  boolean detect(TurnController t, GoonsBoard h) {
    return t.getState() == TurnState.ANIM_VD && h.getReady();
  }
  
  void handle(TurnController t, GoonsBoard h) {
    t.animVDFinished(h.pickGoon());
  }
}


