import 'package:flutter/material.dart';

class ADP328 extends StatefulWidget {
  ADP328({Key? key}) : super(key: key);

  @override
  State<ADP328> createState() => _ADP328State();
}

class _ADP328State extends State<ADP328> {
  var questionNumber = 0;
  bool showAnswer = false;

  static var headquarters;

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
    'What ADP/ADRP covers Defense Support of Civil Authorities?',
    'What are the 15 emergency support functions (ESF)? ',
    'Which warfighting function will the majority of DSCA missions stress?',
    'While there are many potential missions for Soldiers as part of DSCA, what are the overarching purposes of all DSCA missions?',
    'How many state and territorial National Guard elements are there?',
    'What is the Army National Guard’s dual role?',
    'In DSCA, military forces support a primary (or lead) civilian agency. What do commanders need to realize achieving the military end state means?',
    'What is one of the biggest mistakes that tactical commanders can make in DSCA?',
  ];

  var questionAnswer = [
    'ADP/ADRP 3-09',
    'The National Preparedness Goal, The National Incident Management System (known as the NIMS), The National Response Framework (formerly known as the National Response Plan)',
    'Transportation, Communications, public works and engineering, firefighting, emergency management, mass care emergency assistance housing and human services, logistics management and resource support, public health and medical services, search and resuce, oil and hazardous materials response, agriculture and natural resources, energy, public safety and security, long term community recovery, external affairs',
    'The sustainment warfighting function.',
    'save lives, alleviate suffering, protect property',
    '54. All fifty states, the District of Columbia, territories of Guam and the Virgin Islands, and the Commonwealth of Puerto Rico have National Guard forces making 54 state and territorial NG elements.',
    'The Army National Guard’s dual role is as a state military force under the governor and as a reserve component of the Army that the President may mobilize for federal service.',
    'That state, territorial, local, and tribal authorities become able to provide effective support to their citizens without the further assistance from military forces.',
    'Military forces operating freely within civilian jurisdictions risk upsetting the constitutional balance between civil authority, the military, and the private sector.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ADP 3-28/ADRP 3-28'),
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
