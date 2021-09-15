part of 'add_twdoc_bloc.dart';

@freezed
class AddTWDocState with _$AddTWDocState {
  const factory AddTWDocState({
    required String docName,
  }) = _AddTWDocState;

  factory AddTWDocState.initial() => _AddTWDocState(
        docName: '',
      );
}
