class GoonHand extends Hand {
  Card _queue;
  
  GoonHand() {
    super();
    _queue = null;
  }
  
  void playCard(Card c) {
    _queue = c;
    setReady(true);
  }
  
  Card getQueue() {
    assert _queue != null: "GoonHand: Gotta play a card before you can execute it!";
    Card temp = _queue;
    _queue = null;
    return temp;
  }
}


