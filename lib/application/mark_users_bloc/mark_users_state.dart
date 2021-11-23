part of 'mark_users_bloc.dart';

@freezed
class MarkUsersState with _$MarkUsersState {
  const MarkUsersState._();
  factory MarkUsersState({
    required Option<KtList<MarkedUser>> markedUsersOption,
    required bool fetchingMarkedUsers,
    required Option<Either<TWServerError, Unit>> resultOption,
    required bool submissionInProgress,
  }) = _MarkUsersState;

  factory MarkUsersState.initial() => _MarkUsersState(
        markedUsersOption: TAJFacade.markedUsers,
        fetchingMarkedUsers: TAJFacade.markedUsers.isNone(),
        resultOption: optionOf(null),
        submissionInProgress: false,
      );

  Option<KtList<MarkedUser>> get favouriteUsersOption => markedUsersOption.fold(
        () => optionOf(null),
        (markedUsers) => optionOf(
          markedUsers.filter((markedUser) => markedUser.markedAsFavourite),
        ),
      );

  Option<KtList<MarkedUser>> get blackListedUsersOption =>
      markedUsersOption.fold(
        () => optionOf(null),
        (markedUsers) => optionOf(
          markedUsers.filter((markedUser) => !markedUser.markedAsFavourite),
        ),
      );

  bool isFavourite(TWUser user) {
    return favouriteUsersOption.fold(
      () => false,
      (favouriteUsers) => favouriteUsers.any(
        (favouriteUser) => favouriteUser.user.basicProfile.uid == user.uid,
      ),
    );
  }

  bool isBlacklisted(TWUser user) {
    return blackListedUsersOption.fold(
      () => false,
      (blackListedUsers) => blackListedUsers.any(
        (blackListedUser) => blackListedUser.user.basicProfile.uid == user.uid,
      ),
    );
  }
}
