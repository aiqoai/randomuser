import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:user/ui/home/myGradientAppBar.dart';
import 'package:user/ui/home/myHomepagebody.dart';
import 'package:user/ui/detail/myDetail.dart';
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
                 home:HomePage(),
                routes: <String,WidgetBuilder>{
                  // 'detail':(_)=>MyDetail(),
                  'root':(_)=>HomePage()
                },
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

        // Text('Jeremy HU'),
        HomePageBody(),
        // HomePageBody(),
        // HomePageBody(),
        // HomePageBody()

      ])
      
      
      
      
      );
  }
}