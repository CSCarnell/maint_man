import 'dart:ffi';

import 'package:flutter/material.dart';

class ACFTCalc extends StatefulWidget {
  ACFTCalc({Key? key}) : super(key: key);

  @override
  State<ACFTCalc> createState() => _ACFTCalcState();
}

class _ACFTCalcState extends State<ACFTCalc> {
  int deadLift = 140;
  int deadLiftScore = 60;

  double throwDistance = 4.5;
  int throwScore = 60;

  int pushupCount = 10;
  int pushupScore = 60;

  String sprintTime = '3:02';
  int sprintScore = 58;

  int legtuckCount = 1;
  int legtuckScore = 58;

  String Legtuck = 'Leg Tuck';
  String Plank = 'Plank';
  String legtuckOrPlank = 'Leg Tuck';
  bool plank = false;

  String plankTime = '2:03';
  int plankScore = 58;

  String runTime = '21:03';
  int runScore = 58;

  int totalScore = 354;

  void calcTotalScore() {
    setState(() {
      if (!plank) {
        totalScore = runScore +
            legtuckScore +
            sprintScore +
            pushupScore +
            throwScore +
            deadLiftScore;
      }
      if (plank) {
        totalScore = runScore +
            plankScore +
            sprintScore +
            pushupScore +
            throwScore +
            deadLiftScore;
      }
    });
  }

  void calcRunScore() {
    setState(() {
      if (runTime == '21:03') {
        runScore = 58;
      }
      if (runTime == '21:01') {
        runScore = 59;
      }
      if (runTime == '21:00') {
        runScore = 60;
      }
      if (runTime == '20:36') {
        runScore = 61;
      }
      if (runTime == '20:12') {
        runScore = 62;
      }
      if (runTime == '19:48') {
        runScore = 63;
      }
      if (runTime == '19:24') {
        runScore = 64;
      }
      if (runTime == '19:00') {
        runScore = 65;
      }
      if (runTime == '18:48') {
        runScore = 66;
      }
      if (runTime == '18:36') {
        runScore = 67;
      }
      if (runTime == '18:24') {
        runScore = 68;
      }
      if (runTime == '18:12') {
        runScore = 69;
      }
      if (runTime == '18:00') {
        runScore = 70;
      }
      if (runTime == '17:51') {
        runScore = 71;
      }
      if (runTime == '17:42') {
        runScore = 72;
      }
      if (runTime == '17:33') {
        runScore = 73;
      }
      if (runTime == '17:24') {
        runScore = 74;
      }
      if (runTime == '17:15') {
        runScore = 75;
      }
      if (runTime == '17:06') {
        runScore = 76;
      }
      if (runTime == '16:57') {
        runScore = 77;
      }
      if (runTime == '16:48') {
        runScore = 78;
      }
      if (runTime == '16:39') {
        runScore = 79;
      }
      if (runTime == '16:30') {
        runScore = 80;
      }
      if (runTime == '16:21') {
        runScore = 81;
      }
      if (runTime == '16:12') {
        runScore = 82;
      }
      if (runTime == '16:03') {
        runScore = 83;
      }
      if (runTime == '15:54') {
        runScore = 84;
      }
      if (runTime == '15:45') {
        runScore = 85;
      }
      if (runTime == '15:36') {
        runScore = 86;
      }
      if (runTime == '15:27') {
        runScore = 87;
      }
      if (runTime == '15:18') {
        runScore = 88;
      }
      if (runTime == '15:09') {
        runScore = 89;
      }
      if (runTime == '15:00') {
        runScore = 90;
      }
      if (runTime == '14:51') {
        runScore = 91;
      }
      if (runTime == '14:42') {
        runScore = 92;
      }
      if (runTime == '14:33') {
        runScore = 93;
      }
      if (runTime == '14:24') {
        runScore = 94;
      }
      if (runTime == '14:15') {
        runScore = 95;
      }
      if (runTime == '14:06') {
        runScore = 96;
      }
      if (runTime == '13:57') {
        runScore = 97;
      }
      if (runTime == '13:48') {
        runScore = 98;
      }
      if (runTime == '13:39') {
        runScore = 99;
      }
      if (runTime == '13:30') {
        runScore = 100;
      }
    });
  }

