import 'package:canes_team/fan/model/fan_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CloudFirestoreAPI {
  final String FANS = 'fans';
  final String PLACES = 'places';

  final FirebaseFirestore _db = FirebaseFirestore.instance;

  updateUserData(Fan fan) async {
    DocumentReference ref = _db.collection(FANS).doc(fan.uid);
    return ref.set({
      'uid': fan.uid,
      'name': fan.name,
      'email': fan.email,
      'lastSignIn': DateTime.now()
    }, SetOptions(merge: true));
  }
}
