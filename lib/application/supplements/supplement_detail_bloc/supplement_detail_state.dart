part of 'supplement_detail_bloc.dart';

@freezed
class SupplementDetailState with _$SupplementDetailState {
  const factory SupplementDetailState({
    required Supplement supplement,
  }) = _SupplementDetailState;

  factory SupplementDetailState.initial({required Supplement supplement}) =>
      _SupplementDetailState(
        supplement: supplement,
      );
}
