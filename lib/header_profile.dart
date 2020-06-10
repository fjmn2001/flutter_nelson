import 'package:flutter/material.dart';
import 'package:platzitrips_app/gradient_back_profile.dart';
import 'card_image_list_profile.dart';

class HeaderProfile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        GradientBackProfile("Profile"),
        CardImageListProfile()
      ],
    );
  }


}