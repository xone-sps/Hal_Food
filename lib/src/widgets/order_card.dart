import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: Padding(
        padding:EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0 ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 75.0,
              width: 45.9,
              decoration: BoxDecoration(
                border: Border.all(width: 1.0,color: Color(0xff9bca5d)),
                borderRadius: BorderRadius.circular(10.0)
              ),
              child: Column(
                children: <Widget>[
                      InkWell(
                          onTap:(){},
                          child: Icon(Icons.keyboard_arrow_up,color: Color(0xff9bca5d))
                      ),
                  Text("0",style: TextStyle(fontSize: 16.0,color: Color(0xff9bca5d)),),
                  InkWell(
                      onTap:(){},
                      child: Icon(Icons.keyboard_arrow_down,color: Color(0xff9bca5d),)
                  ),
                ],
              ),
            ),
            SizedBox(width: 20.0,),
//            Image container

          Container(
            height: 70.0,
            width: 70.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/fish1.jpg"),
                  fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(35.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 2.0,
                  offset: Offset(2.0,2.0)
                )
              ]
            ),
          ),
            SizedBox(width: 20.0,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("ຊີ້ນສະຫວັນ",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),),
                SizedBox(height: 5.0,),
                Text("4,000",style: TextStyle(color:Color(0xff9bca5d)),),
                SizedBox(height: 5.0,),
                Container(
                  height: 45.0,
                  width: 120.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(right: 10.0),
                        child: Row(
                          children: <Widget>[
                            Text("ຊີ້ນສະຫວັນ",style: TextStyle(color: Colors.grey),),
                            SizedBox(width: 5.0,),
                            InkWell(
                              onTap: (){},
                                child: Text("x",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),
                                )),
                          ],
                        ),
                      ),

                    ],
                  ),
                )
              ],
            ),
            Spacer(),
            GestureDetector(
              onTap: (){},
              child: Icon(Icons.cancel,color: Colors.grey,),
            )
          ],
        ),
      ),
    );
  }
}