import 'package:flutter/cupertino.dart';

class Fan {
  final String uid;
  final String name;
  final String email;
  final String photoUrl;

  Fan(
      {@required this.uid,
      @required this.name,
      @required this.email,
      this.photoUrl});
}
