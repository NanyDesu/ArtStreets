import 'package:artstreet/pages/cadPet.dart';
import 'package:flutter/material.dart';
import 'body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  Icon actionIcon = new Icon(Icons.menu);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Hello'),
        backgroundColor: Color(0xD5FBFF),
        actions: <Widget>[

          new IconButton(
            icon: actionIcon,
            onPressed: () => {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CadPet()),
            ),
          },
          )
        ]
        
    


      ),
      
      body: Body(),
    
    );
  }
}
