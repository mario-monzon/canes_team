import 'package:canes_team/fan/model/fan_model.dart';
import 'package:canes_team/fan/repository/auth_repository.dart';
import 'package:canes_team/fan/repository/cloud_firestore_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class FanBloc implements Bloc {
  final _auth_repository = AuthRepository();

  Stream<User> streamFirebase = FirebaseAuth.instance.authStateChanges();
  Stream<User> get authStatus => streamFirebase;

  //Casos de uso del objeto User
  // 1. SignIn a la aplicacion Google
  Future<UserCredential> signIn() {
    return _auth_repository.sigInFirebase();
  }

  //2. Registrar usuario en base de datos
  final _cloudFirestoreRepository = CloudFirestoreRepository();
  void updateUserData(Fan fan) =>
      _cloudFirestoreRepository.updateUserDataFirestore(fan);

  signOut() {
    _auth_repository.signOut();
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }
}
