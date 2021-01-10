import 'package:flutter/material.dart';

class PopOptions extends StatefulWidget {
  @override
  _PopOptionsState createState() => _PopOptionsState();
}

class _PopOptionsState extends State<PopOptions> {
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
