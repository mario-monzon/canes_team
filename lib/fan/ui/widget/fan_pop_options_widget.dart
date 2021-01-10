import 'package:flutter/material.dart';

class FanPopOptions extends StatefulWidget {
  @override
  _FanPopOptionsState createState() => _FanPopOptionsState();
}

class _FanPopOptionsState extends State<FanPopOptions> {
  final List<String> choices = [
    'Profile',
    'Log Out',
  ];
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      icon: Icon(
        Icons.settings,
        color: Colors.black,
      ),
      onSelected: choiceAction,
      itemBuilder: (BuildContext context) {
        return choices.map((String choice) {
          return PopupMenuItem<String>(
            value: choice,
            child: Text(choice),
          );
        }).toList();
      },
    );
  }

  void choiceAction(String choice) {
    switch (choice) {
      case 'Profile':
        print('Profile');
        break;
      case 'Log Out':
        print('Log Out');
        break;
    }
  }
}
