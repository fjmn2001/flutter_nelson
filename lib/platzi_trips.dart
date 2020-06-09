import 'package:flutter/material.dart';
import 'package:platzitrips_app/home_trips.dart';
import 'package:platzitrips_app/profile_trips.dart';
import 'package:platzitrips_app/search_trips.dart';

class PlatziTrips extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _PlatziTrips();
  }

}


class _PlatziTrips extends State<PlatziTrips> {

  int indexTap =0;
  List<Widget> WidgetsChildren = [
    HomeTrips(),
    SearchTrips(),
    ProfileTrips()
  ];

  void onTapTapped(int index){
    setState(() {
      indexTap = index;
    });

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: WidgetsChildren[indexTap],
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.white,
            primaryColor: Colors.purple
          ),
          child: BottomNavigationBar(
            currentIndex: indexTap,
            onTap: onTapTapped,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title:Text(""),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                title:Text(""),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title:Text(""),
              )

            ] ,
          ),
        ),
//        new Description_place("Bahamas",5,description),
    );
  }

}