import 'package:flutter/material.dart';

class Search extends StatelessWidget{
  final primayStyle =TextStyle(fontSize: 22.0,fontWeight: FontWeight.bold,color: Colors.green,fontFamily: 'boonhome'
  );
  @override
  Widget build(BuildContext context) {
      return Container(
        margin: EdgeInsets.only(bottom: 8.0),
        child: Material(
          elevation: 5.0,
          borderRadius: BorderRadius.circular(30.0),
          child: TextField(
            style: TextStyle(color: Colors.blueGrey),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 12.0,horizontal: 30.0),
              prefixIcon:
                   Icon(Icons.search,color: Colors.green,),
              hintText: "ປ້ອນເມນູອາຫານ",
              border: InputBorder.none,
            ),
          ),
        ),
      );
  }
}