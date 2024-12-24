import 'package:flutter/material.dart';

class HeadLines extends StatelessWidget{
  String title ;
  HeadLines(this.title);
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        padding: EdgeInsets.all(10),
          color: Colors.purple,
          child: Text(title,
            style: TextStyle(fontSize: 30,color: Colors.white),
            textAlign: TextAlign.center,)
      ),
    );
  }

}