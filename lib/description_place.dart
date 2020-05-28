import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'button_purple.dart';

class Description_place extends StatelessWidget {


  String namePlace;
  int stars;
  String descriptionPlace;
  Description_place(this.namePlace, this.stars, this.descriptionPlace);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build


    final star = Container(
      margin: EdgeInsets.only(top: 343.0, right: 3.0),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );

    final star_border = Container(
      margin: EdgeInsets.only(top: 343.0, right: 3.0),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
      ),
    );


    final star_alf = Container(
      margin: EdgeInsets.only(top: 343.0, right: 3.0),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
      ),
    );


    final description_content = Container(
      margin: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
      child: Text(
        descriptionPlace,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: Color(0xFF56575a)
//
        ),
      ),
    );

    final title_stars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 343.0, left: 20.0, right: 20.0),
          child: Text(
            namePlace,
            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w900, fontFamily: "Lato"),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[star, star, star, star, star_alf],
        ),
      ],
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: <Widget>[title_stars, description_content, ButtonPurple("Navigate")],
    );
  }
}
