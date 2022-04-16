import 'package:flutter/material.dart';

class ADP7 extends StatefulWidget {
  ADP7({Key? key}) : super(key: key);

  @override
  State<ADP7> createState() => _ADP7State();
}

class _ADP7State extends State<ADP7> {
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
    'What ADP/ADRP covers Training Units and Developing Leaders?',
    'Who is responsible for training units and developing leaders?',
    'Where does training begin?',
    'Where do Soldiers build on the fundamental skills, knowledge, and behaviors, which were developed in institutional training?',
    'What is the Army’s institutional training and education system, which primarily includes training base centers and schools that provide initial training and subsequent professional military education for Soldiers, military leaders, and Army civilians?',
    'What are the training active organizations undertake while at home station, at maneuver combat training centers, during joint exercises, at mobilization centers, and while operationally deployed?',
    'What is planned, goal-oriented learning that reinforces and expands the depth and breadth of an individual’s knowledge base, self-awareness, and situational awareness; complements institutional and operational learning; enhances professional competence; and meets personal objectives?',
    'What process do commanders apply to unit training and leader development?',
    'What are the Army principles of unit training?',
    'What does METL stand for and what is it?'
  ];

  var questionAnswer = [
    'ADP/ADRP 7-0',
    'Commanders',
    'Training begins in the generating force',
    'Operational assignments',
    'The institutional training domain',
    'The operational training domain',
    'The self-development training domain',
    'The operations process—plan, prepare, execute, and assess',
    'Commanders and other leaders are responsible for training. Noncommissioned officers train individuals, crews, and small teams.	Train to standard.	Train as you will fight.	Train while operating.	Train fundamentals first.	Train to develop adaptability.	Understand the operational environment.	Train to sustain. Train to maintain. Conduct multi-echelon and concurrent training.',
    'The unit’s mission-essential task list (METL) represents the doctrinal framework of fundamental tasks for which the unit was designed.'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ADP 7-0/ADRP 7-0'),
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
