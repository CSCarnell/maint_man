import 'package:flutter/material.dart';

class ADP102 extends StatefulWidget {
  ADP102({Key? key}) : super(key: key);

  @override
  State<ADP102> createState() => _ADP102State();
}

class _ADP102State extends State<ADP102> {
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
    'What ADP/ADRP covers Operational Terms and Military Symbols?',
    'Who is the principal audience for ADP 1-02, Operational Terms and Military Symbols?',
    'What is the purpose of a common set of doctrinal terms and military symbols?',
    'What are the three areas of focus of the professional language of land warfare?',
    'Military symbols fall into two categories: framed and unframed. What is the difference?',
    'Who establishes Army policy for developing doctrinal terms?',
    'That common operational picture is displayed on a map or another geographical form representing the area of operations and which has been overlaid with military symbols. What does it include?',
    'How are acronyms usually formed?',
    'What is a single display of relevant information within a commander’s area of interest tailored to the user’s requirements and based on common data and information shared by more than one command?',
    'What is communication in reference to Operational Terms and Military Symbols?',
    'Who can propose the creation, modification, or elimination of any doctrinal term?',
    'What is the purpose of acronyms and abbreviations is the profession of arms?'
  ];

  var questionAnswer = [
    'ADP/ADRP 1-02.',
    'All members of the profession of arms.',
    'Terms and symbols can communicate a great deal of information with a simple word, phrase, or image and eliminate the need for a lengthy explanation of a complex idea.',
    'Principle of Simplicity.	Importance of clear communication.	Importance of teaching the language.',
    'Framed military symbols include unit, equipment, installation, and activity symbols. Unframed military symbols include control measure and tactical task mission symbols.',
    'United States Army Training and Doctrine Command (TRADOC)',
    'Friendly and enemy units or ships.  Boundaries. Control measures. Other elements that the commander deems necessary.',
    'Acronyms are usually formed from the initial letters of a name or parts of a series of  words.',
    'A common operational picture.',
    'Communication is an exchange of meaning that is only complete when the intended meaning is understood precisely by the intended audience.',
    'Any Soldier may contact a proponent for a given subject area.  The proponent will consider the Soldier’s proposal.',
    'To allow the use of shorter versions of doctrinal and military terms for ease of discussion in speaking and writing.'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ADP 1-02/ADRP 1-02'),
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
        ));
  }
}
