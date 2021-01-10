import 'package:canes_team/fan/ui/widget/contact/contact_datas_widget.dart';
import 'package:canes_team/fan/ui/widget/contact/contact_social_buttons_widget.dart';
import 'package:canes_team/fan/ui/widget/contact/contact_with_us_widget.dart';
import 'package:canes_team/fan/ui/widget/contact/training_days_widget.dart';
import 'package:flutter/material.dart';

class FanContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Stack(alignment: Alignment.topCenter, children: [
      SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ContactDatasWidget(),
            TrainingDaysWidget(),
            SocialButtonsWidget(),
            ContactWithUsWidget(),
          ],
        ),
      )
    ]));
  }
}
