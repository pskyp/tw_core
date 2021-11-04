part of 'portfolio_bloc.dart';

@freezed
class PortfolioEvent with _$PortfolioEvent {
  factory PortfolioEvent.docsStreamUpdated(List<TWDocument> dcos) =
      DocsStreamUpdated;

  factory PortfolioEvent.uploadDocPressed(TWDocument doc) = UploadDocPressed;
}
