import 'package:flutter/material.dart';
import 'package:my_flutter_screen/design/app_colors.dart';

class GradientBack extends StatelessWidget {
  String title = "Popular";
  double height = 0.0;

  GradientBack(this.title, this.height);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: height,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                // Color(0xFF4268D3),
                // Color(0xFF584CD1),
                AppColors.darkGrey,
                AppColors.defaultColor,
                AppColors.darkGrey
              ],
              begin: FractionalOffset(0.3, 0.3),
              end: FractionalOffset(0.9, 0.5),
              stops: [0.0, 0.7, 0.9],
              tileMode: TileMode.clamp)),
      child: Text(
        title,
        style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontFamily: "Lato",
            fontWeight: FontWeight.bold),
      ),
      alignment: Alignment(-0.9, -0.6),
    );
  }
}
