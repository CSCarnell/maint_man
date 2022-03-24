import 'package:flutter/material.dart';

class ADP622 extends StatefulWidget {
  ADP622({Key? key}) : super(key: key);

  @override
  State<ADP622> createState() => _ADP622State();
}

class _ADP622State extends State<ADP622> {
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

  void answerShow() {
    setState(() {
      showAnswer = true;
    });
  }

  var questionText = [
    'What ADP/ADRP covers Army Leadership?',
    'What is leadership?',
    'What is an Army Leader?',
    'How can leaders mitigate resistance?',
    'What is command?',
    'What is mission command?',
    'What conveys the expectations that the Army wants leaders to meet?',
    'What are the leader attributes?',
    'What are the three categories of competencies?',
    'The category of leads encompasses five competencies. What are they?',
    'What is the purpose of ADP 6-22, Army Leadership?'
  ];

  var questionAnswer = [
    'ADP/ADRP 6-22',
    'Leadership is the process of influencing people by providing purpose, direction, and motivation to accomplish the mission and improve the organization.',
    'An Army leader is anyone who by virtue of assumed role or assigned responsibility inspires and influences people to accomplish organizational goals.',
    'Leaders can mitigate resistance by anticipating what others value, their reactions to influence, their shared understanding of common goals, and their commitment to the general organization or the purpose of the mission and their trust in the organization and the leader.',
    'Command is the authority that a commander in the armed forces lawfully exercises over subordinates by virtue of rank or assignment. ',
    'Mission command is the exercise of authority and direction by the commander using mission orders to enable disciplined initiative within the commander’s intent to empower agile and adaptive leaders in the conduct of unified land operations.',
    'The Leadership Requirements Model',
    'Character, presence and intellect',
    'The Army leader serves to lead others. The Army leader serves to develop the environment, themselves, others and the profession as a whole.	The Army leader serves to achieve organizational goals.',
    'Leads others. Extends influence beyond the chain of command. Builds trust.	Leads by example.	Communicates.',
    'ADP 6-22 establishes the fundamental principles by which Army leaders accomplish their missions and care for their people.'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ADP 6-22/ADRP 6-22'),
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
