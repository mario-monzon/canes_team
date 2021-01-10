import 'package:canes_team/design/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';

class ContactWithUsWidget extends StatefulWidget {
  State<ContactWithUsWidget> createState() => ContactWithUsStatus();
}

class ContactWithUsStatus extends State<ContactWithUsWidget> {
  String attachment;

  final _recipientController = TextEditingController();

  final _subjectController = TextEditingController();

  final _bodyController = TextEditingController();

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shadowColor: Colors.black,
      child: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text('Contacta con nosotros',
                style: AppTheme.mainTextTheme.headline6),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.white),
                child: new TextField(
                    cursorColor: Colors.black,
                    keyboardType: TextInputType.emailAddress,
                    style: AppTheme.mainTextTheme.bodyText2,
                    controller: _recipientController,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide(width: 1, color: Colors.black),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide(width: 1, color: Colors.black),
                        ),
                        hintText: 'Email',
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.black,
                        ))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.white),
                child: new TextField(
                    cursorColor: Colors.black,
                    style: AppTheme.mainTextTheme.bodyText2,
                    controller: _subjectController,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide(width: 1, color: Colors.black),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide(width: 1, color: Colors.black),
                        ),
                        hintText: 'Subject',
                        prefixIcon: Icon(
                          Icons.subject,
                          color: Colors.black,
                        ))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.white),
                child: new TextField(
                    cursorColor: Colors.black,
                    keyboardType: TextInputType.multiline,
                    controller: _bodyController,
                    maxLines: 15,
                    maxLength: 350,
                    style: AppTheme.mainTextTheme.bodyText2,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(width: 1, color: Colors.black),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(width: 1, color: Colors.black),
                      ),
                      hintText: 'Text',
                    )),
              ),
            ),
            FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.grey)),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.send),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Send'),
                    ),
                  ],
                ),
                color: Colors.amber,
                textColor: Colors.grey,
                onPressed: () async {
                  send();
                })
          ],
        ),
      ),
    );
  }

  Future<void> send() async {
    final Email email = Email(
      body: _bodyController.text,
      subject: _subjectController.text,
      recipients: [_recipientController.text],
      attachmentPaths: null,
      isHTML: false,
    );

    String platformResponse;

    try {
      await FlutterEmailSender.send(email);
      platformResponse = 'success';
      print('ACS -- $platformResponse');
    } catch (error) {
      platformResponse = error.toString();
      print('ACS -- $platformResponse');
    }
  }
}
