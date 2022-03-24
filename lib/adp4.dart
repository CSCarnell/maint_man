import 'package:flutter/material.dart';

class ADP4 extends StatefulWidget {
  ADP4({Key? key}) : super(key: key);

  @override
  State<ADP4> createState() => _ADP4State();
}

class _ADP4State extends State<ADP4> {
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
    'What ADP/ADRP covers Sustainment?',
    'What is the sustainment warfighting function?',
    'What is logistics?',
    'What are personnel services?',
    'What are the sustainment principles?',
    'What are the principles of personnel services? ',
    'What is the synchronization, coordination, and/or integration of the activities of governmental and nongovernmental entities with military operations to achieve a unity of effort?',
    'What is the purposeful reliance by one Service’s forces on another Service’s capabilities to maximize the complementary and reinforcing effects of both?',
    'What are generating forces?',
    'What are operating forces?'
  ];

  var questionAnswer = [
    'ADP/ADRP 4-0',
    'The sustainment warfighting function is related tasks and systems that provide support and services to ensure freedom of action, extend operational reach, and prolong endurance.',
    'Logistics is planning and executing of the movement and support of forces.',
    'Personnel services are sustainment functions that man and fund the force, maintain Soldier and Family readiness, promote the moral and ethical values of the nation, and enable the fighting qualities of the Army.',
    'Integration, Anticipation,	Responsiveness,	Simplicity,	Economy, Survivability,	Continuity,	Improvisation',
    'Synchronization, Timeliness,	Stewardshi,	Accuracy,	Consistency',
    'Unified action',
    'Joint interdependence',
    'Generating forces consist of those Army organizations whose primary mission is to generate and sustain the operational Army’s capabilities for employment.',
    'Operating forces are those forces whose primary missions are to participate in combat and the integral supporting elements thereof.'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ADP 4-0/ADRP 4-0'),
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
