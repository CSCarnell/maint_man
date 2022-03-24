import 'package:flutter/material.dart';

class ADP337 extends StatefulWidget {
  ADP337({Key? key}) : super(key: key);

  @override
  State<ADP337> createState() => _ADP337State();
}

class _ADP337State extends State<ADP337> {
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
    'What ADP/ADRP covers Protection?',
    'What is Protection?',
    'What are the Protection principles?',
    'What is the protection warfighting function?',
    'What is the first step toward effective protection?',
    'During the preparation phase, what is the focus of protection?',
    'What is the staff looking for as they monitor the conduct of operations during execution?',
    'Assessing protection is an essential, continuous activity that occurs throughout the operations process. What is Assessment?'
  ];

  var questionAnswer = [
    'ADP/ADRP 3-37',
    'Protection is the preservation of the effectiveness and survivability of mission-related military and nonmilitary personnel, equipment, facilities, information, and infrastructure deployed or located within or outside the boundaries of a given operational area.',
    'Comprehensive-Protection is an all-inclusive utilization of complementary and reinforcing protection tasks. Integrated-Protection is integrated with other activities, systems, efforts, and capabilities. Layered. Protection-capabilities are arranged using a layered approach to provide strength and depth. Redundant. Protection-efforts are often redundant anywhere that a vulnerability or a critical point of failure is identified. Enduring-Protection capabilities are ongoing activities for maintaining the objectives of preserving combat power.',
    'The  protection warfighting function is the related tasks and systems that preserve the force so that commanders can apply maximum combat power to accomplish the mission',
    'Planning',
    'Deterring and preventing the enemy or adversary from actions that would affect combat power and the freedom of action.',
    'Variances from the scheme of maneuver and protection.',
    'Assessment is the determination of the progress toward accomplishing a task, creating a condition, or achieving an objective.'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ADP 3-37/ADRP 3-37'),
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
