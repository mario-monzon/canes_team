import 'package:canes_team/fan/ui/screen/fan_contact_screen.dart';
import 'package:canes_team/fan/ui/screen/fan_event_screen.dart';
import 'package:canes_team/fan/ui/screen/fan_news_screen.dart';
import 'package:canes_team/fan/ui/screen/fan_roster_screen.dart';
import 'package:canes_team/fan/ui/screen/fan_sponsor_screen.dart';
import 'package:canes_team/widget/pop_options_widget.dart';
import 'package:canes_team/widget/user_avatar_widget.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

class FanHome extends StatefulWidget {
  @override
  _FanHomeState createState() => _FanHomeState();
}

class _FanHomeState extends State<FanHome> {
  int _selectedIndex = 2;

  final _pageOption = <Widget>[
    FanRoster(),
    FanEvent(),
    FanNews(),
    FanSponsor(),
    FanContact(),
  ];

  final _itemsList = [
    TabItem(icon: Icons.group, title: 'Roster'),
    TabItem(icon: Icons.event, title: 'Eventos'),
    TabItem(icon: Icons.assignment, title: 'Noticias'),
    TabItem(icon: Icons.star, title: 'Sponsors'),
    TabItem(icon: Icons.alternate_email, title: 'Contacto'),
    // TabItem(icon: Icons.car_rental, title: 'Transporte'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: UserAvatar(''),
        actions: [
          PopOptions(),
        ],
        backgroundColor: Colors.amber,
        title: Text(
          'Material App Bar',
          style: TextStyle(color: Colors.black),
        ),
      ),
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Colors.amber,
        color: Colors.black26,
        activeColor: Colors.black,
        style: TabStyle.flip,
        items: _itemsList,
        initialActiveIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: _pageOption[_selectedIndex],
      // body: Container(
      //   color: Colors.grey,
      //   child: Center(
      //     child: Text('Hello World'),
      //   ),
      // ),
    );
  }
}
