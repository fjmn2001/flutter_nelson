import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GradientBackProfile extends StatelessWidget{

  String title;
  GradientBackProfile(this.title);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build


    final rowProfile = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 30.0,
            left: 10.0,
            right: 225.0,
          ),
          child:Text(
            title,
            style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontFamily: "Lato",
                fontWeight: FontWeight.bold
            ),
          ) ,
        ),
        Container(
          margin: EdgeInsets.only(
            top: 30.0,
          ),
          child: Icon(
            Icons.settings,
            color: Colors.white,
            size: 15,
          ),
        )

      ],
    );


    final photo = Container(
      margin: EdgeInsets.only(
          top: 20.0,
          left: 10.0,

      ),
      width: 80.0,
      height: 80.0,

      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/img/profile2.png")
          )
      ),
    );

    final namePerson = Container(
        margin: EdgeInsets.only(
          left: 20.0,
        ),
      child: Text("Pathum Tzoo",
      style: TextStyle(
        fontSize: 20.0,
        color: Colors.white,
          fontWeight: FontWeight.w600
      ),)
    );

    final emailPerson = Container(
        margin: EdgeInsets.only(
        left: 20.0,
        ),
        child: Text("PathumTzoo1@gmail.com",
          style: TextStyle(
              color: Colors.white30,
          ),)
    );

    final iconPlus = Container(
      width: 50.0,
      height: 50.0,
      margin: EdgeInsets.only(
        top: 15.0,
        left: 15.0,
        right: 15.0,
      ),
      decoration: BoxDecoration(
        shape:BoxShape.circle,
          color: Colors.white
      ),
      child: Icon(
        Icons.add,
        size: 40.0,
        color: Color(0xFF584DC1),



      ),
    );

    final iconPerson = Container(
      width: 40.0,
      height: 40.0,
      margin: EdgeInsets.only(
        top: 15.0,
        left: 15.0,
        right: 15.0,
      ),
      decoration: BoxDecoration(
          shape:BoxShape.circle,
          color: Colors.white30
      ),
      child: Icon(
        Icons.person,
        size: 35.0,
        color: Color(0xFF584DC1),
      ),
    );

    final iconTunned = Container(
      width: 40.0,
      height: 40.0,
      margin: EdgeInsets.only(
        top: 15.0,
        left: 15.0,
        right: 15.0,
      ),
      decoration: BoxDecoration(
          shape:BoxShape.circle,
          color: Colors.white
      ),
      child: Icon(
        Icons.turned_in_not,
        size: 35.0,
        color: Color(0xFF4268D3),
      ),
    );

    final iconLocation = Container(
      width: 40.0,
      height: 40.0,
      margin: EdgeInsets.only(
        top: 15.0,
        left: 15.0,
        right: 15.0,
      ),
      decoration: BoxDecoration(
          shape:BoxShape.circle,
          color: Colors.white30
      ),
      child: Icon(
        Icons.location_on,
        size: 35.0,
        color: Color(0xFF584DC1),
      ),
    );

    final iconMail = Container(
      width: 40,
      height: 40,
      margin: EdgeInsets.only(
        top: 15.0,
        left: 15.0,
        right: 15.0,
      ),
      decoration: BoxDecoration(
          shape:BoxShape.circle,
          color: Colors.white30
      ),
      child: Icon(
        Icons.mail,
        size: 35.0,
        color: Color(0xFF584DC1),
      ),
    );

    final rowIcons = Row(
      children: <Widget>[
        iconTunned,
        iconLocation,
        iconPlus,
        iconMail,
        iconPerson,
      ],
    );

    final rowDataPerson = Row(
      children: <Widget>[
        photo,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            namePerson,
            emailPerson,

          ],
        ),
      ],
    );

    return Container(
      height: 320.0,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xFF4268D3),
                Color(0xFF584DC1),
              ],
              begin: FractionalOffset(0.2,0.0),
              end: FractionalOffset(1.0,0.6),
              stops: [0.0,0.6],
              tileMode: TileMode.clamp

          )
      ),
      child:Column(
        children: <Widget>[

          rowProfile,
          rowDataPerson,
          rowIcons

        ],

      ),

      alignment: Alignment(-0.9, -0.6),
    );

  }

}