import 'package:flutter/material.dart';

class ADP305 extends StatefulWidget {
  ADP305({Key? key}) : super(key: key);

  @override
  State<ADP305> createState() => _ADP305State();
}

class _ADP305State extends State<ADP305> {
  var questionNumber = 0;
  bool showAnswer = false;

  static var headquarters;

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
    'What ADP/ADRP covers Special Operations?',
    'What factors determine the employment of special operations forces?',
    'What are the 12 Special Operations Force imperatives?',
    'What will increase the effectiveness of shaping activities and improve execution of counterterrorism and irregular warfare?',
    'What critical capabilities represent the core of America’s unique Army special operations capabilities?',
  ];

  var questionAnswer = [
    'ADP/ADRP 3-05',
    'National policy, Geographic combatant commander requirements, Joint force commander requirements,	Ambassador requirements,	The character of the operational environment, The nature of the threat',
    'Discreet, Precise,	Scalable operations',
    'Understand the operational environment, Recognize political implications, Facilitate military and interagency activities, Engage the threat discriminately,	Anticipate long-term effects,	Ensure legitimacy and credibility,Anticipate and control psychological effects,	Operate with and through others,	Develop multiple options,	Support long-term engagement,	Provide sufficient intelligence,	Balance security and synchronization',
    'Interdependence between special operations forces and conventional forces.',
    'Special warfare,	Surgical strike'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ADP 3-05/ADRP 3-05'),
        centerTitle: true,
        foregroundColor: Colors.black,
        backgroundColor: Colors.amber,
      ),
      body: Column(
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
                        Theme.of(context).textTheme.headline4!.fontSize! * .8 +
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
    );
  }
}
