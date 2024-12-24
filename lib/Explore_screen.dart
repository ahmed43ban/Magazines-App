import 'package:flutter/material.dart';
import 'package:magazines/category.dart';
import 'package:magazines/home-screen.dart';

class ExploreScreen extends StatelessWidget {
  static const String RouteName ="Explore";
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
   CategoryData args = ModalRoute.of(context)?.settings.arguments as CategoryData;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(args.Image),fit: BoxFit.fill),
        color: Colors.blue
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(toolbarHeight: 80,
          backgroundColor: Colors.transparent,
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).popAndPushNamed(HomeScreen.RouteName);
              },
              style: IconButton.styleFrom(
                  padding: EdgeInsets.all(12),
                  backgroundColor: Colors.green,
                  shape: CircleBorder()),
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              )),
          title: Center(
            child: Text(
              args.title,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w700),
            ),
          ),

        ),
        body: Column(
          children: [
            Expanded(
              child: ListView(
                children: [ Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(" ماذا تعني ${args.title}؟ ",style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.w900
                          ),),
                        )
                      ],

                    ),
                    Padding(
                      padding:  EdgeInsets.only(right: 8),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(textDirection: TextDirection.rtl,
                              args.discrib,
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 24,
                                  color: Colors.blue),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                ]),
            ),
          ],
        ),
      
      ),
    );
  }
}
