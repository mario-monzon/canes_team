import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:my_flutter_screen/fan/bloc/fan_bloc.dart';
import 'package:my_flutter_screen/fan/model/fan_model.dart';
import 'package:my_flutter_screen/widget/pop_options_widget.dart';
import 'package:my_flutter_screen/widget/user_avatar_widget.dart';

class CustomAppBar extends StatelessWidget {
  FanBloc fanBloc;
  Fan fan;

  @override
  Widget build(BuildContext context) {
    fanBloc = BlocProvider.of(context);

    Widget showProfileData(AsyncSnapshot snapshot) {
      if (!snapshot.hasData || snapshot.hasError) {
        print('No logueado');
        return Container(
          margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
          child: Column(
            children: <Widget>[
              CircularProgressIndicator(),
              Text('No se pudo cargar la información. Haz login'),
            ],
          ),
        );
      } else {
        print('Logueado');
        print(snapshot.data);
        fan = Fan(
            name: snapshot.data.displayName,
            email: snapshot.data.email,
            photoUrl: snapshot.data.photoUrl);
        final title = Text(
          'Profile',
          style: TextStyle(
              fontFamily: 'Lato',
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30.0),
        );


    return AppBar(
      leading: UserAvatar(fan),
      actions: [
        PopOptions(),
      ],
      backgroundColor: Colors.amber,
      title: Text(
        fan.name,
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}

