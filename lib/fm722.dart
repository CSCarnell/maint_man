import 'package:flutter/material.dart';

class FM722 extends StatefulWidget {
  FM722({Key? key}) : super(key: key);

  @override
  State<FM722> createState() => _FM722State();
}

class _FM722State extends State<FM722> {
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
        showAnswer = false;
      }
    });
  }

  void questionSwipeBack() {
    setState(() {
      if (questionNumber == 0) {
        questionNumber = questionText.length - 1;
      } else
        questionNumber -= 1;
      showAnswer = false;
    });
  }

  void answerShow() {
    setState(() {
      showAnswer = true;
    });
  }

  var questionText = [
    'What FM covers Army Physical Readiness Training?',
    'Why is physical readiness training a mandatory training requirement?',
    'Who serves as the primary trainers for enlisted Soldiers, crews, and small teams?',
    'To accomplish the PRT mission, what must NCOs do?',
    'What are the 8 tenets of train as you will fight, as they relate to PRT?',
    'What are the tenets of standards-based training?',
    'What are the PRT System’s phases?',
    'What are the principles that the conduct of Army PRT follows?'
  ];
  var questionAnswer = [
    'FM 7-22',
    'Considered by senior leaders to be essential to individual, unit, and force readiness. Required by law for all individuals and units.',
    'Noncommissioned officers.',
    'Identify specific tasks that PRT enhances in support of the unit’s C- or D-METL.	Prepare, rehearse, and execute PRT.	Evaluate PRT and conduct AARs to provide feedback to the commander.',
    'must support full spectrum operations, must support proficiency in combat arms, focus on training and fundamentals first, performance oriented under realistic conditions, incorporate challenging situations, incorporate safety and risk management, replicate the operational environment, and must be conducted during deployments',
    'Leaders know and enforce standards. Leaders define success in the absence of standards. Leaders train to standard, not time.',
    'The initial conditioning phase (prepares future Soldiers to learn and adapt to Army PRT). The toughening phase (develop foundational fitness and fundamental movement skills that prepare Soldiers to transition to the sustaining phase).	The sustaining phase (develop a higher level of physical readiness required by duty position and C- or D METL). Reconditioning phase (restores Soldiers’ physical fitness levels that enable them to safely re-enter the toughening or sustaining phase and progress to their previous level of conditioning).',
    'Precision. Progression. Integration.'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FM 7-22'),
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
            children: <Widget>[
              //  height: (MediaQuery.of(context).size.height),
              // width: (MediaQuery.of(context).size.width),

              Expanded(
                flex: 50,
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
                Expanded(
                  flex: 40,
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
                Expanded(
                  flex: 40,
                  child: Container(
                    margin: const EdgeInsets.all(5.0),
                    transformAlignment: Alignment.bottomCenter,
                    padding: const EdgeInsets.all(5.0),
                    color: Colors.orangeAccent,
                    alignment: Alignment.center,
                    child: Text(
                      questionAnswer[questionNumber],
                      style: TextStyle(fontSize: 15),
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