  void calcPlankScore() {
    setState(() {
      if (plank) {
        if (plankTime == '2:03') {
          plankScore = 58;
        }
        if (plankTime == '2:06') {
          plankScore = 59;
        }
        if (plankTime == '2:09') {
          plankScore = 60;
        }
        if (plankTime == '2:12') {
          plankScore = 61;
        }
        if (plankTime == '2:16') {
          plankScore = 62;
        }
        if (plankTime == '2:19') {
          plankScore = 63;
        }
        if (plankTime == '2:22') {
          plankScore = 64;
        }
        if (plankTime == '2:26') {
          plankScore = 65;
        }
        if (plankTime == '2:29') {
          plankScore = 66;
        }
        if (plankTime == '2:32') {
          plankScore = 67;
        }
        if (plankTime == '2:35') {
          plankScore = 68;
        }
        if (plankTime == '2:39') {
          plankScore = 69;
        }
        if (plankTime == '2:42') {
          plankScore = 70;
        }
        if (plankTime == '2:45') {
          plankScore = 71;
        }
        if (plankTime == '2:49') {
          plankScore = 72;
        }
        if (plankTime == '2:52') {
          plankScore = 73;
        }
        if (plankTime == '2:55') {
          plankScore = 74;
        }
        if (plankTime == '2:58') {
          plankScore = 75;
        }
        if (plankTime == '3:02') {
          plankScore = 76;
        }
        if (plankTime == '3:05') {
          plankScore = 77;
        }
        if (plankTime == '3:08') {
          plankScore = 78;
        }
        if (plankTime == '3:12') {
          plankScore = 79;
        }
        if (plankTime == '3:15') {
          plankScore = 80;
        }
        if (plankTime == '3:18') {
          plankScore = 81;
        }
        if (plankTime == '3:21') {
          plankScore = 82;
        }
        if (plankTime == '3:25') {
          plankScore = 83;
        }
        if (plankTime == '3:28') {
          plankScore = 84;
        }
        if (plankTime == '3:31') {
          plankScore = 85;
        }
        if (plankTime == '3:35') {
          plankScore = 86;
        }
        if (plankTime == '2:38') {
          plankScore = 87;
        }
        if (plankTime == '3:41') {
          plankScore = 88;
        }
        if (plankTime == '3:44') {
          plankScore = 89;
        }
        if (plankTime == '3:48') {
          plankScore = 90;
        }
        if (plankTime == '3:51') {
          plankScore = 91;
        }
        if (plankTime == '3:54') {
          plankScore = 92;
        }
        if (plankTime == '3:58') {
          plankScore = 93;
        }
        if (plankTime == '4:01') {
          plankScore = 94;
        }
        if (plankTime == '4:04') {
          plankScore = 95;
        }
        if (plankTime == '4:07') {
          plankScore = 96;
        }
        if (plankTime == '4:11') {
          plankScore = 97;
        }
        if (plankTime == '4:14') {
          plankScore = 98;
        }
        if (plankTime == '4:17') {
          plankScore = 99;
        }
        if (plankTime == '4:20') {
          plankScore = 100;
        }
      }
    });
  }

  void plankSwitch() {
    setState(() {
      if (plank) {
        legtuckOrPlank = Plank;
      }
      if (!plank) {
        legtuckOrPlank = Legtuck;
      }
    });
  }

