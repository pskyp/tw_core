import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:tw_core/models/auth/auth_failure.dart';
import 'package:tw_core/models/auth/i_auth_facade.dart';
import 'package:tw_core/models/email/email.dart';

part 'sign_in_bloc.freezed.dart';
part 'sign_in_event.dart';
part 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final IAuthFacade authFacade;
  final String androidPackageName;
  final String iOSBundleId;

  SignInBloc({
    required this.authFacade,
    required this.androidPackageName,
    required this.iOSBundleId,
  }) : super(SignInState.initial());

  @override
  Stream<SignInState> mapEventToState(SignInEvent event) async* {
    yield* event.map(
      emailInputChanged: (e) async* {
        yield state.copyWith(
          email: EmailAddress(e.value),
          sendingLinkToEmail: false,
          linkSentToEmailOption: optionOf(null),
        );
      },
      signInPressed: (e) async* {
        yield state.copyWith(showErrorMessages: true);
        if (!state.email.value.isRight()) return;
        yield state.copyWith(sendingLinkToEmail: true);
        Either<AuthFailure, Unit> linkSentToEmail =
            await authFacade.sendSignInLinkToEmail(
          email: state.email,
          androidPackageName: androidPackageName,
          iOSBundleId: iOSBundleId,
        );
        yield state.copyWith(
          linkSentToEmailOption: optionOf(linkSentToEmail),
          sendingLinkToEmail: false,
        );
      },
      onLifeCycleChanged: (e) async* {
        final PendingDynamicLinkData? data =
            await FirebaseDynamicLinks.instance.getInitialLink();

        print("Link data ");
        print(data);
        if (data?.link != null) {
          print(data);
          print(data?.link);
          print("Getting data");
          final user = (await FirebaseAuth.instance.signInWithEmailLink(
            email: state.email.getOrCrash(),
            emailLink: data!.link.toString(),
          ))
              .user;
        }
        FirebaseDynamicLinks.instance.onLink(
            onSuccess: (PendingDynamicLinkData? dynamicLink) async {
          final Uri deepLink = dynamicLink!.link;
          final user = (await FirebaseAuth.instance.signInWithEmailLink(
            email: state.email.getOrCrash(),
            emailLink: deepLink.toString(),
          ))
              .user;
        }, onError: (OnLinkErrorException e) async {
          print('onLinkError');
          print(e.message);
        });
      },
      signInWithGooglePressed: (e) async* {
        print("reaching here");
        Either<AuthFailure, Unit>? failureOrSuccess;
        yield state.copyWith(isSubmitting: true);
        print("is submitting");
        failureOrSuccess = await authFacade.signInWithGoogle();
        print("failing");
        yield state.copyWith(
          isSubmitting: false,
          linkSentToEmailOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
