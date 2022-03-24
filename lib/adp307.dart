import 'package:flutter/material.dart';

class ADP307 extends StatefulWidget {
  ADP307({Key? key}) : super(key: key);

  @override
  State<ADP307> createState() => _ADP307State();
}

class _ADP307State extends State<ADP307> {
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
    'What ADP/ADRP covers Stability?',
    'What is Stabilization?',
    'What is the focus of stability tasks?',
    'What are sources of instability?',
    'What are Stability tasks?',
    'What are the principles that lay the foundation for long-term stability?',
    'What is a line of effort?',
    'What is a decisive point?',
    'What is a stability mechanism?',
    'What is a defeat mechanism?'
  ];

  var questionAnswer = [
    'ADP/ADRP 3-07',
    'Stabilization is a process in which personnel identify and mitigate underlying sources of instability to establish the conditions for long-term stability.',
    'Identifying and targeting the root causes of instability, Building the capacity of local institutions',
    'Decreased support for the government based on what locals actually expect of their government, Increased support for anti-government elements, The undermining of the normal functioning of society where the emphasis must be on a return to the established norms. Anarchy',
    'Stability tasks are tasks conducted as part of operations outside the US in coordination with other instruments of national power to maintain or reestablish a safe and secure environment and provide essential governmental services, emergency infrastructure reconstruction, and humanitarian relief.',
    'Conflict transformation, Unity of effort, Legitimacy and host-nation ownership, Building partner capacity',
    'A line of effort is a line that links multiple tasks using the logic of purpose rather than geographical reference to focus efforts toward establishing operational and strategic conditions.',
    'A decisive point is a geographic place, specific key event, critical factor, or function that, when acted upon, allows commanders to gain a marked advantage over an adversary or contribute materially to achieving success.',
    'A stability mechanism is the primary method through which friendly forces affect civilians in order to attain conditions that support establishing a lasting, stable peace.',
    'A defeat mechanism is the method through which friendly forces accomplish their mission against enemy opposition.'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ADP 3-07/ADRP 3-07'),
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
