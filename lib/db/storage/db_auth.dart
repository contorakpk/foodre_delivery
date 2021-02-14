import 'package:foodre_delivery/db/storage/db_storage_add.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class DBAuth {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  bool authSignedIn;
  String uid;
  String userEmail;

  final FirebaseAuth auth = FirebaseAuth.instance;

  User user = FirebaseAuth.instance.currentUser;

  String error;

  returnInfo(String info) {
    return info;
  }

  Future<String> signUp(String _email, String _password, String _phone) async {
    signOut();
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: _email, password: _password);
          await DBStorageAdd().newUserCollection(_email, _password, _phone, uid);
    } on FirebaseAuthException catch (e) {
      return error = e.code;
    }

    return error;
  }

  Future<String> login(String _email, String _password) async {
    signOut();
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: _email, password: _password);
    } on FirebaseAuthException catch (e) {
      return error = e.code;
    }

    return null;
  }

  getUID() {
    return auth.currentUser.uid.toString();
  }

  sendEmailVerification() async {
    if (!user.emailVerified) {
      await user.sendEmailVerification();
    }
  }

  signOut() async {
    await FirebaseAuth.instance.signOut();
  }
}