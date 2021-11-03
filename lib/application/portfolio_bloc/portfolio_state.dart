part of 'portfolio_bloc.dart';

@freezed
class PortfolioState with _$PortfolioState {
  factory PortfolioState({
    required Option<List<TWDocument>> portfolioDocsOption,
    required bool uploading,
    required Option<Either<ServerError, Unit>> uploadResultOption,
  }) = _PortfolioState;

  factory PortfolioState.initial() => _PortfolioState(
        portfolioDocsOption: optionOf(null),
        uploading: false,
        uploadResultOption: optionOf(null),
      );
}
