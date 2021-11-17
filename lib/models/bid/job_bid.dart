import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/models/feedback/bid_feedback/job_bid_feedback/job_bid_feedback.dart';
import 'package:tw_core/models/job/job.dart';
import 'package:tw_core/models/subbie/subbie_model.dart';
import 'package:tw_core/models/work/work.dart';

part 'job_bid.freezed.dart';
part 'job_bid.g.dart';

enum JobBidStatuses { New, Negotiating, Offered, Hired, Rejected, Old }

@freezed
class JobBid with _$JobBid implements WorkBid {
  const factory JobBid({
    required BidIdentifier bidIdentifier,
    required JobBidStatuses jobBidStatus,
    required JobBidFeedback? feedback,
  }) = _JobBid;

  factory JobBid.neu({required Job job, required Subbie subbie}) {
    return _JobBid(
      feedback: null,
      bidIdentifier: BidIdentifier(
        workIdentifier: job.workIdentifier,
        bidType: BidType.JobBid,
        bidId: subbie.basicProfile.uid + job.workIdentifier.workId,
        bidder: subbie.basicProfile,
        appliedOn: DateTime.now(),
      ),
      jobBidStatus: JobBidStatuses.New,
    );
  }

  factory JobBid.fromJson(Map<String, dynamic> json) => _$JobBidFromJson(json);
}

// @JsonSerializable(explicitToJson: true)
// class Bid {
//   final String bidId;
//   final String jobId;
//   final String title;
//   final String description;
//   final String developmentTitle;
//   final Trade trade;
//   final DateTime appliedOn;
//   final String address;
//   final String contractorId;
//   final bool seenByContractor;
//
//   //the person field is kinda unnecessary in the subbie app
//   //since a subbie can only view his own bids
//   //but for the sake of sameness with the contractor app the person object is here
//   final TWUser subbieTWUser;
//
//   final BidStatuses status;
//
//   Bid({
//     required this.jobId,
//     required this.bidId,
//     required this.contractorId,
//     required this.title,
//     required this.developmentTitle,
//     required this.subbieTWUser,
//     required this.address,
//     required this.seenByContractor,
//     required this.description,
//     required this.status,
//     required this.appliedOn,
//     required this.trade,
//   });
//
//   factory Bid.neu({required Job job, required TWUser loggedInUser}) {
//     return Bid(
//       jobId: job.workIdentifier.workId,
//       bidId: loggedInUser.uid + job.workIdentifier.workId,
//       contractorId: job.workIdentifier.employer.uid,
//       title: job.workIdentifier.title,
//       developmentTitle: job.developmentTitle,
//       subbieTWUser: loggedInUser,
//       address: job.location.completeAddress,
//       seenByContractor: false,
//       description: job.description,
//       status: BidStatuses.New,
//       appliedOn: DateTime.now(),
//       trade: job.trade,
//     );
//   }
//
//   factory Bid.fromJson(Map<String, dynamic> json) => _$BidFromJson(json);
//   Map<String, dynamic> toJson() => _$BidToJson(this);
//
//   String get shortDescription => description.length < 80
//       ? description
//       : description.substring(0, 70) + '...';
//
//   get shortTitle => title.length < 50 ? title : title.substring(0, 45) + '...';
//
//   get shortAddress =>
//       address.length < 50 ? address : address.substring(0, 50) + '...';
//
//   List<BidAction> get availableActions {
//     if (status != BidStatuses.Offered &&
//         status != BidStatuses.Hired &&
//         status != BidStatuses.Old)
//       return [BidAction(BidActions.OfferJob, 'Offer Job')];
//     return [];
//   }
//
//   bool get canChat => status != BidStatuses.New;
//   bool get canInvoice => status == BidStatuses.Hired;
//
//   Bid copyWithNeuStatus(BidStatuses status) {
//     return Bid(
//       status: status,
//       jobId: this.jobId,
//       bidId: this.bidId,
//       contractorId: this.contractorId,
//       title: this.title,
//       developmentTitle: this.developmentTitle,
//       subbieTWUser: this.subbieTWUser,
//       address: this.address,
//       seenByContractor: this.seenByContractor,
//       description: this.description,
//       appliedOn: this.appliedOn,
//       trade: this.trade,
//     );
//   }
// }
