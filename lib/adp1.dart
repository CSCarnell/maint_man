import 'package:flutter/material.dart';

class ADP1 extends StatefulWidget {
  ADP1({Key? key}) : super(key: key);

  @override
  State<ADP1> createState() => _ADP1State();
}

class _ADP1State extends State<ADP1> {
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
    'What ADP/ADRP covers The Army?',
    'In which domains does the U.S. forces operate?',
    'What are four essential characteristics of our profession? (MESH)',
    'What are the 11 primary missions of the US armed forces?',
    'What is the most important determinant of combat power?',
    'What is the US Armys greatest strategic asset? Provides depth, versatility, and unmatched experience to the joint force.',
    'Title 10 USC establishes the basic structure of the Army, what forces make up the Army?',
    'What is the function of the Operating Force?',
    'What is the function of the Generating Force?',
    'What five sets of characteristics will enhance the Army\'s operational adaptability? '
  ];

  var questionAnswer = [
    'ADP 1/ADRP 1',
    'Air, Land, maritime, space, and cyberspace domains',
    'Military expertise, esprit de corps, stewardship, honorable service',
    'counter terrorism, deter and defeat aggression, project power, counter weapons of mass destruction, operate effectively in cyberspace, operate effectively in space, maintain nuclear deterrent, defend the homeland, provide a stabilizing presence, counterinsurgency, and humanitarian',
    'Leadership',
    'The all volunteer force',
    'One regular Army and two reserve components. (active Army, Army reserves, and National Guard.',
    'Operating forces consist of units organized, trained, and equipped to deploy and fight',
    'The generating force mans, trains, equips, deploys, and ensures the readiness of all Army forces',
    'Depth and Versatility, Adaptive and Innovative, Flexibility and Agility, Integrated and Synchronized, Lethal and Discriminate',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ADP 1/ADRP 1'),
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
