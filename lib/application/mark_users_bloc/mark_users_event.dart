part of 'mark_users_bloc.dart';

@freezed
class MarkUsersEvent with _$MarkUsersEvent {
  factory MarkUsersEvent.markUserRequest({
    required TWUser userToBeMarked,
    required bool markAsFavourite,
  }) = MarkUserRequest;
  factory MarkUsersEvent.unMarkUserRequest({
    required TWUser userToBeUnMarked,
  }) = UnMarkUserRequest;

  factory MarkUsersEvent.markedUsersFetched(KtList<MarkedUser> markedUsers) =
      MarkedUsersFetched;
}
