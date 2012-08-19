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
    register(vanDamHand, turnController, new ShowVDInteractor());
    register(vanDamHand, turnController, new PlanVDInteractor());
    register(board, turnController, new ExecVDInteractor());
    register(board, turnController, new AnimVDInteractor());
    register(gunGoonHand, turnController, new ShowGunGoonInteractor());
    register(kungFuGoonHand, turnController, new ShowKungFuGoonHandInteractor());
    register(gunGoonHand, turnController, new PlanGoonInteractor());
    register(kungFuGoonHand, turnController, new PlanGoonInteractor());
    register(board, turnController, new ExecGoonInteractor());
    register(board, turnController, new AnimGoonInteractor());

    // Subscriptions
    // Alex's hand
    subscribe(vanDamHand, Q);
    subscribe(vanDamHand, W);
    subscribe(vanDamHand, A);
    subscribe(vanDamHand, S);
    subscribe(vanDamHand, Z);
    subscribe(vanDamHand, X);

    // Chad's hand
    subscribe(vanDamHand, E);
    subscribe(vanDamHand, R);
    subscribe(vanDamHand, D);
    subscribe(vanDamHand, F);
    subscribe(vanDamHand, C);
    subscribe(vanDamHand, V);

    // Gun Goon's hand
    subscribe(gunGoonHand, Q);
    subscribe(gunGoonHand, W);
    subscribe(gunGoonHand, E);
    subscribe(gunGoonHand, R);
    subscribe(gunGoonHand, A);
    subscribe(gunGoonHand, S);
    subscribe(gunGoonHand, D);

    // Kung Fu Goon's  hand
    subscribe(kungFuGoonHand, Q);
    subscribe(kungFuGoonHand, W);
    subscribe(kungFuGoonHand, E);
    subscribe(kungFuGoonHand, R);
    subscribe(kungFuGoonHand, S);
  }
}






