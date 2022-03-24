import 'package:flutter/material.dart';

class ADP309 extends StatefulWidget {
  ADP309({Key? key}) : super(key: key);

  @override
  State<ADP309> createState() => _ADP309State();
}

class _ADP309State extends State<ADP309> {
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
    'What ADP/ADRP covers Fires?',
    'What are the core competencies of Fires?',
    'What are the critical capabilities of Fires?',
    'What are the principles of Fires?',
    'What are the characteristics of Fires?',
    'What are the defensive measures designed to destroy attacking enemy aircraft or missiles in the atmosphere, or to nullify or reduce effectiveness of such attack either through surveillance actions or active engagements of aerial threat?',
    'What is Fire support?',
    'What is the objective of fires planning?',
    'How is fire support planning accomplished?',
    'What is a Target?',
    'What does targeting provide?'
  ];

  var questionAnswer = [
    'ADP/ADRP 3-09',
    'Air Defense Artillery,	Field Artillery',
    'Target Acquisition, Target Discrimination, Target Engagement',
    'Precision, Scalable,	Synchronized,	Responsive, Networked',
    'All Weather, Precision/Near Precision Fires, Mass Area Fires,	Air and Space Integration, Inherently Joint.',
    'Air defense artillery',
    'Fire support is fires that directly support land, maritime, amphibious, and special operations forces to engage enemy forces, combat formations, and facilities in pursuit of tactical and operational objectives.',
    'To optimize combat power.',
    'Fire support planning is accomplished using targeting and the running estimate.',
    'A Target is an entity or object considered for possible engagement or other action',
    'Targeting provides an effective method for matching the friendly force capabilities against enemy targets.'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ADP 3-09/ADRP 3-09'),
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
