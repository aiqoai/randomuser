import 'package:flutter/material.dart';

import 'package:user/model/planets.dart';
import 'package:user/ui/text_style.dart';

class PlanetRow extends StatelessWidget{

  final Planet planet;
  
  final bool horizontal;

  PlanetRow(this.planet,{this.horizontal = true});

  PlanetRow.vertical(this.planet): horizontal = false;

   TextStyle baseTextStyle = TextStyle(fontFamily:'Popins');
   TextStyle headerTestStyle = Style.baseTextStyle.copyWith(
    color:  Colors.white,
    fontSize: 18.0,
    fontWeight:FontWeight.w600
  );



  @override
  Widget build(BuildContext context){

    final planetThumbnail =  Container(
      margin:  EdgeInsets.symmetric(
        vertical: 16.0
      ),
      alignment: FractionalOffset.centerLeft,
      //horizontal ? FractionalOffset.centerLeft : FractionalOffset.center,
      child:  //Column(children: <Widget>[ 
        Image(image: AssetImage(planet.image),height: 92.0,width: 92.0)
      //   Hero(
      //     tag: "planet-hero-${planet.id}",
      //     child:  Image(
      //     image:  AssetImage(planet.image),
      //     height: 92.0,
      //     width: 92.0,
      //   ),
      // ),
      
    


      //])

    );

    Widget _planetValue({String value, String image}){
      return Row(children: <Widget>[
        Image.asset(image,height:12.0),
        Container(width:8.0),
        Text(planet.gravity, style:Style.smallTextStyle)
      ],);
    }

    final content=Container(
      margin: EdgeInsets.fromLTRB(76.0, 0.0, 8.0, 0.0),
      // constraints: BoxConstraints.expand(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          Container(height: 2.0,),
          Text(planet.name,style: Style.headerTextStyle),

          Container(height: 10.0,),
          Row(children: <Widget>[
              Text(planet.location,style:Style.titleTextStyle),
          ],),
          

          Container(height: 4,),
          Row(children: <Widget>[    Container(height: 8.0,width: 20.0, color:Color(0xff00c6ff))]),
          Container(height: 8,),

          Row(children: <Widget>[

            Expanded(child: 
            _planetValue(value:planet.distance, image:"assets/img/ic_distance.png")
            
            // Row(children: <Widget>[

            // Image.asset("assets/img/ic_distance.png"),
            // Container(width: 8.0,),
            // Text(planet.distance,style: Style.smallTextStyle,),

            // ],),
            ),
          

            // Container(width: 24,),

            Expanded(child: 
            _planetValue(image: "assets/img/ic_gravity.png",value: planet.gravity)
            // Row(children: <Widget>[


            // Image.asset("assets/img/ic_gravity.png"),
            // Container(width: 8.0,),
            // Text(planet.gravity,style: Style.smallTextStyle,)

            // ],),
            
            )

          ],)

        ],


      ),

    );



   final planetCard =  Container(
      child: content,
      height: 150.0,
      //horizontal ? 124.0 : 154.0,
      margin: EdgeInsets.only(left:46.0),
      // horizontal
      //   ?  EdgeInsets.only(left: 46.0)
      //   :  EdgeInsets.only(top: 72.0),


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
        height:130.0,
        margin: 
        EdgeInsets.symmetric(vertical: 15.0,
        horizontal: 15.0),
        // EdgeInsets.all(50),
        // EdgeInsets.only(top:16.0,
        // bottom:16.0,
        // left:24.0,
        // right:24.0),



        child: Stack(children: <Widget>[
          planetCard,
          planetThumbnail,
           // Text(planet.description),
      // Text(planet.picture),

        ])

    );
  }
}