  void calcSprintScore() {
    setState(() {
      if (sprintTime == '3:02') {
        sprintScore = 58;
      }
      if (sprintTime == '3:01') {
        sprintScore = 59;
      }
      if (sprintTime == '3:00') {
        sprintScore = 60;
      }
      if (sprintTime == '2:50') {
        sprintScore = 61;
      }
      if (sprintTime == '2:45') {
        sprintScore = 62;
      }
      if (sprintTime == '2:40') {
        sprintScore = 63;
      }
      if (sprintTime == '2:35') {
        sprintScore = 64;
      }
      if (sprintTime == '2:30') {
        sprintScore = 65;
      }
      if (sprintTime == '2:26') {
        sprintScore = 66;
      }
      if (sprintTime == '2:22') {
        sprintScore = 67;
      }
      if (sprintTime == '2:18') {
        sprintScore = 68;
      }
      if (sprintTime == '2:14') {
        sprintScore = 69;
      }
      if (sprintTime == '2:10') {
        sprintScore = 70;
      }
      if (sprintTime == '2:09') {
        sprintScore = 71;
      }
      if (sprintTime == '2:08') {
        sprintScore = 72;
      }
      if (sprintTime == '2:07') {
        sprintScore = 73;
      }
      if (sprintTime == '2:06') {
        sprintScore = 74;
      }
      if (sprintTime == '2:05') {
        sprintScore = 75;
      }
      if (sprintTime == '2:04') {
        sprintScore = 76;
      }
      if (sprintTime == '2:03') {
        sprintScore = 77;
      }
      if (sprintTime == '2:02') {
        sprintScore = 78;
      }
      if (sprintTime == '2:01') {
        sprintScore = 79;
      }
      if (sprintTime == '2:00') {
        sprintScore = 80;
      }
      if (sprintTime == '1:59') {
        sprintScore = 81;
      }
      if (sprintTime == '1:58') {
        sprintScore = 82;
      }
      if (sprintTime == '1:57') {
        sprintScore = 83;
      }
      if (sprintTime == '1:56') {
        sprintScore = 84;
      }
      if (sprintTime == '1:55') {
        sprintScore = 85;
      }
      if (sprintTime == '1:54') {
        sprintScore = 86;
      }
      if (sprintTime == '1:53') {
        sprintScore = 87;
      }
      if (sprintTime == '1:52') {
        sprintScore = 88;
      }
      if (sprintTime == '1:51') {
        sprintScore = 89;
      }
      if (sprintTime == '1:50') {
        sprintScore = 90;
      }
      if (sprintTime == '1:49') {
        sprintScore = 91;
      }
      if (sprintTime == '1:48') {
        sprintScore = 92;
      }
      if (sprintTime == '1:47') {
        sprintScore = 93;
      }
      if (sprintTime == '1:46') {
        sprintScore = 94;
      }
      if (sprintTime == '1:45') {
        sprintScore = 95;
      }
      if (sprintTime == '1:43') {
        sprintScore = 96;
      }
      if (sprintTime == '1:41') {
        sprintScore = 97;
      }
      if (sprintTime == '1:39') {
        sprintScore = 98;
      }
      if (sprintTime == '1:36') {
        sprintScore = 99;
      }
      if (sprintTime == '1:33') {
        sprintScore = 100;
      }
    });
  }

  void calcPushupScore() {
    setState(() {
      if (pushupCount == 10) {
        pushupScore = 60;
      }
      if (pushupCount == 12) {
        pushupScore = 61;
      }
      if (pushupCount == 14) {
        pushupScore = 62;
      }
      if (pushupCount == 16) {
        pushupScore = 63;
      }
      if (pushupCount == 18) {
        pushupScore = 64;
      }
      if (pushupCount == 20) {
        pushupScore = 65;
      }
      if (pushupCount == 22) {
        pushupScore = 66;
      }
      if (pushupCount == 24) {
        pushupScore = 67;
      }
      if (pushupCount == 26) {
        pushupScore = 68;
      }
      if (pushupCount == 28) {
        pushupScore = 69;
      }
      if (pushupCount == 30) {
        pushupScore = 70;
      }
      if (pushupCount == 31) {
        pushupScore = 71;
      }
      if (pushupCount == 32) {
        pushupScore = 72;
      }
      if (pushupCount == 33) {
        pushupScore = 73;
      }
      if (pushupCount == 34) {
        pushupScore = 74;
      }
      if (pushupCount == 35) {
        pushupScore = 75;
      }
      if (pushupCount == 36) {
        pushupScore = 76;
      }
      if (pushupCount == 37) {
        pushupScore = 77;
      }
      if (pushupCount == 38) {
        pushupScore = 78;
      }
      if (pushupCount == 39) {
        pushupScore = 79;
      }
      if (pushupCount == 40) {
        pushupScore = 80;
      }
      if (pushupCount == 41) {
        pushupScore = 81;
      }
      if (pushupCount == 42) {
        pushupScore = 82;
      }
      if (pushupCount == 43) {
        pushupScore = 83;
      }
      if (pushupCount == 44) {
        pushupScore = 84;
      }
      if (pushupCount == 45) {
        pushupScore = 85;
      }
      if (pushupCount == 46) {
        pushupScore = 86;
      }
      if (pushupCount == 47) {
        pushupScore = 87;
      }
      if (pushupCount == 48) {
        pushupScore = 88;
      }
      if (pushupCount == 49) {
        pushupScore = 89;
      }
      if (pushupCount == 50) {
        pushupScore = 90;
      }
      if (pushupCount == 51) {
        pushupScore = 91;
      }
      if (pushupCount == 52) {
        pushupScore = 92;
      }
      if (pushupCount == 53) {
        pushupScore = 93;
      }
      if (pushupCount == 54) {
        pushupScore = 94;
      }
      if (pushupCount == 55) {
        pushupScore = 95;
      }
      if (pushupCount == 56) {
        pushupScore = 96;
      }
      if (pushupCount == 57) {
        pushupScore = 97;
      }
      if (pushupCount == 58) {
        pushupScore = 98;
      }
      if (pushupCount == 59) {
        pushupScore = 99;
      }
      if (pushupCount == 60) {
        pushupScore = 100;
      }
    });
  }

