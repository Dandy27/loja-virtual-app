import 'package:dandy27_store/helpers/firebase_errors.dart';
import 'package:dandy27_store/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class UserManager extends ChangeNotifier {
  final FirebaseAuth auth = FirebaseAuth.instance;

  bool loading = false;

  Future<void> signIn({User user, Function onFail, Function onSuccess}) async {
    setLoading(true);
    try {
      final AuthResult result = await auth.signInWithEmailAndPassword(
          email: user.email, password: user.password);

      await Future.delayed(Duration(seconds: 2));

      onSuccess();
    } on PlatformException catch (e) {
      onFail(getErrorString(e.code));
    }
    setLoading(false);
  }

  void setLoading(bool value) {
    loading = value;
    notifyListeners();
  }
}
