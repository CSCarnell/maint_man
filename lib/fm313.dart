import 'package:flutter/material.dart';

class FM313 extends StatefulWidget {
  FM313({Key? key}) : super(key: key);

  @override
  State<FM313> createState() => _FM313State();
}

class _FM313State extends State<FM313> {
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

  void questionSwipeForward() {
    setState(() {
      if (questionNumber >= questionText.length - 1) {
        questionNumber = 0;
      } else {
        questionNumber += 1;
      }
    });
  }

  void questionSwipeBack() {
    setState(() {
      if (questionNumber == 0) {
        questionNumber = questionText.length - 1;
      } else
        questionNumber -= 1;
    });
  }

  void answerShow() {
    setState(() {
      showAnswer = true;
    });
  }

  var questionText = [
    'What FM covers Inform and Influence Activities?',
    'Define inform and influence activities (IIA)?',
    'What are Information-related capabilities?',
    'Designated information-related capabilities that support inform and influence activities (IIA) and its lines of effort typically include, but are not limited to what type of support?',
    'What two lines of effort contribute to inform and influence activities (IIA)?',
    'What is the result of employing information-related capabilities in a way that causes effects in the information environment that impede the conduct of friendly operations or adversely affect friendly forces? ',
    'What powerfully influences the credibility of inform and influence activities (IIA)?',
    'What is the information environment?',
    'What are the three dimensions of the information environment?'
        'At what level is information recognized as an instrument of national power, equal to diplomatic, military, and economic efforts?'
  ];
  var questionAnswer = [
    'FM 3-13',
    'Inform and influence activities (IIA) is the integration of designated information-related capabilities in order to synchronize themes, messages, and actions with operations to inform U.S. and global audiences, influence foreign audiences, and affect adversary and enemy decisionmaking.',
    'Information-related capabilities are capabilities, techniques, or activities employing information to affect any of the three dimensions within the information environment to generate an end(s).',
    'Public affairs operations. Military information support operations (MISO). Combat Camera. Soldier and leader engagement. Civil affairs operations. Civil and cultural considerations. Operations security (OPSEC). Military deception.',
    'The inform line of effort. The influence line of effort.',
    'Information fratricide.',
    'Soldiers’ actions.',
    'The information environment is the aggregate of individuals, organizations, and systems that collect, process, disseminate, or act on information.',
    'Physical dimension. Informational dimension. Cognitive dimension.',
    'At the national strategic level.'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FM 3-13'),
        centerTitle: true,
        foregroundColor: Colors.black,
        backgroundColor: Colors.amber,
      ),
      body: SizedBox.expand(
        child: GestureDetector(
          onHorizontalDragEnd: (DragEndDetails details) {
            if (details.primaryVelocity! > 0) {
              questionSwipeBack();
            } else if (details.primaryVelocity! < 0) {
              questionSwipeForward();
            }
          },
          child: Column(
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
                            Theme.of(context).textTheme.headline4!.fontSize! *
                                    .8 +
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
        ),
      ),
    );
  }
}
