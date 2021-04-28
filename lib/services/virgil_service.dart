import 'dart:developer';

import 'package:cloud_functions/cloud_functions.dart';
import 'package:e3kit/e3kit.dart';
import 'package:flutter/services.dart';

class VirgilServiceHandler {
  EThree eThree;

  static final VirgilServiceHandler _singleton =
      VirgilServiceHandler._internal();

  factory VirgilServiceHandler() {
    return _singleton;
  }

  VirgilServiceHandler._internal();

  initialize(String uid) async {
    final tokenCallback = () async {
      var data = await CloudFunctions.instance
          .getHttpsCallable(functionName: 'getVirgilJwt')
          .call();

      return data.data['token'];
    };

    try {
      this.eThree = await EThree.init(uid, tokenCallback);
      print(eThree);
    } catch (err) {
      print('Failed initializing: $err');
    }
  }

  Future<void> virgilRegistration() async {
    try {
      await eThree.register();
      print('Registered');
    } on PlatformException catch (err) {
      print('Failed registering: $err');
      // if (err.code == 'user_is_already_registered') {
      //   await eThree.rotatePrivateKey();
      //   print('Rotated private key instead');
      // }
    }
  }

  findUser(String userId) async {
    try {
      final result = await eThree.findUsers([userId]);
      log('Looked up $userId\'s public key');
      return result;
    } catch (err) {
      log('Failed looking up $userId\'s public key: $err');
    }
  }

  encryptMessage(final String message, final Map<String, String> user) async {
    String encryptedText;
    // Map<String, String> userMap = {"_id": userId};

    try {
      encryptedText = await eThree.encrypt(message, user);
      log('Encrypted and signed: \'$encryptedText\'.');
    } catch (err) {
      log('Failed encrypting and signing: $err');
    }

    return encryptedText;
  }

  decryptMessage(final String message, final String uid) async {
    String decryptedText;
    try {
      decryptedText = await eThree.decrypt(message, uid);
      log('Decrypted and verified: \'$decryptedText');
    } catch (err) {
      log('Failed decrypting and verifying: $err');
    }

    return decryptedText;
  }
}
