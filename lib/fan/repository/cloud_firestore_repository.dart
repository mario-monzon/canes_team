import 'package:canes_team/fan/model/fan_model.dart';
import 'package:canes_team/fan/repository/cloud_firestore_api.dart';

class CloudFirestoreRepository {
  final _cloudFirestoreAPI = CloudFirestoreAPI();

  void updateUserDataFirestore(Fan fan) =>
      _cloudFirestoreAPI.updateUserData(fan);
}
