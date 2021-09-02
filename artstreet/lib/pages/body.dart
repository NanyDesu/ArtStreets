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
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            height: 54,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0,10),
                  blurRadius: 50,
                  color: Colors.black.withOpacity(0.23),
                )
              ],
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search",
                hintStyle: TextStyle(
                  color: Colors.pink.withOpacity(0.5),
                  ),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
              ),
            ),
            ),
          )

        ],),
      )
    ],
  );

  }

  }