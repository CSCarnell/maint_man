import 'package:flutter/material.dart';

class ADP5 extends StatefulWidget {
  ADP5({Key? key}) : super(key: key);

  @override
  State<ADP5> createState() => _ADP5State();
}

class _ADP5State extends State<ADP5> {
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
    'What ADP/ADRP covers The Operations Process?',
    'What is the Army’s framework for exercising mission command?',
    'What are the major mission command activities performed during operations?',
    'How do commanders drive the operations process?',
    'What is a composite of the conditions, circumstances, and influences that affect the employment of capabilities and bear on the decisions of the commander?',
    'What is MDMP?',
    'What are the MDMP steps?',
    'What are troop-leading procedures?',
    'What are the troop leading procedure step'
  ];

  var questionAnswer = [
    'ADP/ADRP 5-0.',
    'The operations process',
    'Planning, Preparing, Executing, Continuously assessing the operation',
    'Through understanding, visualizing, describing, directing, leading, and assessing operations. ',
    'An operational environment.',
    'The military decision-making process is an iterative planning methodology to understand the situation and mission, develop a course of action, and produce an operation plan or order.',
    'Step 1 – Receipt of mission. Step 2 – Mission analysis. Step 3 – Course of action development.	Step 4 – Course of action analysis.	Step 5 – Course of action comparison.	Step 6 – Course of action approval.	Step 7 – Orders production, dissemination, and transition.',
    'Troop-leading procedures are a dynamic process used by small-unit leaders to analyze a mission, develop a plan, and prepare for an operation. TLP are used by commanders and leaders without a staff.',
    'Step 1 – Receive the mission. Step 2 – Issue a warning order.	Step 3 – Make a tentative plan.	Step 4 – Initiate movement.	Step 5 – Conduct reconnaissance. 	Step 6 – Complete the plan.	Step 7 – Issue the order. 	Step 8 – Supervise and refine the plan.'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ADP 5-0/ADRP 5-0'),
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
