import 'package:flutter/material.dart';
import 'package:magazines/Explore_screen.dart';

import 'home-screen.dart';


main (){
  runApp(MyApp());
}



class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter basics c13',
      routes: {
        HomeScreen.RouteName:(context)=>HomeScreen(),
        ExploreScreen.RouteName:(context)=>ExploreScreen(),


      },
      initialRoute:HomeScreen.RouteName ,
    );

  }

}
