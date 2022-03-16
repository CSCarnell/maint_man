import 'package:flutter/material.dart';

class ArmySong extends StatefulWidget {
  ArmySong({Key? key}) : super(key: key);

  @override
  State<ArmySong> createState() => _ArmySongState();
}

class _ArmySongState extends State<ArmySong> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NCO Creed'),
        centerTitle: true,
        foregroundColor: Colors.black,
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(1.0),
            padding: const EdgeInsets.all(8.0),
            child: Text(
                'March along, sing our song, with the Army of the free. Count the brave, count the true, who have fought to victory.We’re the Army and proud of our name! We’re the Army and proudly proclaim: '),
          ),
          Container(
            margin: const EdgeInsets.all(1.0),
            padding: const EdgeInsets.all(8.0),
            child: Text(
                'First to fight for the right, And to build the Nation’s might, And the Army goes rolling along. Proud of all we have done, Fighting till the battle’s won, And the Army goes rolling along. '),
          ),
          Container(
            margin: const EdgeInsets.all(1.0),
            padding: const EdgeInsets.all(8.0),
            child: Text(
                'Then it’s hi! hi! hey! The Army’s on its way. Count off the cadence loud and strong; For where’er we go, You will always know That the Army goes rolling along.'),
          ),
        ],
      ),
    );
  }
}
