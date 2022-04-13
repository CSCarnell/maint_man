import 'package:flutter/material.dart';

class ADP20 extends StatefulWidget {
  ADP20({Key? key}) : super(key: key);

  @override
  State<ADP20> createState() => _ADP20State();
}

class _ADP20State extends State<ADP20> {
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
    'What ADP/ADRP covers Intelligence?',
    'Why does the Army synchronizes its intelligence efforts with unified action partners?',
    'How do multinational and interagency partners reinforce and complement Army intelligence capabilities?',
    'What is ISR?',
    'What is the purpose of ISR?',
    'What is the intelligence warfighting function?',
    'What are the information collection tasks? (PTE)',
    'What is the intelligence enterprise?',
    'What are the intelligence core competencies? (SOA)',
    'What is Intelligence synchronization?',
    'What are the 4 primary means for information collection?',
    'What is the purpose of intelligence analysis? (METT-TC)'
  ];

  var questionAnswer = [
    'ADP/ADRP 2-0',
    'To achieve unity of effort and to meet the commander’s intent',
    'By providing cultural awareness, as well as unique perspectives and capabilities.',
    'Intelligence, surveillance, and reconnaissance.',
    'To synchronize and integrate the planning and operation of sensors, assets, and processing, exploitation, and dissemination systems in direct support of current and future operations.',
    'The intelligence warfighting function is the related tasks and systems that facilitate understanding the enemy, terrain, and civil considerations.',
    'Plan requirements and assess collection, Task and direct collection, Execute collection',
    'The intelligence enterprise is the sum total of the intelligence efforts of the entire U.S. intelligence community.',
    'The core competencies are intelligence synchronization, intelligence operations, and intelligence analysis',
    'Intelligence synchronization is the “art” of integrating information collection and intelligence analysis with operations to effectively and efficiently support decision-making.',
    'Intelligence operations, Reconnaissance, Surveillance, Security operations',
    'To describe the current—and attempt to proactively assess—threats, terrain and weather, and civil considerations.'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ADP 2-0/ADRP 2-0'),
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
