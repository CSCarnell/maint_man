import 'package:flutter/material.dart';

class FirstAid extends StatefulWidget {
  FirstAid({Key? key}) : super(key: key);

  @override
  _FirstAidState createState() => _FirstAidState();
}

class _FirstAidState extends State<FirstAid> {
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
    'What publication covers first aid?',
    'What is casualty evacuation?',
    'What is enhanced first aid?',
    'What is first aid?',
    'What is medical evacuation?',
    'What does the acronym TC3 stand for?',
    'What are the three stages of TC3?',
    'Where can the pulse be readily felt?',
    'What is care under fire?',
    'When do you perform tactical field care?',
    'What are two methods of opening the airway?',
    'How do you check for breathing?',
  ];

  var questionAnswer = [
    'TC 4-02.1',
    'The movement of caualties aboard nonmedical vehicles',
    'aid administered by a combat lifesaver which requires additional level of training',
    'immediate lifesaving measures performed by nonmedical personnel',
    'The process of moving a wounded person while providing en route medical care',
    'Tactical Combat Casualty Care',
    'Care under fire, tactical field care, and tactical evacuation',
    'Carotid, femoral, radial, posterior tibial',
    'Return fire, determine if casualty is alive or dead, direct casualty to return fire, move to cover, and stop bleeding',
    'Once under cover and not under hostile fire',
    'Head Tilt Chin Lift and Jaw Trust methods',
    'place an ear over the casualty\'s mouth and nose, look for rise and fall of chest, listen for air escaping, feel for air flow',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Aid'),
        centerTitle: true,
        foregroundColor: Colors.black,
        backgroundColor: Colors.amber,
      ),
      body: Column(
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
                        Theme.of(context).textTheme.headline4!.fontSize! * .8 +
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
    );
  }
}
