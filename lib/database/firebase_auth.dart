import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthServer {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //sign up
  Future<User?> signUpWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential credential = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return credential.user;
    } catch (e) {
      print("some error occured $e");
    }

    return null;
  }

  //login
  Future<User?> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential credential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return credential.user;
    } catch (e) {
      print("some error occured $e");
    }

    return null;
  }

  //add datacls
  
}
