import 'package:flutter/material.dart';

class FM105 extends StatefulWidget {
  FM105({Key? key}) : super(key: key);

  @override
  State<FM105> createState() => _FM105State();
}

class _FM105State extends State<FM105> {
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
    'What FM covers Religious Support?',
    'What is the mission of the Army Chaplain Corps?',
    'What are the three core competencies of religious support?',
    'What is the Commanders responsibility in providing religious support to the Army?',
    'When does the Army accommodates religious practices?',
    'At every echelon of the force, the chaplaincy is the Army’s primary agency for ensuring the right to free exercise of religion for Soldiers on behalf of the commander. Based upon the requirements of the operational mission, what is included as a Soldier right?',
    'Chaplains and chaplain assistants plan, prepare, execute and assess religious support in support of unified land operations. In its planning process, a chaplain section or UMT plans for three categories of religious support for the Army.  What are the three categories of religious support?',
    'Why must chaplains and chaplain assistants be both adaptable and flexible?'
  ];
  var questionAnswer = [
    'FM 1-05',
    'To provide religious support to the Army across unified land operations by assisting the commander in providing for the free exercise of religion and providing religious, moral, and ethical leadership.',
    'Nurture the living. Care for the wounded. Honor the dead. ',
    'Commanders provide for the free exercise of religion for Soldiers, families, and authorized civilians and enable religious support functions as prescribed in Army regulations.',
    'When such accommodations do not impede military readiness or hinder unit cohesion, standards, health, safety or discipline. Accommodating religious practices is weighed against military necessity and not guaranteed at all times.',
    'Worshipping according to one’s faith. Seeking religious counsel and care. Keeping holy days and observances.	Participating in rites, sacraments, and ordinances.	Practicing dietary laws.',
    'Unit support. Area support. Denominational or distinctive faith group support.',
    'These attributes remain a requirement since operational environments continue to be complex and uncertain, executed over extended distances in difficult terrain, and marked by rapid change and a wide variety of threats.'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FM 1-05'),
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
