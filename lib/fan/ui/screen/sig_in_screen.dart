import 'package:canes_team/fan/bloc/fan_bloc.dart';
import 'package:canes_team/fan/ui/screen/fan_home_screen.dart';
import 'package:canes_team/widget/button_yellow_widget.dart';
import 'package:canes_team/widget/gradient_back.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  FanBloc fanBloc;

  get userBloc => null;
  @override
  Widget build(BuildContext context) {
    fanBloc = BlocProvider.of(context);
    return _handlerCurrentSession();
  }

  Widget _handlerCurrentSession() {
    return StreamBuilder(
      stream: fanBloc.authStatus,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (!snapshot.hasData || snapshot.hasError) {
          return sigInGoogleUI();
        } else {
          return FanHome();
        }
      },
    );
  }

  Widget sigInGoogleUI() {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          GradientBack('', null),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome \n This is your Team',
                style: TextStyle(
                  fontSize: 37.0,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              ButtonYellow(
                btnLabel: 'Login With Google',
                onPressed: () {
                  userBloc.signOut();
                  userBloc.signIn().then((UserCredential user) =>
                      print('El usuario es ${user.user.displayName}'));
                },
                width: 300.0,
                height: 50.0,
              ),
            ],
          )
        ],
      ),
    );
  }
}
