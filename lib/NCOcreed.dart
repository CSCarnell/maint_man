import 'package:flutter/material.dart';

class NCOcreed extends StatefulWidget {
  NCOcreed({Key? key}) : super(key: key);

  @override
  State<NCOcreed> createState() => _NCOcreedState();
}

class _NCOcreedState extends State<NCOcreed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NCO Creed'),
        centerTitle: true,
        foregroundColor: Colors.black,
        backgroundColor: Colors.amber,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(1.0),
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    '      No one if more professional than I. I am a noncommissioned officer, a leader of Soldiers. As a noncommissioned officer, I realize that I am a member of a time honored corps, which is known as "The Backbone of the Army". I am proud of the Corps of noncommissioned officers and will at all times conduct myself so as to bring credit upon the Corps, the military service and my country regardless of the situation in which I find myself. I will not use my grade or position to attain pleasure, profit, or personal safety. '),
              ),
              Container(
                margin: const EdgeInsets.all(1.0),
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    '     Competence is my watchword. My two basic responsibilities will always be uppermost in my mind—accomplishment of my mission and the welfare of my Soldiers. I will strive to remain technically and tactically proficient. I am aware of my role as a noncommissioned officer. I will fulfill my responsibilities inherent in that role. All Soldiers are entitled to outstanding leadership; I will provide that leadership. I know my Soldiers and I will always place their needs above my own. I will communicate consistently with my Soldiers and never leave them uninformed. I will be fair and impartial when recommending both rewards and punishment. '),
              ),
              Container(
                margin: const EdgeInsets.all(1.0),
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    '     Officers of my unit will have maximum time to accomplish their duties; they will not have to accomplish mine. I will earn their respect and confidence as well as that of my Soldiers. I will be loyal to those with whom I serve; seniors, peers, and subordinates alike. I will exercise initiative by taking appropriate action in the absence of orders. I will not compromise my integrity, nor my moral courage. I will not forget, nor will I allow my comrades to forget that we are professionals, noncommissioned officers, leaders! '),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
