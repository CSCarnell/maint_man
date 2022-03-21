import 'package:flutter/material.dart';

class ADP1 extends StatefulWidget {
  ADP1({Key? key}) : super(key: key);

  @override
  State<ADP1> createState() => _ADP1State();
}

class _ADP1State extends State<ADP1> {
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
    'What ADP/ADRP covers The Army?',
    'In which domains does the U.S. forces operate?',
    'What are four essential characteristics of our profession? (MESH)',
    'What are the 11 primary missions of the US armed forces?',
    'What is the most important determinant of combat power?',
    'What is the US Armys greatest strategic asset? Provides depth, versatility, and unmatched experience to the joint force.',
    'Title 10 USC establishes the basic structure of the Army, what forces make up the Army?',
    'What is the function of the Operating Force?',
    'What is the function of the Generating Force?',
    'What five sets of characteristics will enhance the Army\'s operational adaptability? '
  ];

  var questionAnswer = [
    'ADP 1/ADRP 1',
    'Air, Land, maritime, space, and cyberspace domains',
    'Military expertise, esprit de corps, stewardship, honorable service',
    'counter terrorism, deter and defeat aggression, project power, counter weapons of mass destruction, operate effectively in cyberspace, operate effectively in space, maintain nuclear deterrent, defend the homeland, provide a stabilizing presence, counterinsurgency, and humanitarian',
    'Leadership',
    'The all volunteer force',
    'One regular Army and two reserve components. (active Army, Army reserves, and National Guard.',
    'Operating forces consist of units organized, trained, and equipped to deploy and fight',
    'The generating force mans, trains, equips, deploys, and ensures the readiness of all Army forces',
    'Depth and Versatility, Adaptive and Innovative, Flexibility and Agility, Integrated and Synchronized, Lethal and Discriminate',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ADP 1/ADRP 1'),
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
