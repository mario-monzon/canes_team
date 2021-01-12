import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthAPI {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();

  Future<UserCredential> signInWithGoogle() async {
    // Activar el flujo de autenticación
    final GoogleSignInAccount googleUser = await GoogleSignIn().signIn();

    // Obtenga los detalles de autenticación de la solicitud
    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    // Crea una nueva credencial
    final GoogleAuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    // Una vez que haya iniciado sesión, devuelva el UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  //SignOut
  signOut() async {
    await _auth.signOut().then((onValue) => print('Sesión cerrada'));
    googleSignIn.signOut();
  }
}
