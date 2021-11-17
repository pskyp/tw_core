enum JobActions { ToggleBidding, CompleteJob, InviteFavourites }

class JobAction {
  final String text;
  final JobActions action;
  // final bool requiresInternetConnectivity;

  JobAction(this.action, this.text);
}
