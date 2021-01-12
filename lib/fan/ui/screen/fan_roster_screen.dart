import 'package:canes_team/design/app_colors.dart';
import 'package:canes_team/widget/roster/player_card_widget.dart';
import 'package:flutter/material.dart';

class FanRoster extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.darkGrey,
        child: Center(
          child: ListView(
            children: [
              PlayerCard(),
              PlayerCard(),
              PlayerCard(),
              PlayerCard(),
              PlayerCard(),
              PlayerCard(),
              PlayerCard(),
            ],
          ),
        ),
      ),
    );
  }
}
