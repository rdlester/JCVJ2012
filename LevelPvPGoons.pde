/**
 * Two-Player level
 * Alex+Chad v. Goons (player controlled)
 * Only one that will be implemented for VanJam
 */
class LevelPvPGoons extends Level {
  LevelPvPGoons() {
    super();
  }

  void setup() {
    GoonsBoard board = new GoonsBoard();
    VanDamHand vanDamHand = new VanDamHand();
    GunGoonHand gunGoonHand = new GunGoonHand();
    KungFuGoonHand kungFuGoonHand = new KungFuGoonHand();
    TurnController turnController = new TurnController();

    register(board, false);
    register(vanDamHand, false);
    register(gunGoonHand, false);
    register(kungFuGoonHand, false);

    // Interactions between TurnController and objects
    register(turnController, vanDamHand, new ShowVDInteractor());
    register(turnController, vanDamHand, new PlanVDInteractor());
    register(turnController, board, new ExecVDInteractor());
    register(turnController, board, new AnimVDInteractor());
    register(turnController, gunGoonHand, new ShowGunGoonInteractor());
    register(turnController, kungFuGoonHand, new ShowKungFuGoonInteractor());
    register(turnController, gunGoonHand, new PlanGoonInteractor());
    register(turnController, kungFuGoonHand, new PlanGoonInteractor());
    register(turnController, board, new ExecGoonInteractor());
    register(turnController, board, new AnimGoonInteractor());

    // Subscriptions
    // Alex's hand
    subscribe(vanDamHand, POConstants.ENTER);
    subscribe(vanDamHand, POConstants.DELETE);
    subscribe(vanDamHand, POConstants.ALT);
    subscribe(vanDamHand, POConstants.Q);
    subscribe(vanDamHand, POConstants.W);
    subscribe(vanDamHand, POConstants.A);
    subscribe(vanDamHand, POConstants.S);
    subscribe(vanDamHand, POConstants.Z);
    subscribe(vanDamHand, POConstants.X);

    // Chad's hand
    subscribe(vanDamHand, POConstants.E);
    subscribe(vanDamHand, POConstants.R);
    subscribe(vanDamHand, POConstants.D);
    subscribe(vanDamHand, POConstants.F);
    subscribe(vanDamHand, POConstants.C);
    subscribe(vanDamHand, POConstants.V);

    // Gun Goon's hand
    subscribe(gunGoonHand, POConstants.Q);
    subscribe(gunGoonHand, POConstants.W);
    subscribe(gunGoonHand, POConstants.E);
    subscribe(gunGoonHand, POConstants.R);
    subscribe(gunGoonHand, POConstants.A);
    subscribe(gunGoonHand, POConstants.S);
    subscribe(gunGoonHand, POConstants.D);

    // Kung Fu Goon's  hand
    subscribe(kungFuGoonHand, POConstants.Q);
    subscribe(kungFuGoonHand, POConstants.W);
    subscribe(kungFuGoonHand, POConstants.E);
    subscribe(kungFuGoonHand, POConstants.R);
    subscribe(kungFuGoonHand, POConstants.S);
  }
  
  void draw() {
    background(0);
    super.draw();
  }
}

