import 'package:canes_team/design/img.dart';
import 'package:canes_team/design/theme.dart';
import 'package:canes_team/global.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialButtonsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Text(
              'Social Media',
              style: AppTheme.mainTextTheme.headline6,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () async {
                      String fallbackUrl = Global.facebookCanes;

                      if (await canLaunch(Global.facebookCanes)) {
                        await launch(fallbackUrl, forceSafariVC: false);
                      }
                    },
                    child: SvgPicture.asset(Img.facebook),
                  ),
                  GestureDetector(
                    onTap: () async {
                      if (await canLaunch(Global.instagramCanes)) {
                        await launch(Global.instagramCanes,
                            forceSafariVC: false);
                      }
                    },
                    child: SvgPicture.asset(Img.instagram),
                  ),
                  GestureDetector(
                    onTap: () async {
                      if (await canLaunch(Global.twitterCanes)) {
                        await launch(Global.twitterCanes, forceSafariVC: false);
                      }
                    },
                    child: SvgPicture.asset(Img.twitter),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
