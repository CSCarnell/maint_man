import 'package:flutter/material.dart';

class BoardProcedures extends StatefulWidget {
  BoardProcedures({Key? key}) : super(key: key);

  @override
  State<BoardProcedures> createState() => _BoardProceduresState();
}

class _BoardProceduresState extends State<BoardProcedures> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Board Procedures'),
        centerTitle: true,
        foregroundColor: Colors.black,
        backgroundColor: Colors.amber,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: const EdgeInsets.all(1.0),
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Board Composition AR 600-8-19 para 3-12',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: const EdgeInsets.all(1.0),
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      'The promotion authority will appoint, in writing, a minimum of three voting members to serve on a promotion board. A promotion board will have a board recorder, without vote. The board president may be designated as a voting member in order to eliminate ties. The board president will be a CSM or SGM unless the board membership consists of an officer(s) or warrant officer(s), in which case the president is the senior member. At a minimum, when present, an officer(s) must hold the rank of captain or chief warrant officer three. Board members may consist of other U.S. Uniformed Services, it is required that their pay grade/rank be equivalent to the Army rank structure as prescribed in this paragraph.'),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: const EdgeInsets.all(1.0),
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      '(1) 1SG/MSGs (or lower ranks) are not authorized to preside as the board president. There are no exceptions to this requirement.'),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: const EdgeInsets.all(1.0),
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      '(2) All voting members will be senior in rank to the Soldiers recommended for promotion.'),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: const EdgeInsets.all(1.0),
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      '(3) Voting members will include a minority member, if reasonably available.'),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: const EdgeInsets.all(1.0),
                  padding: const EdgeInsets.all(8.0),
                  child: Text('(4) A majority of voting members will be NCOs.'),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: const EdgeInsets.all(1.0),
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      '(5) At least one voting member will be of the same gender as the Soldiers recommended for promotion. When this is not possible, the promotion authority will provide the reason in the appointment memorandum.'),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: const EdgeInsets.all(1.0),
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      '(6) A board may be split into two or more panels. Each panel must consist of an odd number of unbiased (at least three) voting members and a recorder without vote, to expedite the process if the number of recommended Soldiers so warrants. When the board consists of more than one panel, the board president will not be a voting member of either panel. For RA and USAR (AGR), a Soldier will appear before only one panel and boards will be convened and adjourned in the same geographical location. Boards for USAR (TPU) will be convened and adjourned in the same geographical locations whenever possible, however; the promotion authority may direct a board be convened and adjourned with board members at multiple locations.'),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: const EdgeInsets.all(1.0),
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      '(7) Once a board convenes, the same board members will be present during the entire board proceedings.'),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: const EdgeInsets.all(1.0),
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      '(8) The board recorder cannot be considered for promotion by the same board.'),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: const EdgeInsets.all(1.0),
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      '(9) When consolidated boards are established, at least one voting member representing the command having promotion authority will be appointed to the board as a voting member when possible (applies to USAR (TPU, ARE, and multicomponent units)).'),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: const EdgeInsets.all(1.0),
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Board Proceedings AR 600-8-19 para 3-12',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: const EdgeInsets.all(1.0),
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      'The president will call the board to order and brief it on the following rules:'),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: const EdgeInsets.all(1.0),
                  padding: const EdgeInsets.all(8.0),
                  child:
                      Text('(1) Each voting member has one vote (yes or no).'),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: const EdgeInsets.all(1.0),
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      '(2) Each voting member will inform the president of his or her vote.'),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: const EdgeInsets.all(1.0),
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      '(3) The majority ruling (yes or no) will dictate the board’s recommendation to the promotion authority.'),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: const EdgeInsets.all(1.0),
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      '(4) The board president will inform (in writing) the promotion authority of the board’s recommendations as soon as possible following the board. The board president will review the memorandum of board proceedings for accuracy, sign the report, and forward it to the promotion authority for decision'),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: const EdgeInsets.all(1.0),
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Things to remember',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: const EdgeInsets.all(1.0),
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      'When told to report knock three times firmly on the door, don\'t try to beat it down.'),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: const EdgeInsets.all(1.0),
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      'When told to enter, open the door, walk in, without turning your back on the board close the door behind you.'),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: const EdgeInsets.all(1.0),
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      'Walk directly to the president of the board stopping two paces from the table at the position of attention. Salute and say in a loud clear voice, "Specialist Warhero reporting to the president of the board", wait for the president to drop their salute before dropping yours.'),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: const EdgeInsets.all(1.0),
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      'At this point you will normally be given facing movements, the purpose is to allow the board to see your uniform and bearing. When told to take a seat don\'t make an MOS out of it, find the seat and sit down, sit up straight, heels together, fingers and thumbs extended and joined resting on your legs.'),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: const EdgeInsets.all(1.0),
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      'Always look at whoever is speaking to you, make eye contact, do not fidgit or lose your bearing. Always address the board members by rank.'),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: const EdgeInsets.all(1.0),
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      'Either start with the rank "First Sergeant the TC that covers First Aid is..." or end with it "The TC that covers First Aid is 4-02.1 First Sergeant" either method is acceptable.'),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: const EdgeInsets.all(1.0),
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      'The board president will usually ask some questions, mostly this is to help you relax before being bombarded with questions. You may be asked to tell the board about yourself at this point just run through a quick bio, make eye contact with each board member and end with short term and long term goals. The president will usually ask about current events, ask you to recite the Soldier Creed, NCO Creed, Army Song, Unit History, and Unit Song, be prepared for any and all. I\'ve seen many troops thrown out of the board because they could\'t sing the Army Song'),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: const EdgeInsets.all(1.0),
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      'Do not give SWAG(scientific wild ass guess) answers, if you do not know, say you don\'t know. "First Sergeant I don\'t know the answer to that question", if you know what publication it can be referenced in you can say "but I can reference it in publication number"'),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: const EdgeInsets.all(1.0),
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      'At the end you will normally be asked if you have any questions for the board, during this time you can address any wrong answers. When you are dismissed, stand up and move about two paces from the table, salute the president and sound off with the unit motto "Dragons Sergeant Major!", wait until the salute is returned before dropping yours. Again don\'t over think leaving, just walk out of the room.'),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: const EdgeInsets.all(1.0),
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'About me',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: const EdgeInsets.all(1.0),
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      'I have 24 years active service in the Army. I\'ve competed in boards from company to corps level.'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
