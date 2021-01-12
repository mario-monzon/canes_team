import 'package:canes_team/fan/ui/screen/fan_home_screen.dart';
import 'package:flutter/material.dart';

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
      initialRoute: 'home',
      routes: {
        // 'sigin': (BuildContext context) => SignInScreen(),
        'home': (BuildContext context) => FanHome(),
        // 'card': (BuildContext context) => CustomCard(),
      },
      home: FanHome(),
    );
  }
}
