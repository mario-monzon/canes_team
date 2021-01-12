import 'package:canes_team/fan/repository/firebase_auth_api.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepository {
  final _firebaseAuthAPI = FirebaseAuthAPI();
  Future<UserCredential> sigInFirebase() => _firebaseAuthAPI.signInWithGoogle();

  signOut() => _firebaseAuthAPI.signOut();
}
