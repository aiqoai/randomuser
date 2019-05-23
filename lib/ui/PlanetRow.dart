import 'package:flutter/material.dart';

import 'package:user/model/planets.dart';


class PlanetRow extends StatelessWidget{

final Planet planet;
  
  final bool horizontal;
// PlanetRow();
  PlanetRow(this.planet,{this.horizontal = true});
  //

   PlanetRow.vertical(this.planet): horizontal = false;


  @override
  Widget build(BuildContext context){


    final planetThumbnail =  Container(
      margin:  EdgeInsets.symmetric(
        vertical: 16.0
      ),
      alignment: horizontal ? FractionalOffset.centerLeft : FractionalOffset.center,
      child:  Hero(
          tag: "planet-hero-${planet.id}",
          child:  Image(
          image:  AssetImage(planet.image),
          height: 92.0,
          width: 92.0,
        ),
      ),
    );





   final planetCard =  Container(
      child: Text(" CARD "),//planetCardContent,
      height: horizontal ? 124.0 : 154.0,
      margin: horizontal
        ?  EdgeInsets.only(left: 46.0)
        :  EdgeInsets.only(top: 72.0),
      decoration:  BoxDecoration(
        color:  Color(0xFF333366),
        shape: BoxShape.rectangle,
        borderRadius:  BorderRadius.circular(8.0),
        boxShadow: <BoxShadow>[
           BoxShadow(
            color: Colors.black12,
            blurRadius: 10.0,
            offset:  Offset(0.0, 10.0),
          ),
        ],
      ),
    );

    return Container(
        height:120.0,
        margin: EdgeInsets.only(top:16.0,
        bottom:16.0,
        left:24.0,
        right:24.0),
        child: Stack(children: <Widget>[
          planetCard,
          planetThumbnail,

        ],)

    );
  }
}

