import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class PlatziTripsCupertino extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
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
      ),
    );
  }

}