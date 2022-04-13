import 'package:flutter/material.dart';

class LandNav extends StatefulWidget {
  LandNav({Key? key}) : super(key: key);

  @override
  State<LandNav> createState() => _LandNavState();
}

class _LandNavState extends State<LandNav> {
  var questionNumber = 0;
  bool showAnswer = false;

  void answerQuestion() {
    setState(() {
      if (questionNumber >= questionText.length - 1) {
        questionNumber = 0;
      } else {
        questionNumber = questionNumber + 1;
      }
      showAnswer = false;
    });
  }

  void questionSwipeForward() {
    setState(() {
      if (questionNumber >= questionText.length - 1) {
        questionNumber = 0;
      } else {
        questionNumber += 1;
      }
    });
  }

  void questionSwipeBack() {
    setState(() {
      if (questionNumber == 0) {
        questionNumber = questionText.length - 1;
      } else
        questionNumber -= 1;
    });
  }

  void answerShow() {
    setState(() {
      showAnswer = true;
    });
  }

  var questionText = [
    'What TC a covers Map Reading and Land Navigation?',
    'What is a map?',
    'What information does a map provide?',
    'Name some different types of maps',
    'What is a planimetric map?',
    'What is a topographic map?',
    'What is a photomap?',
    'What is a joint operations graphics?',
    'What is a photomosaic?',
    'What is a terrain model?',
    'What is a military city map?',
    'What are special maps?',
    'Where do you find information to help read a map?',
    'Where do you find information about the map symbols?',
    'Where will you find the sheet name of a map?',
    'Where will you find the sheet number of a map?',
    'Where will you find the series name of a map?',
    'Where will you find the Scale of a map?',
    'Where will you find the legend of a map',
    'What does the legend of a map represent?',
    'What are the colors of a military map?',
    'What does black represent on a military map?',
    'What does red-brown represent on a military map?',
    'What does blue represent on a military map?',
    'What does green represent on a military map?',
    'What does brown represent on a military map?',
    'What does red represent on a military map?',
    'Which direction do lines of latitude run?',
    'What are the rings around the earth parallel to the equator?',
    'What lines run north and south?',
    'What lines run east and west?',
    'How do you read a map with a protractor to determine a grid?',
    'What does UTM stand for?',
    'What is the universal transverse mercator grid?',
    'How close will a six digit grid be to a location?',
    'How close will an eight digit grid be to a location?',
    'How close will a four digit grid be to a location?',
    'What does the graphic bar scale do?',
    'What are the units of measurement used for direction?',
    'How many Norths are on a Military map?',
    'What is True North?',
    'What is Magnetic North?',
    'What is Grid North?',
    'What is an Azimuth?',
    'What is an back Azimuth?',
    'How do you obtain a back Azimuth?',
    'What is a Magnetic Azimuth?',
    'What is a Grid Azimuth?',
    'What does the declination diagram display?',
    'What is the Grid-Magnetic angle?',
    'What is Intersection?',
    'What is Resection?',
    'What are two techniques for using the lensatic compass?',
    'What are the advantages of using the centerhold technique?',
    'When is the compass to cheek technique normally used?',
    'What does GPS stand for?',
    'What is elevation?',
    'What is relief?',
    'What are contour lines?',
    'What are the three different types of contour?',
    'What are the five major terrain features?',
    'What are the three minor terrain features?',
    'What are the supplementary terrain features?',
    'What is the first step to navigation?',
    'What does the acronym OCOKA stand for?',
    'What are the navigation methods?',
  ];

