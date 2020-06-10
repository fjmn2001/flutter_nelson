import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:platzitrips_app/card_image_profile.dart';
import 'card_image_profile.dart';

class CardImageListProfile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(
        top: 260.0,
      ),
      child: ListView(
        padding:EdgeInsets.only(
            right:5.0

        ),
        children: <Widget>[
          CardImageProfile("assets/img/photo.jpeg"),
          CardImageProfile("assets/img/photo2.jpeg"),
          CardImageProfile("assets/img/photo3.jpg"),
          CardImageProfile("assets/img/photo4.jpg"),
          CardImageProfile("assets/img/photo5.jpg"),

        ],
      ),
    );
  }


}