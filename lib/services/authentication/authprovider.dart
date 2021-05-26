import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  final _firebaseAuth = FirebaseAuth.instance;
  String _verificationId;

  Stream<User> get authStateChange => _firebaseAuth.authStateChanges();

  Future<void> verifyPhone(String mobile) async {
    try {
      await _firebaseAuth.verifyPhoneNumber(
          phoneNumber: mobile,
          timeout: const Duration(seconds: 5),
          verificationCompleted:
              (PhoneAuthCredential phoneAuthCredential) async {
            await _firebaseAuth.signInWithCredential(phoneAuthCredential);
            print(
                "Phone number automatically verified and user signed in: ${_firebaseAuth.currentUser.uid}");
          },
          verificationFailed: verificationFailed,
          codeSent: (String verificationId, [int forceResendingToken]) async {
            print('Please check your phone for the verification code.');
            _verificationId = verificationId;
          },
          codeAutoRetrievalTimeout: (String verificationId) {
            print("verification code: " + verificationId);
            _verificationId = verificationId;
          });
    } catch (e) {
      print("Failed to Verify Phone Number: $e");
    }
  }

  PhoneVerificationFailed verificationFailed =
      (FirebaseAuthException authException) {
    print(
        'Phone number verification failed. Code: ${authException.code}. Message: ${authException.message}');
  };

  // Future<void> verifyPhone(String mobile) async {
  //   var mobileToSend = mobile;
  //   final PhoneCodeSent smsOTPSent =
  //       (String verId, [int forceCodeResend]) async {
  //     this.verificationId = verId;
  //     print("OTP Sent");
  //     // code entered by the user
  //
  //     // Sign the user in (or link) with the credential
  //   };
  //   try {
  //     await _firebaseAuth.verifyPhoneNumber(
  //         phoneNumber: mobileToSend,
  //         codeAutoRetrievalTimeout: (String verId) {
  //           this.verificationId = verId;
  //         },
  //         codeSent: smsOTPSent,
  //         timeout: const Duration(
  //           seconds: 120,
  //         ),
  //         verificationCompleted: (AuthCredential phoneAuthCredential) async {
  //           print(phoneAuthCredential);
  //           print("Verified");
  //         },
  //         verificationFailed: (e) {
  //           print(e.message);
  //           if (e.code == 'invalid-phone-number') {
  //             print('The provided phone number is not valid.');
  //           }
  //           throw e;
  //         });
  //   } catch (e) {
  //     throw e;
  //   }
  // }

  Future<void> signIn(String smsCode) async {
    print(smsCode);
    try {
      final AuthCredential credential = PhoneAuthProvider.credential(
        verificationId: this._verificationId,
        smsCode: smsCode,
      );

      final User user =
          (await _firebaseAuth.signInWithCredential(credential)).user;

      print("Successfully signed in UID: ${user.uid}");
    } catch (e) {
      print("Failed to sign in: " + e.toString());
    }
  }
}
