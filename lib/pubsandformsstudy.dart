import 'package:flutter/material.dart';

class PubsandFormsStudy extends StatefulWidget {
  PubsandFormsStudy({Key? key}) : super(key: key);

  @override
  State<PubsandFormsStudy> createState() => _PubsandFormsStudyState();
}

class _PubsandFormsStudyState extends State<PubsandFormsStudy> {
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
    'What Army regulation covers ASAP?',
    'What Army regulation covers ACS?',
    'What Army regulation covers ACES?',
    'What Army regulation covers Army Learning Centers?',
    'What Army regulation covers AER?',
    'What Army regulation covers the EO program?',
    'What Army regulation covers the Army Family Action Plan?',
    'What Army regulation covers the Red Cross?',
    'What Army regulation covers the Army Retention Program?',
    'What Army regulation covers Accident Investigations and Reporting?',
    'What Army regulation covers Safety?',
    'What Army regulation covers the Total Army Sponsorship Program?',
    'What Army regulation covers Morale, Welfare, and Recreation activities and nonappropriated fund instrumentalities?',
    'What Army regulation covers the BOSS program?',
    'What Army regulation covers CHAMPUS?',
    'What Army regulation covers NCODP?',
    'What Army regulation covers the Body Composition?',
    'What DA Form is used to record body fat content for males?',
    'What DA Form is used to record body fat content for females?',
    'What form is used for counseling?',
    'What form is used to request leave?',
    'What form is used to recommend awards?',
    'What form is used to record ACFT data?',
    'What form is used to flag a Soldier?',
    'What form is used for PMCS?',
    'What form is used for a Sergeant\'s NCOER',
    'What Army regulation covers the Evaluation Reporting System?',
    'What form is used for SSG thru MSG/1SG NCOER?',
    'What form is used for SGM/CSM NCOER?',
    'What form is used for NCO Evaluation report support form?',
    'What form is used for hand receipts?',
    'What form is used for personnel actions?',
    'What FM covers Holistic Health and Fitness?',
    'What FM covers Intelligence?',
    'What FM covers Operations?',
    'What FM covers Special Operations?',
    'What FM covers Survival?',
    'What FM covers leader development?',
    'What FM covers train to win in a complex world?',
    'What FM covers the Law of Land Warfare?',
    'What ADP covers the Army?',
    'What ADP covers Intelligence?',
    'What ADP covers Operations?',
    'What ADP covers Special Operations?',
    'What ADP covers Protection?',
    'What ADP covers Sustainment?',
    'What ADP covers the Operations Process?',
    'What ADP covers Mission Command?',
    'What ADP covers Army Leadership?',
    'What ADP covers Training?',
    'What TC covers Chemical Training?',
    'What TC covers Joint Services Lightweight Integrated Suit Technology(JSLIST)?',
    'What TC covers Drill and Ceremonies?',
    'What TC covers Visual Signals?',
    'What TC covers the Warrior Ethos and Soldier Combat Skills?',
    'What TC covers Guard Duty?',
    'What TC covers Rifle and Carbine?',
    'What TC covers Grenade Machine Gun MK19?',
    'What TC covers the M18A1 Claymore?',
    'What TC covers the M2 Heavy Machine Gun?',
    'What TC covers the medium machine gun M240?',
    'What TC covers the light machine gun M249?',
    'What TC covers Grenades and Pyrotechnic Signals?',
    'What TC covers the Pistol?',
    'What TC covers Map Reading and Land Navigation?',
    'What TC covers Combatives?',
    'What TC covers First Aid?',
    'What TC covers Field Hygiene and Sanitation?',
    'What TC covers the Soldiers Guide?',
    'What TC covers the NCO Guide?',
    'What AR covers procedures for administrative investigations and boards of officers?',
    'What AR covers Preparing and Managing Correspondence?',
    'What AR covers Military Justice?',
    'What AR covers the Army Physical Security Program?',
    'What AR covers Physical Security?',
    'What AR covers Duty Rosters?',
    'What AR covers Army Training and Leader Development?',
    'What AR covers Management of Army Individual Training Requirements and Resources?',
    'What AR covers Suspension of Favorable Personnel Actions?',
    'What AR covers the Total Army Sponsorship Program?',
    'What AR covers Leaves and Passes?',
    'What AR covers Enlisted Promotions and Reductions?',
    'What AR covers Military Awards?',
    'What AR covers Army Command Policy?',
    'What AR covers Salutes, Honors, and Visits of Courtesy?',
    'What AR covers Wear and Appearance of Army Uniforms and Insignia?',
  ];

  var questionAnswer = [
    'AR 600-85',
    'AR 608-1',
    'AR 621-5',
    'AR 621-6',
    'AR 930-4',
    'AR 600-20 Ch. 6',
    'AR 608-47',
    'AR 930-5',
    'AR 601-280',
    'AR 385-40',
    'AR 385-10',
    'AR 600-8-8',
    'AR 215-1',
    'AR 215-1',
    'AR 40-121',
    'AR 350-1',
    'AR 600-9',
    'DA Form 5500',
    'DA Form 5501',
    'DA Form 4856',
    'DA Form 31',
    'DA Form 638',
    'DA Form 705',
    'DA Form 268',
    'DA Form 2404',
    'DA Form 2166-9-1',
    'AR 623-3',
    'DA Form 2166-9-2',
    'DA Form 2166-9-3',
    'DA Form 2166-9-1A',
    'DA Form 2062',
    'DA Form 4187',
    'FM 7-22',
    'FM 2-0',
    'FM 3-0',
    'FM 3-05',
    'FM 3-05.70',
    'FM 6-22',
    'FM 7-0',
    'FM 27-10',
    'ADP 1',
    'ADP 2-0',
    'ADP 3-0',
    'ADP 3-05',
    'ADP 3-37',
    'ADP 4-0',
    'ADP 5-0',
    'ADP 6-0',
    'ADP 6-22',
    'ADP 7-0',
    'TC 3-8',
    'TC 3-11-55',
    'TC 3-21.5',
    'TC 3-21.60',
    'TC 3-21.75',
    'TC 3-22.6',
    'TC 3-22.9',
    'TC 3-22.19',
    'TC 3-22.23',
    'TC 3-22.50',
    'TC 3-22.240',
    'TC 3-22.249',
    'TC 3-23.30',
    'TC 3-23.35',
    'TC 3-25.26',
    'TC 3-25.150',
    'TC 4-02.1',
    'TC 4-02.3',
    'TC 7-21.13',
    'TC 7-22.7',
    'AR 15-6',
    'AR 25-50',
    'AR 27-10',
    'AR 190-13',
    'AR 190-16',
    'AR 220-45',
    'AR 350-1',
    'AR 350-10',
    'AR 600-8-2',
    'AR 600-8-8',
    'AR 600-8-10',
    'AR 600-8-19',
    'AR 600-8-22',
    'AR 600-20',
    'AR 600-25',
    'AR 670-1'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DA Pubs and Forms'),
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
