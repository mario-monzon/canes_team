import 'package:canes_team/design/app_colors.dart';
import 'package:canes_team/design/img.dart';
import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: GestureDetector(
        onTap: () {
          print('Al detalle');
        },
        child: Card(
          child: Column(children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Image.asset(
                Img.team01,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
            ),
            Column(
              children: [
                SizedBox(
                  width: 30,
                ),
                Text(
                  'Titulo',
                  style: TextStyle(
                      color: AppColors.amberCanes,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 3,
                ),
                Container(
                  color: AppColors.amberCanes,
                  width: 30,
                  height: 2,
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  'Noticia',
                  style: TextStyle(
                      color: AppColors.lightGrey,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
          ]),
        ),
      ),
    );
  }
}
