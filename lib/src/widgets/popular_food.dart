import 'package:flutter/material.dart';

class PopularFoods extends StatefulWidget{
  final int id;
  final String name;
  final String imagePath;
  final String description;
  final String category;
  final int price;
  PopularFoods({this.id,this.name, this.imagePath, this.description,this.price,this.category});
  @override
  _PopularFoodState createState() => _PopularFoodState();
}

class _PopularFoodState extends State<PopularFoods>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Stack(
        children: <Widget>[
          Container(
            width: 540.0,
            height: 200.0,
            child: Image.asset(widget.imagePath,fit: BoxFit.cover),
          ),
          Positioned(
            left: 0.0,
            bottom: 0.0,
            child: Container(
              width: 340.0,
            height: 60.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.black,Colors.black12],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
                )
              ),
            ),
          ),
          Positioned(
            left: 0.0,
            bottom: 10.0,
            right: 10.0,
            child: Padding(
              padding: const EdgeInsets.only(left:20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(width: 20.0),
                    Text(widget.name,style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold , color: Colors.green),),

                  ],
                ),
                  Column(
                    children: <Widget>[
                      Text(widget.description,style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold , color: Colors.white),)
                    ],
                  )
                ],
              ),
            ),
          )
        ],

      ),
    );
  }
}