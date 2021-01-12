import 'package:canes_team/widget/news/news_card_widget.dart';
import 'package:flutter/material.dart';

class FanNews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: ListView(
            children: [
              NewsCard(),
              NewsCard(),
              NewsCard(),
              NewsCard(),
              NewsCard(),
              NewsCard(),
              NewsCard(),
              NewsCard(),
              NewsCard(),
              NewsCard(),
              NewsCard(),
              NewsCard(),
            ],
          ),
        ),
      ),
    );
  }
}
