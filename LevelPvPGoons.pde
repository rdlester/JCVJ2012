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
    register(new GoonsBoard());
    register(new VanDamHand());
    register(new GunGoonHand());
    register(new KungFuGoonHand());
    
    // Interactions between TurnController and objects
    
    // Subscriptions
  }
}



