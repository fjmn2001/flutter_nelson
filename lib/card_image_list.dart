import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 350.0,
      child: ListView(
        padding:EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage("assets/img/photo.jpeg"),
          CardImage("assets/img/photo2.jpeg"),
          CardImage("assets/img/photo3.jpg"),
          CardImage("assets/img/photo4.jpg"),
          CardImage("assets/img/photo5.jpg"),

        ],
      ),
    );
  }


}