import 'package:canes_team/design/img.dart';
import 'package:canes_team/design/text.dart';
import 'package:flutter/material.dart';

class PlayerCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Card(
            elevation: 2,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  flex: 2,
                  child: Hero(
                    tag: 'tag',
                    child: Image(
                      image: AssetImage(Img.noAvatar),
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ItemBrief(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned.fill(
              child: new Material(
                  color: Colors.transparent,
                  child: new InkWell(
                    splashColor: Colors.blue.withAlpha(100),
                    onTap: () {
                      print(' CARD ');
                    },
                  )))
        ],
      ),
    );
  }

  //Name & Position
  Widget ItemBrief() {
    final bool ellipsize = false;
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Nombre Nombre Apellido Apellido',
          overflow: ellipsize ? TextOverflow.ellipsis : TextOverflow.clip,
          style:
              TextStyle(fontSize: TextSizes.big, fontWeight: FontWeight.bold),
        ),
        Text(
          'Defensive End',
          overflow: ellipsize ? TextOverflow.ellipsis : TextOverflow.clip,
          style: TextStyle(fontSize: TextSizes.normal),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
          child: Text(
            'otro texto'.toUpperCase(),
            overflow: ellipsize ? TextOverflow.ellipsis : TextOverflow.clip,
            style: TextStyle(
              fontSize: TextSizes.small,
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
