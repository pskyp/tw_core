enum BidActions { OfferJob }

class BidAction {
  final String text;
  final BidActions action;

  BidAction(this.action, this.text);
}
