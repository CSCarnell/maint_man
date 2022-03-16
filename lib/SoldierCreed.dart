import 'package:flutter/material.dart';

class SoldierCreed extends StatefulWidget {
  SoldierCreed({Key? key}) : super(key: key);

  @override
  State<SoldierCreed> createState() => _SoldierCreedState();
}

class _SoldierCreedState extends State<SoldierCreed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Soldier\'s Creed'),
        centerTitle: true,
        foregroundColor: Colors.black,
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(1.0),
            padding: const EdgeInsets.all(8.0),
            child: Text('I am an American Soldier.'),
          ),
          Container(
            margin: const EdgeInsets.all(1.0),
            padding: const EdgeInsets.all(8.0),
            child: Text('I am a warrior and a member of a team.'),
          ),
          Container(
            margin: const EdgeInsets.all(1.0),
            padding: const EdgeInsets.all(8.0),
            child: Text(
                'I serve the people of the United States, and live the Army Values.'),
          ),
          Container(
            margin: const EdgeInsets.all(1.0),
            padding: const EdgeInsets.all(8.0),
            child: Text('I will always place the mission first.'),
          ),
          Container(
            margin: const EdgeInsets.all(1.0),
            padding: const EdgeInsets.all(8.0),
            child: Text('I will never accept defeat.'),
          ),
          Container(
            margin: const EdgeInsets.all(1.0),
            padding: const EdgeInsets.all(8.0),
            child: Text('I will never quit.'),
          ),
          Container(
            margin: const EdgeInsets.all(1.0),
            padding: const EdgeInsets.all(8.0),
            child: Text('I will never leave a fallen comrade.'),
          ),
          Container(
            margin: const EdgeInsets.all(1.0),
            padding: const EdgeInsets.all(8.0),
            child: Text(
                'I am disciplined, physically and mentally tough, trained and proficient in my warrior tasks and drills.'),
          ),
          Container(
            margin: const EdgeInsets.all(1.0),
            padding: const EdgeInsets.all(8.0),
            child: Text('I always maintain my arms, my equipment and myself.'),
          ),
          Container(
            margin: const EdgeInsets.all(1.0),
            padding: const EdgeInsets.all(8.0),
            child: Text('I am an expert and I am a professional.'),
          ),
          Container(
            margin: const EdgeInsets.all(1.0),
            padding: const EdgeInsets.all(8.0),
            child: Text(
                'I stand ready to deploy, engage, and destroy, the enemies of the United States of America in close combat.'),
          ),
          Container(
            margin: const EdgeInsets.all(1.0),
            padding: const EdgeInsets.all(8.0),
            child: Text(
                'I am a guardian of freedom and the American way of life.'),
          ),
          Container(
            margin: const EdgeInsets.all(1.0),
            padding: const EdgeInsets.all(8.0),
            child: Text('I am an American Soldier.'),
          ),
        ],
      ),
    );
  }
}
