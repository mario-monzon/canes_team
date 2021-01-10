import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_flutter_screen/app.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(App());
}
