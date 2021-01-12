import 'package:canes_team/design/app_colors.dart';
import 'package:canes_team/widget/button_yellow_widget.dart';
import 'package:canes_team/widget/gradient_back.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  // FanBloc fanBloc;

  @override
  Widget build(BuildContext context) {
    // fanBloc = BlocProvider.of(context);
    return sigInGoogleUI();
    // return _handlerCurrentSession();
  }

  // Widget _handlerCurrentSession() {
  //   return StreamBuilder(
  //     stream: fanBloc.authStatus,
  //     builder: (BuildContext context, AsyncSnapshot snapshot) {
  //       if (!snapshot.hasData || snapshot.hasError) {
  //         return sigInGoogleUI();
  //       } else {
  //         return FanHome();
  //       }
  //     },
  //   );
  // }

  Widget sigInGoogleUI() {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          GradientBack('', null),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(top: 5.0),
                child: Column(
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
                    Image.asset(
                      'assets/images/canes.png',
                      height: size.height * 0.15,
                    ),
                    SizedBox(
                      height: 8.0,
                      width: double.infinity,
                    ),
                    Text(
                      'CANES',
                      style: TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Canes',
                        color: AppColors.amberCanes,
                      ),
                    )
                  ],
                ),
              ),
              LoginForm(),
              SizedBox(
                height: 16.0,
                width: double.infinity,
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget LoginForm() {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: size.width * 0.85,
            margin: EdgeInsets.symmetric(vertical: 30.0),
            padding: EdgeInsets.symmetric(vertical: 50.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: AppColors.backgroundColor,
                  blurRadius: 3.0,
                  offset: Offset(0.0, 2.0),
                  spreadRadius: 1.0,
                ),
              ],
              color: AppColors.amberCanes,
            ),
            child: Column(
              children: [
                Text('ENTRAR'),
                EmailField(),
                PassField(),
                ButtonYellow(
                  btnLabel: 'Login With Google',
                  onPressed: () {
                    // fanBloc.signOut();
                    // fanBloc.signIn().then((UserCredential user) =>
                    //     print('El usuario es ${user.user.displayName}'));
                  },
                  width: 300.0,
                  height: 50.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget EmailField() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: 'example@email.com',
          icon: Icon(
            Icons.alternate_email,
            color: AppColors.darkGrey,
          ),
        ),
      ),
    );
  }

  Widget PassField() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: TextField(
        keyboardType: TextInputType.visiblePassword,
        decoration: InputDecoration(
          hintText: 'password',
          labelText: 'Contraseña',
          icon: Icon(
            Icons.lock,
            color: AppColors.darkGrey,
          ),
        ),
      ),
    );
  }
}