  void calcThrowScore() {
    setState(() {
      if (throwDistance == 4.5) {
        throwScore = 60;
      }
      if (throwDistance == 4.9) {
        throwScore = 61;
      }
      if (throwDistance == 5.4) {
        throwScore = 62;
      }
      if (throwDistance == 5.8) {
        throwScore = 63;
      }
      if (throwDistance == 6.2) {
        throwScore = 64;
      }
      if (throwDistance == 6.5) {
        throwScore = 65;
      }
      if (throwDistance == 6.8) {
        throwScore = 66;
      }
      if (throwDistance == 7.1) {
        throwScore = 67;
      }
      if (throwDistance == 7.5) {
        throwScore = 68;
      }
      if (throwDistance == 7.8) {
        throwScore = 69;
      }
      if (throwDistance == 8.0) {
        throwScore = 70;
      }
      if (throwDistance == 8.2) {
        throwScore = 71;
      }
      if (throwDistance == 8.3) {
        throwScore = 72;
      }
      if (throwDistance == 8.5) {
        throwScore = 73;
      }
      if (throwDistance == 8.6) {
        throwScore = 74;
      }
      if (throwDistance == 8.8) {
        throwScore = 75;
      }
      if (throwDistance == 8.9) {
        throwScore = 76;
      }
      if (throwDistance == 9.1) {
        throwScore = 77;
      }
      if (throwDistance == 9.2) {
        throwScore = 78;
      }
      if (throwDistance == 9.4) {
        throwScore = 79;
      }
      if (throwDistance == 9.5) {
        throwScore = 80;
      }
      if (throwDistance == 9.7) {
        throwScore = 81;
      }
      if (throwDistance == 9.8) {
        throwScore = 82;
      }
      if (throwDistance == 10.0) {
        throwScore = 83;
      }
      if (throwDistance == 10.1) {
        throwScore = 84;
      }
      if (throwDistance == 10.3) {
        throwScore = 85;
      }
      if (throwDistance == 10.4) {
        throwScore = 86;
      }
      if (throwDistance == 10.6) {
        throwScore = 87;
      }
      if (throwDistance == 10.7) {
        throwScore = 88;
      }
      if (throwDistance == 10.9) {
        throwScore = 89;
      }
      if (throwDistance == 11.0) {
        throwScore = 90;
      }
      if (throwDistance == 11.2) {
        throwScore = 91;
      }
      if (throwDistance == 11.3) {
        throwScore = 92;
      }
      if (throwDistance == 11.5) {
        throwScore = 93;
      }
      if (throwDistance == 11.6) {
        throwScore = 94;
      }
      if (throwDistance == 11.8) {
        throwScore = 95;
      }
      if (throwDistance == 11.9) {
        throwScore = 96;
      }
      if (throwDistance == 12.1) {
        throwScore = 97;
      }
      if (throwDistance == 12.2) {
        throwScore = 98;
      }
      if (throwDistance == 12.4) {
        throwScore = 99;
      }
      if (throwDistance == 12.5) {
        throwScore = 100;
      }
    });
  }

