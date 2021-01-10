import 'package:flutter/material.dart';
import 'package:my_flutter_screen/fan/ui/screen/fan_home_screen.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: FanHome(),
    );
  }
}
