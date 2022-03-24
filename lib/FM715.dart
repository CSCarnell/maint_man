import 'package:flutter/material.dart';

class FM715 extends StatefulWidget {
  FM715({Key? key}) : super(key: key);

  @override
  State<FM715> createState() => _FM715State();
}

class _FM715State extends State<FM715> {
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
    'What FM covers Army Universal Task List?',
    'What is the movement and maneuver warfighting function?',
    'What is the intelligence warfighting function?',
    'What is the fires warfighting function?',
    'What is the sustainment warfighting function?',
    'What is mission command? ',
    'What is the protection warfighting function?',
    'What is a tactical mission task?',
    'To measure mission accomplishment, commanders also consider if mission accomplishment was within what?'
  ];
  var questionAnswer = [
    'FM 7-15',
    'The movement and maneuver warfighting function is the related tasks and systems that move forces to achieve a position of advantage in relation to the enemy.',
    'The intelligence warfighting function is the related tasks and systems that facilitate understanding of the operational environment, enemy, terrain, and civil considerations.',
    'The fires warfighting function is the related tasks and systems that provide collective and coordinated use of Army indirect fires and joint fires through the targeting process.',
    'The sustainment warfighting function is the related tasks and systems that provide support and services to ensure freedom of action, extend operational reach, and prolong endurance.',
    'Mission command is the exercise of authority and direction by the commander using mission orders to enable disciplined initiative within the commander’s intent to empower agile and adaptive leaders in the conduct of full spectrum operations.',
    'The protection warfighting function is the related tasks and systems that preserve the force so the commander can apply maximum combat power.',
    'A tactical mission task is a specific activity performed by a unit while executing a form of tactical operation or form of maneuver. It may be expressed as either an action by a friendly force or effects on an enemy force.',
    'Higher commander’s intent of what the force must do and the conditions. Specified timeline. Commander’s risk assessment for fratricide avoidance and collateral damage. Minimum expenditure of resources. Unit’s capability of continuing or being assigned future missions and operations.'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FM 7-15'),
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
