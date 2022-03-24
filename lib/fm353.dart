import 'package:flutter/material.dart';

class FM353 extends StatefulWidget {
  FM353({Key? key}) : super(key: key);

  @override
  State<FM353> createState() => _FM353State();
}

class _FM353State extends State<FM353> {
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
    'What FM covers Military Information Support Operations (MISO)?',
    'What is the purpose of military information support operations forces?',
    'How are military information support operations used?',
    'How do military information support operations contribute to the accomplishment of the full range of conventional and special operations missions?',
    'MISO are executed in conjunction with other inform and influence activities to give commanders and leaders the informational advantage at every level of the operation. To that end, Army MISO forces focus their training and resources in support of three distinct missions, which are what?',
    'What are the Military Information Support Operations (MISO) core tasks?',
    'Inform and influence lines of effort have several information-related capabilities (IRCs) that can support and complement MISO. What are the primary IRCs directly relevant to MISO?'
  ];
  var questionAnswer = [
    'FM 3-53',
    'MISO forces are the Army’s primary means to communicate with, inform, and influence foreign audiences and provide the means to shape the OE.',
    'MISO are used to maintain stability, deter aggression, undermine subversion, and maximize the effectiveness of the warfighting commander’s combat power.',
    'By influencing, informing, and directing foreign audiences and populations in a manner consistent with U.S. national objectives.',
    'Military Information. Interagency/Intergovernmental Support. Civil Authority Information Support.',
    'Advise. Plan. Develop. Deliver. Assess. ',
    'Military deception (MILDEC). Combat camera. Civil Affairs operations (CAO). Cyber electromagnetic activities. '
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FM 3-53'),
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