  void calcDeadliftScore() {
    setState(() {
      if (deadLift < 140) {
        deadLiftScore = 0;
      }
      if (deadLift == 140) {
        deadLiftScore = 60;
      }
      if (deadLift == 150) {
        deadLiftScore = 62;
      }
      if (deadLift == 160) {
        deadLiftScore = 63;
      }
      if (deadLift == 170) {
        deadLiftScore = 64;
      }
      if (deadLift == 180) {
        deadLiftScore = 65;
      }
      if (deadLift == 190) {
        deadLiftScore = 68;
      }
      if (deadLift == 200) {
        deadLiftScore = 70;
      }
      if (deadLift == 210) {
        deadLiftScore = 72;
      }
      if (deadLift == 220) {
        deadLiftScore = 74;
      }
      if (deadLift == 230) {
        deadLiftScore = 76;
      }
      if (deadLift == 240) {
        deadLiftScore = 78;
      }
      if (deadLift == 250) {
        deadLiftScore = 80;
      }
      if (deadLift == 260) {
        deadLiftScore = 82;
      }
      if (deadLift == 270) {
        deadLiftScore = 84;
      }
      if (deadLift == 280) {
        deadLiftScore = 86;
      }
      if (deadLift == 290) {
        deadLiftScore = 88;
      }
      if (deadLift == 300) {
        deadLiftScore = 90;
      }
      if (deadLift == 310) {
        deadLiftScore = 92;
      }
      if (deadLift == 320) {
        deadLiftScore = 94;
      }
      if (deadLift == 330) {
        deadLiftScore = 97;
      }
      if (deadLift == 340) {
        deadLiftScore = 100;
      }
    });
  }

