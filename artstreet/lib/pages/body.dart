import 'package:flutter/material.dart';

class Body extends StatelessWidget{
  @override
  Widget build(BuildContext context){
  Size size = MediaQuery.of(context).size;
  return Column(
    children: <Widget>[
      Container(
        height: size.height*0.2,
        child: Stack(children: <Widget>[
          Container(
            height: size.height*0.2-27,
            decoration: BoxDecoration(color:Colors.pink,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(36),
              bottomRight: Radius.circular(36),
              ),
          ),
          child: Row(
            children: <Widget>[
              Text(
                'Are you Ready?',
                style: Theme.of(context).textTheme.headline5!.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold
                ),
              ),

            ],
          ),
          )
        ],),
      )
    ],
  );

  }

  }