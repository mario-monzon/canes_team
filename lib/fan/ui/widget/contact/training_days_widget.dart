import 'package:canes_team/design/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TrainingDaysWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shadowColor: Colors.grey,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'Días de entrenamiento',
              style: AppTheme.mainTextTheme.headline6,
            ),
            Text(
              'Lunes - Martes - Miercoles',
              style: TextStyle(fontFamily: "Canes_font_body"),
            ),
            Text(
              '20:30 - 22:00',
              style: TextStyle(fontFamily: "Canes_font_body"),
            ),
            // StadiumContactWidget()
          ],
        ),
      ),
    );
  }
}
