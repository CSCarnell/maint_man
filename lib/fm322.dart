import 'package:flutter/material.dart';

class FM322 extends StatefulWidget {
  FM322({Key? key}) : super(key: key);

  @override
  State<FM322> createState() => _FM322State();
}

class _FM322State extends State<FM322> {
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
    'What FM covers Army Support to Security Cooperation (SC)?',
    'What is all DoD interactions with foreign defense establishments to build defense relationships that promote specific US security interests, develop allied and friendly military capabilities for self-defense and multinational operations, and provide US forces with peacetime and contingency access to a host nation. ',
    'What is a group of programs authorized by the Foreign Assistance Act of 1961, as amended, and the Arms Export Control Act of 1976, as amended, or other related statutes by which the U.S. provides defense articles, military training, and other defense-related services by grant, loan, credit, or cash sales in furtherance of national policies and objectives?',
    'What is DoD activities that contribute to unified action by the U.S. Government to support the development of the capacity and capability of foreign security forces and their supporting institutions?',
    'Although the Department of State (DOS) leads and provides oversight for security cooperation efforts through its bureaus, offices, and overseas missions, security cooperation activities are conducted and coordinated throughout the geographic combatant command area of responsibility (AOR) by, with, or through the theater army to accomplish what specific tasks?',
    'What is the full range of measures taken by a nation to promote its growth and to protect itself from subversion, lawlessness, insurgency, terrorism, and other threats to its security?',
    'What is participation by civilian and military agencies of a government in any of the action programs taken by another government or other designated organization to free and protect its society from subversion, lawlessness, insurgency, terrorism, and other threats to its security?',
    'What is a comprehensive set of programs and activities undertaken to improve the way a host nation provides safety, security, and justice?',
    'What is the synchronization, coordination, and/or integration of the activities of governmental and nongovernmental entities with military operations to achieve unity of effort?'
  ];
  var questionAnswer = [
    'FM 3-22',
    'Security cooperation',
    'Security assistance',
    'Security force assistance',
    'Build defense relationships that promote specific U.S. security interests. Develop allied and friendly military capabilities for self-defense and multinational operations. Provide U.S. forces with peacetime and contingency access to a host nation. ',
    'Internal defense and development',
    'Foreign internal defense',
    'Security sector reform',
    'Unified action'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FM 3-22'),
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
