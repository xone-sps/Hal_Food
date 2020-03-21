import 'package:flutter/material.dart';
import 'package:hal_food/main.dart';
import 'package:hal_food/src/models/food.dart';
import 'widgets/search.dart';
import 'widgets/food_category.dart';
import 'widgets/popular_food.dart';
//import food data
import 'data/food_data.dart';

class Home extends StatefulWidget{
  List<Foods> _foods =foods;
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final mainStyle =TextStyle(fontSize: 28.0,fontWeight: FontWeight.bold,color: Colors.green,fontFamily: 'boonhome'
  );
  final primayStyle =TextStyle(fontSize: 22.0,fontWeight: FontWeight.bold,color: Colors.green,fontFamily: 'boonhome'
  );
  final mainColor = (Colors.green);
  final appBarName = "ສົ່ງທົ່ວປະເທດ";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: EdgeInsets.only(left: 12),
          child: IconButton(
            icon: Icon(Icons.menu,color: mainColor,size: 32.0,),
            onPressed: () {
              print('Click menu');
            },
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget>[
            Text(appBarName,style: mainStyle,),
          ]
      ),
        actions: <Widget>[ChekcoutButton()],
      ),

      body: ListView(
        padding:EdgeInsets.only(top:10.0,left:20.0,right:20.0),
        children: <Widget>[
          Search(),
          Text("Food Category",style: TextStyle(fontSize: 18.0,color: Colors.green),),
          SizedBox(height: 10.0),
//          food category section
          FoodCategory(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Popular Food",style: TextStyle(color: mainColor,fontSize: 18.0),),
              Text("View all",style: TextStyle(color: Colors.black,fontSize: 16.0),),
            ],
          ),
          SizedBox(height: 10.0),
//            popular food section
            Column(
              children: foods.map(FoodItem).toList()
            ),
        ],
      ),
    );
  }
  Widget ChekcoutButton() {
    return IconButton(
      padding: EdgeInsets.only(left: 20.0),
      icon: Icon(Icons.shopping_cart,color: mainColor,),
      onPressed: () {
        print('you click checkout');
      },
    );
  }
  Widget menu() {
    return IconButton(
      icon: Icon(Icons.restaurant_menu,color: mainColor,),
      onPressed: () {
        print('you click menu');
      },
    );
  }
//  Food item style and list
  Widget FoodItem(Foods food){
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
        child: PopularFoods(
          id:food.id,
          name:food.name,
          description: food.description,
          imagePath: food.imagePath,
          category: food.category,
//          price: food.price

        ),);
  }
}