import 'package:flutter/material.dart';

class Staffs extends StatefulWidget {
  Staffs({Key? key}) : super(key: key);

  @override
  State<Staffs> createState() => _StaffsState();
}

class _StaffsState extends State<Staffs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Staff Sections'),
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
                    'G-1/S-1 Personnel - principal staff officer for all matters concerning human resources support (military and civilian). The G-1 (S-1) also serves as the senior adjutant general officer in the command. Specific responsibilities of the G-1 (S-1) include manning, personnel services, personnel support, and headquarters management.',
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
                    'G-2/S-2 Intelligence -  is the chief of the intelligence warfighting function and the principal staff officer responsible for providing intelligence to support current and future operations and plans. This officer gathers and analyzes information on enemy, terrain, weather, and civil considerations for the commander.',
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
                    'G-3/S-3 Operations -  is the chief of the movement and maneuver warfighting function and the principal staff officer responsible for all matters concerning training, operations and plans, and force development and modernization. In addition to coordinating the activities of the movement and maneuver warfighting function, the operations officer is the primary staff officer for integrating and synchronizing the operation as a whole for the commander.',
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
                    'G-4/S-4 Logistics -  is the principal staff officer for sustainment plans and operations, supply, maintenance, transportation, services, and operational contract support. At division and corps level the G-4 is titled the chief of sustainment. At brigade level and below the S-4 serves as the principal staff officer coordinating sustainment.',
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
                    'G-5 Plans - is the principal staff officer for planning operations for the mid- to long-range planning horizons at division echelon and higher. ',
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
                    'G-6/S-6 Signal -  is the principal staff officer for all matters concerning network operations (jointly consisting of Department of Defense Information Network Operations and applicable portions of the Defensive Cyberspace Operations), network transport, information services, and spectrum management operations within the unit’s area of operations.',
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
                    'G-8 Financial Management - is the principal staff officer singularly responsible for all financial management (resource management and finance operations). As the principal financial management advisor to the commander, this officer directs, prioritizes, and supervises the operations and functions of the G-8 staff sections assigned to the G-8 and the contingency command post. In coordination with the financial management center and through the theater sustainment command, the G-8 establishes and implements command finance operations policy. ',
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
                    'G-9/S-9 Civil Affairs Operations - ) is the principal staff officer responsible for all matters concerning civil affairs. The G-9 (S-9) establishes the civil-military operations center, evaluates civil considerations during mission analysis, and prepares the groundwork for transitioning the area of operations from military to civilian control. The G-9 (S-9) advises the commander on the military’s effect on civilians in the area of operations, relative to the complex relationship of these people with the terrain and institutions over time.',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