  void calcLegtuck() {
    setState(() {
      if (!plank) {
        if (legtuckCount == 0) {
          legtuckScore = 0;
        }
        if (legtuckCount == 1) {
          legtuckScore = 60;
        }
        if (legtuckCount == 2) {
          legtuckScore = 62;
        }
        if (legtuckCount == 3) {
          legtuckScore = 65;
        }
        if (legtuckCount == 4) {
          legtuckScore = 68;
        }
        if (legtuckCount == 5) {
          legtuckScore = 70;
        }
        if (legtuckCount == 6) {
          legtuckScore = 72;
        }
        if (legtuckCount == 7) {
          legtuckScore = 74;
        }
        if (legtuckCount == 8) {
          legtuckScore = 76;
        }
        if (legtuckCount == 9) {
          legtuckScore = 78;
        }
        if (legtuckCount == 10) {
          legtuckScore = 80;
        }
        if (legtuckCount == 11) {
          legtuckScore = 82;
        }
        if (legtuckCount == 12) {
          legtuckScore = 84;
        }
        if (legtuckCount == 13) {
          legtuckScore = 86;
        }
        if (legtuckCount == 14) {
          legtuckScore = 88;
        }
        if (legtuckCount == 15) {
          legtuckScore = 90;
        }
        if (legtuckCount == 16) {
          legtuckScore = 92;
        }
        if (legtuckCount == 17) {
          legtuckScore = 94;
        }
        if (legtuckCount == 18) {
          legtuckScore = 96;
        }
        if (legtuckCount == 19) {
          legtuckScore = 98;
        }
        if (legtuckCount == 20) {
          legtuckScore = 100;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('ACFT Calculator'),
        centerTitle: true,
        foregroundColor: Colors.black,
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          Container(
            //margin: const EdgeInsets.fromLTRB(10.0, 20, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Deadlift',
                  style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                ),
                DropdownButton<int>(
                  value: deadLift,
                  icon: const Icon(Icons.arrow_downward),
                  elevation: 16,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold),
                  underline: Container(
                    height: 2,
                    color: Colors.black,
                  ),
                  onChanged: (int? newValue) {
                    setState(() {
                      deadLift = newValue!;
                      calcDeadliftScore();
                      calcTotalScore();
                    });
                  },
                  items: <int>[
                    0,
                    140,
                    150,
                    160,
                    170,
                    180,
                    190,
                    200,
                    210,
                    220,
                    230,
                    240,
                    250,
                    260,
                    270,
                    280,
                    290,
                    300,
                    310,
                    320,
                    330,
                    340
                  ].map<DropdownMenuItem<int>>((int value) {
                    return DropdownMenuItem<int>(
                      value: value,
                      child: Text(value.toString()),
                    );
                  }).toList(),
                ),
                Text(
                  deadLiftScore.toString(),
                  style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Throw',
                  style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                ),
                DropdownButton<double>(
                  value: throwDistance,
                  icon: const Icon(Icons.arrow_downward),
                  elevation: 16,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold),
                  underline: Container(
                    height: 2,
                    color: Colors.black,
                  ),
                  onChanged: (double? newValue) {
                    setState(() {
                      throwDistance = newValue!;
                      calcThrowScore();
                      calcTotalScore();
                    });
                  },
                  items: <double>[
                    4.5,
                    4.9,
                    5.4,
                    5.8,
                    6.2,
                    6.5,
                    6.8,
                    7.1,
                    7.5,
                    7.8,
                    8.0,
                    8.2,
                    8.3,
                    8.5,
                    8.6,
                    8.8,
                    8.9,
                    9.1,
                    9.2,
                    9.4,
                    9.5,
                    9.7,
                    9.8,
                    10.0,
                    10.1,
                    10.3,
                    10.4,
                    10.6,
                    10.7,
                    10.9,
                    11.0,
                    11.2,
                    11.3,
                    11.5,
                    11.6,
                    11.8,
                    11.9,
                    12.1,
                    12.2,
                    12.4,
                    12.5
                  ].map<DropdownMenuItem<double>>((double value) {
                    return DropdownMenuItem<double>(
                      value: value,
                      child: Text(value.toString()),
                    );
                  }).toList(),
                ),
                Text(
                  throwScore.toString(),
                  style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Pushups',
                  style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                ),
                DropdownButton<int>(
                  value: pushupCount,
                  icon: const Icon(Icons.arrow_downward),
                  elevation: 16,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold),
                  underline: Container(
                    height: 2,
                    color: Colors.black,
                  ),
                  onChanged: (int? newValue) {
                    setState(() {
                      pushupCount = newValue!;
                      calcPushupScore();
                      calcTotalScore();
                    });
                  },
                  items: <int>[
                    10,
                    12,
                    14,
                    16,
                    18,
                    20,
                    22,
                    24,
                    26,
                    28,
                    30,
                    31,
                    32,
                    33,
                    34,
                    35,
                    36,
                    37,
                    38,
                    39,
                    40,
                    41,
                    42,
                    43,
                    44,
                    45,
                    46,
                    47,
                    48,
                    49,
                    50,
                    51,
                    52,
                    53,
                    54,
                    55,
                    56,
                    57,
                    58,
                    59,
                    60
                  ].map<DropdownMenuItem<int>>((int value) {
                    return DropdownMenuItem<int>(
                      value: value,
                      child: Text(value.toString()),
                    );
                  }).toList(),
                ),
                Text(
                  pushupScore.toString(),
                  style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Sprint',
                  style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                ),
                DropdownButton<String>(
                  value: sprintTime,
                  icon: const Icon(Icons.arrow_downward),
                  elevation: 16,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold),
                  underline: Container(
                    height: 2,
                    color: Colors.black,
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      sprintTime = newValue!;
                      calcSprintScore();
                      calcTotalScore();
                    });
                  },
                  items: <String>[
                    '3:02',
                    '3:01',
                    '3:00',
                    '2:50',
                    '2:45',
                    '2:40',
                    '2:35',
                    '2:30',
                    '2:26',
                    '2:22',
                    '2:18',
                    '2:14',
                    '2:10',
                    '2:09',
                    '2:08',
                    '2:07',
                    '2:06',
                    '2:05',
                    '2:04',
                    '2:03',
                    '2:02',
                    '2:01',
                    '2:00',
                    '1:59',
                    '1:58',
                    '1:57',
                    '1:56',
                    '1:55',
                    '1:54',
                    '1:53',
                    '1:52',
                    '1:51',
                    '1:50',
                    '1:49',
                    '1:48',
                    '1:47',
                    '1:46',
                    '1:45',
                    '1:43',
                    '1:41',
                    '1:39',
                    '1:36',
                    '1:33'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                Text(
                  sprintScore.toString(),
                  style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          if (!plank)
            Container(
              margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Leg Tuck',
                    style:
                        TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                  ),
                  DropdownButton<int>(
                    value: legtuckCount,
                    icon: const Icon(Icons.arrow_downward),
                    elevation: 16,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold),
                    underline: Container(
                      height: 2,
                      color: Colors.black,
                    ),
                    onChanged: (int? newValue) {
                      setState(() {
                        legtuckCount = newValue!;
                        calcLegtuck();
                        calcTotalScore();
                      });
                    },
                    items: <int>[
                      0,
                      1,
                      2,
                      3,
                      4,
                      5,
                      6,
                      7,
                      8,
                      9,
                      10,
                      11,
                      12,
                      13,
                      14,
                      15,
                      16,
                      17,
                      18,
                      19,
                      20
                    ].map<DropdownMenuItem<int>>((int value) {
                      return DropdownMenuItem<int>(
                        value: value,
                        child: Text(value.toString()),
                      );
                    }).toList(),
                  ),
                  Text(
                    legtuckScore.toString(),
                    style:
                        TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          if (plank)
            Container(
              margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Plank',
                    style:
                        TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                  ),
                  DropdownButton<String>(
                    value: plankTime,
                    icon: const Icon(Icons.arrow_downward),
                    elevation: 16,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold),
                    underline: Container(
                      height: 2,
                      color: Colors.black,
                    ),
                    onChanged: (String? newValue) {
                      setState(() {
                        plankTime = newValue!;
                        calcPlankScore();
                        calcTotalScore();
                      });
                    },
                    items: <String>[
                      '2:03',
                      '2:06',
                      '2:09',
                      '2:12',
                      '2:16',
                      '2:19',
                      '2:22',
                      '2:26',
                      '2:29',
                      '2:32',
                      '2:35',
                      '2:39',
                      '2:42',
                      '2:45',
                      '2:49',
                      '2:52',
                      '2:55',
                      '2:58',
                      '3:02',
                      '3:05',
                      '3:08',
                      '3:12',
                      '3:15',
                      '3:18',
                      '3:21',
                      '3:25',
                      '3:28',
                      '3:31',
                      '3:35',
                      '3:38',
                      '3:41',
                      '3:44',
                      '3:48',
                      '3:51',
                      '3:54',
                      '3:58',
                      '4:01',
                      '4:04',
                      '4:07',
                      '4:11',
                      '4:14',
                      '4:17',
                      '4:20'
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                  Text(
                    plankScore.toString(),
                    style:
                        TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Check for plank',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                Checkbox(
                    checkColor: Colors.black,
                    fillColor: MaterialStateProperty.resolveWith(getColor),
                    value: plank,
                    onChanged: (bool? value) {
                      setState(() {
                        plank = value!;
                        plankSwitch();
                        calcTotalScore();
                      });
                    }),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Run',
                  style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                ),
                DropdownButton<String>(
                  value: runTime,
                  icon: const Icon(Icons.arrow_downward),
                  elevation: 16,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold),
                  underline: Container(
                    height: 2,
                    color: Colors.black,
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      runTime = newValue!;
                      calcRunScore();
                      calcTotalScore();
                    });
                  },
                  items: <String>[
                    '21:03',
                    '21:01',
                    '21:00',
                    '20:36',
                    '20:12',
                    '19:48',
                    '19:24',
                    '19:00',
                    '18:48',
                    '18:36',
                    '18:24',
                    '18:12',
                    '18:00',
                    '17:51',
                    '17:42',
                    '17:33',
                    '17:24',
                    '17:15',
                    '17:06',
                    '16:57',
                    '16:48',
                    '16:39',
                    '16:30',
                    '16:21',
                    '16:12',
                    '16:03',
                    '15:54',
                    '15:45',
                    '15:36',
                    '15:27',
                    '15:18',
                    '15:09',
                    '15:00',
                    '14:51',
                    '14:42',
                    '14:33',
                    '14:24',
                    '14:15',
                    '14:06',
                    '13:57',
                    '13:48',
                    '13:39',
                    '13:30'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                Text(
                  runScore.toString(),
                  style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Text(
              totalScore.toString(),
              style: TextStyle(fontSize: 60.0, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
