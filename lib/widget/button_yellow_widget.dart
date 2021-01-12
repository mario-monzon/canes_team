import 'package:canes_team/design/app_colors.dart';
import 'package:flutter/material.dart';

class ButtonYellow extends StatefulWidget {
  double height = 0.0;
  double width = 0.0;
  final String btnLabel;
  VoidCallback onPressed;

  ButtonYellow({
    Key key,
    @required this.btnLabel,
    @required this.onPressed,
    this.height,
    this.width,
  });
  @override
  _ButtonYellowState createState() => _ButtonYellowState();
}

class _ButtonYellowState extends State<ButtonYellow> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      child: Container(
        margin: EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          gradient: LinearGradient(
              colors: [
                AppColors.darkGrey,
                Colors.black87,
              ],
              begin: FractionalOffset(0.2, 0.0),
              end: FractionalOffset(1.0, 0.6),
              stops: [0.0, 0.6],
              tileMode: TileMode.clamp),
        ),
        child: Center(
          child: Text(
            widget.btnLabel,
            style: TextStyle(
              fontSize: 18.0,
              fontFamily: "Lato",
              color: AppColors.amberCanes,
            ),
          ),
        ),
      ),
    );
  }
}
