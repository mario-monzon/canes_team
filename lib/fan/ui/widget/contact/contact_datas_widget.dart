import 'package:canes_team/design/theme.dart';
import 'package:canes_team/global.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactDatasWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 4,
        shadowColor: Colors.grey,
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Contacto',
                        style: AppTheme.mainTextTheme.headline6,
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8, top: 8),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  Text(
                                    'email',
                                    style: TextStyle(
                                        fontFamily: "Canes_font_body",
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    Global.emailCanes,
                                    style: TextStyle(
                                      fontFamily: "Canes_font_body",
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  Text('Teléfono',
                                      style: TextStyle(
                                          fontFamily: "Canes_font_body",
                                          fontWeight: FontWeight.bold)),
                                  Text(Global.phoneCanes,
                                      style: TextStyle(
                                          fontFamily: "Canes_font_body")),
                                ],
                              ),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 8),
                                child: GestureDetector(
                                  onTap: () async {
                                    if (await canLaunch(Global.webCanes)) {
                                      launch(Global.webCanes);
                                    } else {
                                      Scaffold.of(context)
                                          .showSnackBar(SnackBar(
                                        content: Text("Web no found"),
                                      ));
                                    }
                                  },
                                  child: Row(
                                    children: <Widget>[
                                      Text('Web:',
                                          style: TextStyle(
                                              fontFamily: "Canes_font_body",
                                              fontWeight: FontWeight.bold)),
                                      Text(Global.webCanes,
                                          style: TextStyle(
                                            fontFamily: "Canes_font_body",
                                          )),
                                    ],
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
