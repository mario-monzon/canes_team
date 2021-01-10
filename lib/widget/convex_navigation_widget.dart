import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

class ConvexNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final itemsList = [
      TabItem(icon: Icons.group, title: 'Roster'),
      TabItem(icon: Icons.event, title: 'Eventos'),
      TabItem(icon: Icons.home, title: 'Home'),
      TabItem(icon: Icons.car_rental, title: 'Transporte'),
      TabItem(icon: Icons.star, title: 'Sponsors'),
    ];
    return ConvexAppBar(
      backgroundColor: Colors.amber,
      color: Colors.black26,
      activeColor: Colors.black,
      style: TabStyle.flip,
      items: itemsList,
      initialActiveIndex: 2,
    );
  }
}
