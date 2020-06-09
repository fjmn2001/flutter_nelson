import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FloatingActionButtonGreen();
  }

}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen>{

  bool isPressed = false;

  void onPressedFav(){

    setState(() {

      isPressed = !isPressed;

    });

    Scaffold.of(context).showSnackBar(
        SnackBar(
          content: message(),
        )
    );


  }

  icon(){

    if(isPressed){
      return Icon(
        Icons.favorite
      );
    }
    return Icon(
        Icons.favorite_border
    );

  }
  message(){

    if(isPressed){
      return Text("Agregado a su lista de favoritos");
    }
    return Text("Se a removido de su lista de favoritos");
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Add a favoritos",
      onPressed: onPressedFav,
      child:icon(),
    );
  }

}