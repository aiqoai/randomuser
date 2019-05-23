import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:user/ui/GradientAppBar.dart';
import 'package:user/ui/homepagebody.dart';
class MyPlanetApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final appName = "aiQo theme";

    return  MaterialApp( 
                title: appName,
                theme:  ThemeData(
                  brightness: Brightness.light,
                  primaryColor: Colors.lightGreen,
                  accentColor: Colors.orange

                ),
                home:HomePage()
              );

  }
}


class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      body: 
      Column(children: <Widget>[
        GradientAppBar(
          "treva"
        ),

        Text('Jeremy HU'),
        HomePageBody()

      ])
      
      
      
      
      );
  }
}