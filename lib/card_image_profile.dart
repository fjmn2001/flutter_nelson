 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:platzitrips_app/Floating_Action_Button_green.dart';

class CardImageProfile extends StatelessWidget{

  String pathImage = "assets/img/photo.jpeg";

  CardImageProfile(this.pathImage);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final card = Container(
      height: 200.0,
      width: 350.0,
      margin: EdgeInsets.only(
        top: 80.0,
        left: 20.0,
        right: 20.0,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
            image: AssetImage(pathImage)
        ),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
          shape: BoxShape.rectangle,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15.0,
            offset: Offset(0.0,0.7)
          )
]
      ),
    );


    final informationCard = Stack(
      alignment: Alignment(-0.2,1.5),
      children: <Widget>[
        Container(
          width: 250.0,
          height: 100.0,
          margin: EdgeInsets.only(
            right: 50.0
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            color: Colors.white,
          ),
          padding: EdgeInsets.all(25.0),
        ),
        FloatingActionButtonGreen()
      ],
      
    );


    return Stack(
      alignment: Alignment(0.9,1.6),
      children: <Widget>[
        card,
        informationCard
      ],
    );
  }


}