import 'package:flutter/material.dart';
import 'package:user/ui/home/myPlanetRow.dart';
import 'package:user/model/planets.dart';

class HomePageBody extends StatelessWidget{

  // HomePageBody(this.planet);
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    // return  PlanetRow(planets[0], horizontal: true);

    // return ListView.builder(

    //               itemBuilder: (context, index)=>PlanetRow(planets[index], horizontal: true),
    //               itemCount: planets.length,
    //               itemExtent: 152.0,

    // );

    return Expanded(child: ListView.builder(
                  itemBuilder: (context, index)=>PlanetRow(planets[index], horizontal: true),
                  itemCount: planets.length,
                  // itemExtent: 152.0,
                  padding: EdgeInsets.symmetric(vertical: 16.0),

    ));
  }

}