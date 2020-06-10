import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:platzitrips_app/home_trips.dart';
import 'package:platzitrips_app/profile_trips.dart';
import 'package:platzitrips_app/search_trips.dart';

class PlatziTripsCupertino extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          backgroundColor: Color(0x33FFFFFF),
          items:[
            BottomNavigationBarItem(
            icon: Icon(
              Icons.home
            ),
              title: Text(""),
          ),
            BottomNavigationBarItem(
              icon: Icon(
                  Icons.search
              ),
              title: Text(""),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                  Icons.person
              ),
              title: Text(""),
            ),
          ] ,
        ),
        tabBuilder: (BuildContext context, int index){
          switch(index){
            case 0:
              return CupertinoTabView(
                builder: (BuildContext context) => HomeTrips(),
              );
              break;
            case 1:
              return CupertinoTabView(
                builder: (BuildContext context) => SearchTrips(),
              );
              break;
            case 2:
              return CupertinoTabView(
                builder: (BuildContext context) => ProfileTrips(),
              );
              break;
          }

        },
      ),
    );
  }

}