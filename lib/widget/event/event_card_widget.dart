import 'package:canes_team/design/app_colors.dart';
import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(width: 30),
                Text(
                  'Titulo de evento',
                  style: TextStyle(
                    color: AppColors.amberCanes,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  color: AppColors.amberCanes,
                  width: 2,
                  height: 15,
                ),
                SizedBox(width: 10),
                Text(
                  'Hora',
                  style: TextStyle(
                    color: AppColors.lightGrey,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              children: [
                SizedBox(width: 30),
                Container(
                  width: MediaQuery.of(context).size.width / 1.3,
                  child: Text(
                    'Details :  Esto es una descripción de un evento.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
