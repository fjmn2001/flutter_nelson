import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
   Review("assets/img/profile.png","Chica Desconocida","1 review 5 photos","There is an amazing place in sri lanka"),
        Review("assets/img/profile2.png","Chica Desconocida","1 review 1 photos","There is an amazing place in sri lanka"),
        Review("assets/img/profile3.png","Chica Desconocida","1 review 1 photos","There is an amazing place in sri lanka"),
        Review("assets/img/profile4.png","Chico Desconocido","1 review 1 photos","There is an amazing place in sri lanka"),
      ],
    );
  }



}