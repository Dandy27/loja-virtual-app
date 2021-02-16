import 'package:dandy27_store/helpers/firebase_errors.dart';
import 'package:dandy27_store/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';

class UserManager {
  final FirebaseAuth auth = FirebaseAuth.instance;

  Future<void> signIn({User user, Function onFail, Function onSuccess}) async {
    try {
      final AuthResult result = await auth.signInWithEmailAndPassword(
          email: user.email, password: user.password);

      onSuccess();
    } on PlatformException catch (e) {
      onFail(getErrorString(e.code));
    }
  }
}
