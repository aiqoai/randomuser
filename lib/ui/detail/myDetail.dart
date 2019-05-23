import 'package:flutter/material.dart';
import 'package:user/model/planets.dart';

import 'package:user/ui/home/myPlanetRow.dart';
import 'package:user/ui/common/separator.dart';
import 'package:user/ui/text_style.dart';


class MyDetail extends StatelessWidget{
  
  final Planet planet;
  MyDetail(this.planet);

  // const MyDetail({Key key, this.planet}) : super(key: key);

  // @override
  // Widget build(BuildContext context) {
  //   // TODO: implement build
  //   return Text(planet.description);
  // }
 @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  Container(
        constraints:  BoxConstraints.expand(),
        color:  Color(0xFF736AB7),
        child:  Stack (
          children: <Widget>[
            // _getBackground(),
            // _getGradient(),
            _getContent(),
             _getToolbar(context),
          ],
        ),
      ),
    );
  }

  Container _getBackground () {
    return  Container(
            child:  Image.network(planet.picture,
              fit: BoxFit.cover,
              height: 300.0,
            ),
            constraints:  BoxConstraints.expand(height: 295.0),
          );
  }

  Container _getGradient() {
    return  Container(
            margin:  EdgeInsets.only(top: 190.0),
            height: 110.0,
            decoration:  BoxDecoration(
              gradient:  LinearGradient(
                colors: <Color>[
                   Color(0x00736AB7),
                   Color(0xFF736AB7)
                ],
                stops: [0.0, 0.9],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(0.0, 1.0),
              ),
            ),
          );
  }

  Container _getContent() {
    final _overviewTitle = "Overview".toUpperCase();
    return  Container(
            child:  ListView(
              padding:  EdgeInsets.fromLTRB(0.0, 72.0, 0.0, 32.0),
              children: <Widget>[
                 PlanetRow(planet,
                  horizontal: false,
                ),
                 Container(
                  padding:  EdgeInsets.symmetric(horizontal: 32.0),
                  child:  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                       Text(_overviewTitle,
                        style: Style.headerTextStyle,),
                       Separator(),
                       Text(
                          planet.description, style: Style.commonTextStyle),
                    ],
                  ),
                ),
              ],
            ),
          );
  }

  Container _getToolbar(BuildContext context) {
    return  Container(
            margin:  EdgeInsets.only(
                top: MediaQuery
                    .of(context)
                    .padding
                    .top),
            child:  BackButton(color: Colors.white),
          );
  }

}