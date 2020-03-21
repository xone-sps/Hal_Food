import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class FoodCard extends StatelessWidget{
final String categoryName;
final String imagePath;
final int numberOfitem;

FoodCard({this.categoryName,this.imagePath,this.numberOfitem});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(right: 8.0),
      child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image(
                  image: AssetImage(imagePath),
                  height: 60.0,
                  width: 60.0,
                ),
                SizedBox(width: 20.0,),
                Column(
                  children: <Widget>[
                    Text(categoryName,style: TextStyle(fontSize: 12.0)),
                    Text("($numberOfitem) ອັນ",style: TextStyle(fontSize: 10.0,color: Colors.green )),
                  ],
                ),
                  ],
            ),
          ),
        ),
    );
  }
}