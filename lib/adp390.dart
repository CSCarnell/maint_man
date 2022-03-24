import 'package:flutter/material.dart';

class ADP390 extends StatefulWidget {
  ADP390({Key? key}) : super(key: key);

  @override
  State<ADP390> createState() => _ADP390State();
}

class _ADP390State extends State<ADP390> {
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
    'What ADP/ADRP covers Offense and Defense?',
    'What is tactics?',
    'What is the tactical level of war?',
    'What is an engagement?',
    'What echelons typically conduct engagements?',
    'How long to engagements last?',
    'What is a battle?',
    'What do battles affect?',
    'When does a battle occur?',
    'The art of tactics consists of three interrelated aspects.  What are they?',
    'What is the science of tactic?',
    'What is a hasty operation?',
    'What is a deliberate operation?'
  ];

  var questionAnswer = [
    'ADP/ADRP 3-90.',
    'Tactics is the employment and ordered arrangement of forces in relation to each other.',
    'The tactical level of war is the level of war at which battles and engagements are planned and executed to achieve military objectives assigned to tactical units or task forces.',
    'An engagement is a tactical conflict, usually between opposing, lower echelon maneuver forces.',
    'Brigades and smaller echelons typically conduct engagements.',
    'They are usually short, executed in terms of minutes, hours, or days.',
    'A battle consists of a set of related engagements that lasts longer and involves larger forces than an engagement.',
    'Battles can affect the course of a campaign or major operation.',
    'A battle occurs when a division, corps, or army commander fights for one or more significant objectives. Battles are usually operationally significant, if not operationally decisive.',
    'The creative and flexible array of means to accomplish assigned missions. Decision making under conditions of uncertainty when faced with a thinking and adaptive enemy.	Understanding the effects of combat on Soldiers.',
    'The science of tactics encompasses the understanding of those military aspects of tactics—capabilities, techniques, and procedures—that can be measured and codified.',
    'A hasty operation is an operation in which a commander directs immediately available forces, using fragmentary orders, to perform activities with minimal preparation, trading planning and preparation time for speed of execution.',
    'A deliberate operation is an operation in which the tactical situation allows the development and coordination of detailed plans, including multiple branches and sequels '
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ADP 3-90/ADRP 3-90'),
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
