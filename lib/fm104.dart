import 'package:flutter/material.dart';

class FM104 extends StatefulWidget {
  FM104({Key? key}) : super(key: key);

  @override
  State<FM104> createState() => _FM104State();
}

class _FM104State extends State<FM104> {
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
    'What FM covers Legal Support to the Operational Army?',
    'Judge advocates look to certain fundamental concepts of Army doctrine to help them identify and address operational legal issues.  What are the fundamental concepts?  ',
    'What is the purpose of military justice, as a part of military law?',
    'Who is responsible for the overall supervision and administration of military justice within the Army?',
    'Who oversee the administration of military justice in their units and communicate directly with their staff judge advocates (SJAs) about military justice matters?',
    'What three organizational components of military justice exist within the Judge Advocate General’s Corps (JAGC)?',
    'Normally, courts-martial are processed at what level?',
    'Who has special and summary court-martial convening authority and may require support to conduct courts-martial?',
    'At a minimum, what should legal assistance review during regular Soldier readiness processing to ensure Soldiers have their legal affairs in order and are ready to deploy?'
  ];

  var questionAnswer = [
    'FM 1-04',
    'Decisive action and unified land operations.	The warfighting functions. The operations process.	Lines of effort and lines of operations. Working groups.',
    'To promote justice, to assist in maintaining good order and discipline in the armed forces, to promote efficiency and effectiveness in the military establishment, and thereby to strengthen the national security of the U.S. ',
    'The Judge Advocate General (TJAG).',
    'Commanders.',
    'Staff judge advocate (SJA). Chief, United States Army Trial Defense Service (USATDS). Chief, U.S. Army Trial Judiciary.',
    'Theater army, corps, division, theater sustainment command (TSC), or other headquarters commanded by a general court-martial convening authority (GCMCA). ',
    'Army brigade and battalion commanders, as well as joint task force commanders.',
    'Servicemembers’ Group Life Insurance beneficiary designations. Requirements for wills or powers of attorney.	Servicemembers Civil Relief Act issues.	Any pending civilian or military charges.	Family care plan concerns.'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FM 1-04'),
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
