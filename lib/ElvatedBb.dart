import 'package:flutter/material.dart';

class ElvatedBb extends StatelessWidget {
  String text ;
  String page ;
  Function(BuildContext, String) navigte;
   ElvatedBb({required this.text,required this.page,required this.navigte});

  @override
  Widget build(BuildContext context) {
    return Container(

      child: ElevatedButton(
        onPressed: (){
          navigte(context,page);},
        style: ElevatedButton.styleFrom(
            backgroundColor:Color(0xa0993ad1),
            padding: EdgeInsets.all(5),

      ),


        child: Text(
          text,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
