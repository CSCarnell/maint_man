import 'package:flutter/material.dart';

class FM390 extends StatefulWidget {
  FM390({Key? key}) : super(key: key);

  @override
  State<FM390> createState() => _FM390State();
}

class _FM390State extends State<FM390> {
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

  void answerShow() {
    setState(() {
      showAnswer = true;
    });
  }

  var questionText = [
    'What FM covers Offense and Defense?',
    'What is the purpose of an offensive task?',
    'What are the characteristics of offensive tasks?',
    'What are the four primary offensive tasks?',
    'What is the purpose of a defensive task?',
    'What are the characteristics of the defense?',
    'What are the three basic defensive tasks?',
    'Units conducting tactical operations must have clearly defined tasks and responsibilities. The commander uses control measures to impose restrictions that prevent units from impeding one another and establish specific responsibilities. What is the difference between permissive and restrictive control measures?',
    'What FM covers Reconnaissance, Security, and Tactical Enabling Tasks?',
    'A mission undertaken to obtain, by visual observation or other detection methods, information about the activities and resources of an enemy or adversary, or to secure data concerning the meteorological, hydrographical, or geographic characteristics of a particular area is what?',
    'What are the five forms of reconnaissance?',
    'Those operations undertaken by a commander to provide early and accurate warning of enemy operations, to provide the force being protected with time and maneuver space within which to react to the enemy, and to develop the situation to allow the commander to effectively use the protected force is what?',
    'What are the five tasks security operations encompass?',
    'An operation in which, by direction of higher authority, all or part of a unit is replaced in an area by the incoming unit and the responsibilities of the replaced elements for the mission and the assigned zone of operations are transferred to the incoming unit is what?',
    'What is an operation in which a force moves forward or rearward through another force’s combat positions with the intention of moving into or out of contact with the enemy?',
    'Those operations where one force loses its freedom of maneuver because an opposing force is able to isolate it by controlling all ground lines of communications and reinforcement are what?'
  ];
  var questionAnswer = [
    'FM 3-90, Vol 1',
    'An offensive task is a task conducted to defeat and destroy enemy forces and seize terrain, resources, and population centers.',
    'Surprise. Concentration.	Tempo. Audacity.',
    'Movement to contact. Attack.	Exploitation.	Pursuit.',
    'A defensive task is a task conducted to defeat an enemy attack, gain time, economize forces, and develop conditions favorable for offensive or stability tasks.',
    'Disruption. Flexibility.	Maneuver.	Massing effects. Operations in depth. Preparation. Security.',
    'The area defense. The mobile defense. The retrograde.',
    'Permissive control measures allow something to happen.  Restrictive control measures limit how something is done.',
    'FM 3-90, Vol 2',
    'Reconnaissance',
    'Route reconnaissance. Zone reconnaissance. Area reconnaissance. Reconnaissance in force (RIF).	Special reconnaissance',
    'Security operations',
    'Screen, Guard, Cover, Area, Local',
    'A relief in place',
    'Passage of lines',
    'Encirclement operations'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FM 3-90'),
        centerTitle: true,
        foregroundColor: Colors.black,
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10.0),
            constraints: BoxConstraints.expand(
              height:
                  Theme.of(context).textTheme.headline4!.fontSize! * .8 + 200.0,
            ),
            padding: const EdgeInsets.all(8.0),
            color: Colors.orangeAccent,
            alignment: Alignment.center,
            child: Text(
              questionText[questionNumber],
            ),
          ),
          if (!showAnswer)
            GestureDetector(
              onTap: () {
                showAnswer = true;
              },
              child: Container(
                margin: const EdgeInsets.all(10.0),
                transformAlignment: Alignment.bottomCenter,
                constraints: BoxConstraints.expand(
                  height:
                      Theme.of(context).textTheme.headline4!.fontSize! * .8 +
                          200.0,
                ),
                padding: const EdgeInsets.all(8.0),
                color: Colors.orangeAccent,
                alignment: Alignment.center,
                child: Text('answer hidden',
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(color: Colors.black)),
              ),
            ),
          if (showAnswer)
            Container(
              margin: const EdgeInsets.all(10.0),
              transformAlignment: Alignment.bottomCenter,
              constraints: BoxConstraints.expand(
                height: Theme.of(context).textTheme.headline4!.fontSize! * 1.1 +
                    200.0,
              ),
              padding: const EdgeInsets.all(8.0),
              color: Colors.orangeAccent,
              alignment: Alignment.center,
              child: Text(questionAnswer[questionNumber]),
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
                  child: Text('Show Answer'),
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
                  child: Text('Next'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
