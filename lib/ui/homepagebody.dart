import 'package:flutter/material.dart';
import 'package:user/ui/PlanetRow.dart';
import 'package:user/model/planets.dart';

class HomePageBody extends StatelessWidget{
    final Planet planet=const Planet(
    id: "1",
    name: "Mars",
    location: "Milkyway Galaxy",
    distance: "54.6m Km",
    gravity: "3.711 m/s ",
    description: "Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System after Mercury. In English, Mars carries a name of the Roman god of war, and is often referred to as the 'Red Planet' because the reddish iron oxide prevalent on its surface gives it a reddish appearance that is distinctive among the astronomical bodies visible to the naked eye. Mars is a terrestrial planet with a thin atmosphere, having surface features reminiscent both of the impact craters of the Moon and the valleys, deserts, and polar ice caps of Earth.",
    image: "assets/img/mars.png",
    picture: "https://www.nasa.gov/sites/default/files/thumbnails/image/pia21723-16.jpg"
  );
  // HomePageBody(this.planet);
  @override
  Widget build(BuildContext context) {





      //  final Planet planet=planets[0];
  // final bool horizontal;
    // TODO: implement build
    return  PlanetRow(this.planet, horizontal: true);
  }

}