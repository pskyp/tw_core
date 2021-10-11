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

  SignInBloc(this.authFacade) : super(SignInState.initial());

  @override
  Stream<SignInState> mapEventToState(SignInEvent event) async* {
    yield* event.map(
      emailInputChanged: (e) async* {
        yield state.copyWith(
          email: EmailAddress(e.value),
          authFailureOrSuccessOption: none(),
        );
      },
      signInPressed: (e) async* {
        yield state.copyWith(showErrorMessages: true);
        Either<AuthFailure, Unit>? failureOrSuccess;
        bool isEmailValid = state.email.value.isRight();

        if (isEmailValid) {
          yield state.copyWith(isSubmitting: true);
          FirebaseAuth.instance.sendSignInLinkToEmail(
            email: state.email.getOrCrash(),
            actionCodeSettings: ActionCodeSettings(
                url: 'https://tradeworksubbies.page.link',
                androidPackageName: 'uk.tradework.tradeworksubbies',
                handleCodeInApp: true,
                androidInstallApp: true,
                androidMinimumVersion: "21"),
          );
        }
        yield state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          authFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      onLifeCycleChanged: (e) async* {
        final PendingDynamicLinkData? data =
            await FirebaseDynamicLinks.instance.getInitialLink();
        print(data);
        if (data?.link != null) {
          print(data);
          print(data?.link);
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
    );
  }
}
