import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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
  }) : super(SignInState.initial()) {
    on<EmailInputChanged>((event, emit) async {
      emit(state.copyWith(
        email: EmailAddress(event.value),
        sendingLinkToEmail: false,
        linkSentToEmailOption: optionOf(null),
      ));
    });
    on<SignInPressed>((event, emit) async {
      emit(state.copyWith(showErrorMessages: true));
      if (!state.email.value.isRight()) return;
      emit(state.copyWith(sendingLinkToEmail: true));
      Either<AuthFailure, Unit> linkSentToEmail =
          await authFacade.sendSignInLinkToEmail(
        email: state.email,
        androidPackageName: androidPackageName,
        iOSBundleId: iOSBundleId,
      );
      emit(state.copyWith(
        linkSentToEmailOption: optionOf(linkSentToEmail),
        sendingLinkToEmail: false,
      ));
    });
    on<OnLifecycleChanged>((event, emit) async {
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

      FirebaseDynamicLinks.instance.onLink.listen((event) async {
        final Uri deepLink = event.link;
        final user = (await FirebaseAuth.instance.signInWithEmailLink(
          email: state.email.getOrCrash(),
          emailLink: deepLink.toString(),
        ))
            .user;
      }).onError((error) {
        print('onLink error');
        print(error.message);
      });
    });
    on<SignInWithGooglePressed>((event, emit) async {
      print("reaching here");
      Either<AuthFailure, Unit>? failureOrSuccess;
      emit(state.copyWith(isSubmitting: true));
      print("is submitting");
      failureOrSuccess = await authFacade.signInWithGoogle();
      print(failureOrSuccess);
      emit(state.copyWith(
        isSubmitting: false,
        linkSentToEmailOption: optionOf(failureOrSuccess),
      ));
    });
  }
}
