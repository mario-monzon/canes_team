import 'package:flutter/material.dart';
import 'package:my_flutter_screen/fan/model/fan_model.dart';

class UserAvatar extends StatelessWidget {
  Fan fan;
  UserAvatar(this.fan);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        backgroundImage: NetworkImage(fan.photoUrl),
        backgroundColor: Colors.black,
      ),
    );
  }
}
