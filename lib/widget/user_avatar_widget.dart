import 'package:canes_team/design/img.dart';
import 'package:canes_team/fan/model/fan_model.dart';
import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  Fan fan;
  UserAvatar(this.fan);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        backgroundImage: AssetImage(Img.noAvatar),
        // backgroundImage: fan.photoUrl != null
        //     ? NetworkImage(fan.photoUrl)
        //     : AssetImage('assets/images/no_avatar.jpg'),
        backgroundColor: Colors.black,
      ),
    );
  }
}
