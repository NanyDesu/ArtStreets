import 'package:flutter/material.dart';
import 'body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  Icon actionIcon = new Icon(Icons.menu);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Image.asset("assets/imagens/logoosf.jpg"),
        backgroundColor: Color(0xD5FBFF),
        actions: <Widget>[

          new IconButton(
            icon: actionIcon,

          )
        ]
        
    


      ),
      
      body: Body(),
    
    );
  }
}
