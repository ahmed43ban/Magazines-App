import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:magazines/ElvatedBb.dart';
import 'package:magazines/category.dart';

class PathWord extends StatelessWidget {
  CategoryData inform;
  void Function() onTap;
  PathWord({required this.inform,required this.onTap});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(3),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Image.asset(inform.Image,fit: BoxFit.fill,width: double.infinity,height: double.infinity,),
          ElvatedBb(text: inform.title, page: CategoryData.pages, navigte:(context, page) {

            onTap();
          }

          /*Container(
            color: Color(0xa0993ad1),
            margin: EdgeInsets.only(bottom: 5, right: 5),
            padding: EdgeInsets.all(5),
            child: Text(
              inform.title,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          )*/
          )],
      ),
    );
  }
}
