import 'package:flutter/material.dart';

class FM3229 extends StatefulWidget {
  FM3229({Key? key}) : super(key: key);

  @override
  State<FM3229> createState() => _FM3229State();
}

class _FM3229State extends State<FM3229> {
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
    'What is the FM concerning the M4 Rifle?',
    'What are the four fundamentals of marksmanship?',
    'Is SPORTS an Immediate or Remedial Action?',
    'How many times should immediate action be applied to a weapon?',
    'What are the 8 steps in the functioning of the M4rifle? ',
    'What are the steps required in order to mechanically zero the M4?',
    'What are the steps required in order to battle sight zero the M4?',
    'How do you clear a stoppage?',
    'What does CLP stand for?',
    'What are the 7 types of ammunition that can be used with the M4 Rifle?',
    'Describe the ranges for the M4 Rifle?',
    'Describe the max effective rates of fire for the M4 Rifle.',
    'Name the five phases in Basic Rifle Marksmanship.',
  ];
  var questionAnswer = [
    'FM 3-22.9',
    'Steady Position, Proper Aim (Sight Picture), Breathing, Trigger Squeeze',
    'Immediate Action',
    'Once. (If Rifle still fails to fire, apply remedial action)',
    'Feeding, Chambering,	Locking, Firing, Unlocking,	Extracting,	Ejecting,	Cocking',
    'Adjust the front sight post,	Adjust the elevation knob,	Position the apertures',
    'Adjust the elevation knob,	Position the apertures',
    'Apply immediate or remedial action',
    'Cleaner, Lubricant, Preservative',
    'Ball, Trace, Dummy, Blank, Ball(green tip), Tracer(red tip), short range training (plastic with blue tip)',
    'Maximum Range - 3,600 meters, Max Effective Range for a Point Target - 500 meters, Max Effective Range for an Area Target - 600 meters',
    'Semiautomatic - 45 rounds per minute, Burst - 90 rounds per minute, Sustained - 12-15 rounds per minute',
    'Preliminary Rifle Instruction, Downrange Feedback, Field Fire, Advanced Rifle Marksmanship, Advanced Optics, Laser and Iron Sights'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FM 3-22.9/21-1-SMCT'),
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
