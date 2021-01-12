import 'package:canes_team/widget/event/event_card_widget.dart';
import 'package:flutter/material.dart';

class FanEvent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: ListView(
            children: [
              EventCard(),
              EventCard(),
              EventCard(),
              EventCard(),
              EventCard(),
              EventCard(),
              EventCard(),
              EventCard(),
              EventCard(),
              EventCard(),
              EventCard(),
              EventCard(),
            ],
          ),
        ),
      ),
    );
  }
}