  var questionAnswer = [
    'TC 3-25.26',
    'A graphic representation of a portion of the earth\'s surface drawn to scale as seen from above',
    'information on the existence, location, and distance between ground features',
    'Planimetic, topographic, photomap, photomosaic, terrain model, military city map, special maps',
    'map that presents only the horizontal positions for the features represented',
    'map that portrays terrain features in a measurable way , as well as the horizontal positions of the features represented',
    'reproduction of an aerial photograph upon which grid lines, marginal data, place names, route numbers, important elevations, boundaries, and approximate scale and direction have been added',
    'maps based on the format of medium-scale military topographic maps, but they contain additional information needed in joint air-ground operations',
    'assembly of aerial photographs that is commonly called a mosaic in topographic usage',
    'scale model of the terrain showing features, and in large-scale models showing industrial and cultural shapes',
    'topographic map showing the details of a city',
    'maps for special purposes, such as trafficability, communications, and assault maps',
    'the marginal information',
    'the marginal information/map legend',
    'at the center of the top and in the lower left area of the map margin',
    'both the upper right and lower left areas of the margin',
    'the upper left corner of the margin',
    'the upper left margin',
    'lower left margin',
    'illustrates and identifies the topographic symbols used to depict some of the more prominent features on the map',
    'black, red-brown, blue, green, brown, red',
    'man made objects',
    'nonsurveyed spot elevations, elevation contour lines',
    'water',
    'vegetation with military significance',
    'relief features and elevation lines',
    'population areas, main roads, and boundaries',
    'latitude run east-west',
    'latitude lines',
    'Longitude Lines',
    'latitude',
    'Right and Up',
    'Universal Transverse Mercator Grid',
    'grid designed to cover part of the world between LAT 84 degrees North and LAT 80 degrees South',
    'within 100 meters',
    'within 10 meters',
    'within 1,000 meters',
    'ruler printed on the map and is used to convert distances on the map to actual ground distances',
    'degrees, mil, grad',
    'three, true, magnetic, and grid',
    'A line from any point on the earth\'s surface to the north pole',
    'direction to the north magnetic pole, as indicated by the north-seeking needle of a magnetic instrument',
    'north that is established by using the vertical grid lines on the map',
    'a horizontal angle measured clockwise from a north base line',
    'the opposite direction of an azimuth',
    'add 180 degrees if the azimuth is 180 degrees or less, or subtract 180 degrees if the azimuth is 180 degrees or more',
    'determined by using magnetic instruments',
    'protractor is used to  measure the angle between grid north and the drawn line',
    'the angular relationship, represented by prongs, among grid, magnetic, and true norths',
    'the angular size that exists between grid north and magnetic north',
    'using two or more known points to find a distant unknown point',
    'using two or more known points to find your own position',
    'centerhold and compass to cheek',
    'it\'s faster and easier',
    'for sighting',
    'Global Positioning System',
    'a point on the earth’s surface is the vertical distance it is above or below mean sea level',
    'representation of terrain features on the earth\'s surface',
    'represents an imaginary line on the ground, above or below sea level',
    'index, intermediate, supplementary',
    'hill, saddle, valley, ridge, depression',
    'cliff, draw, spur',
    'cut & fill',
    'orienting the map',
    'Observations and fields of fire, cover and concealments, obstacles, key terrain, avenues of approach',
    'dead reckoning, terrain associations, combination of the two',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Map Reading & Land Navigation'),
        centerTitle: true,
        foregroundColor: Colors.black,
        backgroundColor: Colors.amber,
      ),
      body: SizedBox.expand(
        child: GestureDetector(
          onHorizontalDragEnd: (DragEndDetails details) {
            if (details.primaryVelocity! > 0) {
              questionSwipeBack();
            } else if (details.primaryVelocity! < 0) {
              questionSwipeForward();
            }
          },
          child: Column(
            children: [
              Flexible(
                fit: FlexFit.tight,
                child: Container(
                  margin: const EdgeInsets.all(5.0),
                  padding: const EdgeInsets.all(5.0),
                  color: Colors.orangeAccent,
                  alignment: Alignment.center,
                  child: Text(questionText[questionNumber],
                      style: TextStyle(fontSize: 15)),
                ),
              ),
              if (!showAnswer)
                Flexible(
                  fit: FlexFit.tight,
                  child: GestureDetector(
                    onTap: () {
                      answerShow();
                    },
                    child: Container(
                      margin: const EdgeInsets.all(5.0),
                      transformAlignment: Alignment.bottomCenter,
                      constraints: BoxConstraints.expand(
                        height:
                            Theme.of(context).textTheme.headline4!.fontSize! *
                                    .8 +
                                200.0,
                      ),
                      padding: const EdgeInsets.all(5.0),
                      color: Colors.orangeAccent,
                      alignment: Alignment.center,
                      child: Text('answer hidden, tap to show',
                          style: TextStyle(fontSize: 15)),
                    ),
                  ),
                ),
              if (showAnswer)
                Flexible(
                  fit: FlexFit.tight,
                  child: Container(
                    margin: const EdgeInsets.all(5.0),
                    transformAlignment: Alignment.bottomCenter,
                    padding: const EdgeInsets.all(5.0),
                    color: Colors.orangeAccent,
                    alignment: Alignment.center,
                    child: Flexible(
                      fit: FlexFit.tight,
                      child: Text(
                        questionAnswer[questionNumber],
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.amber),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.black),
                      ),
                      onPressed: answerShow,

                      // next question button
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Text('Show Answer'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.amber),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.black),
                      ),
                      onPressed: answerQuestion,

                      // next question button
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Text('Next'),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
