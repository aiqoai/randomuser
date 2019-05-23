import 'package:flutter/material.dart';

class GradientAppBar extends StatelessWidget{

final String title;
final double barHeight=66.0;
GradientAppBar(this.title);

  @override
  Widget build(BuildContext context){
    final double padding=MediaQuery.of(context).padding.top;
    return Container(
      padding: EdgeInsets.only(top: padding),
      height: barHeight+padding,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors:[Color(0xFF3366FF),Color(0xFF00CCFF)],
        begin: FractionalOffset(0,0),
        end:FractionalOffset(0.5,0.0),
        stops:[0.0,0.5],
        tileMode:TileMode.clamp)),
        
        // color: Colors.blue),
      
      child: Center(child: 
              Text(title,
                
                style: TextStyle(color: Colors.white,
                        // fontFamily: 'Poppins',
                          //fontWeight: FontWeight.w100,
                          fontSize: 26.0)
                )
                
                )
                
                
                );
      
      
  }
}