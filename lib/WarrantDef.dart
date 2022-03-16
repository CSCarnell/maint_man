import 'package:flutter/material.dart';

class WarrantDef extends StatefulWidget {
  WarrantDef({Key? key}) : super(key: key);

  @override
  State<WarrantDef> createState() => _WarrantDefState();
}

class _WarrantDefState extends State<WarrantDef> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Warrant Officer Definition'),
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
                'The Army Warrant Officer is a self–aware and adaptive technical expert, combat leader, trainer, and advisor. Through progressive levels of expertise in assignments, training, and education, the Warrant Officer administers, manages, maintains, operates, and integrates Army systems and equipment across the full spectrum of Army operations.  '),
          ),
          Container(
            margin: const EdgeInsets.all(1.0),
            padding: const EdgeInsets.all(8.0),
            child: Text(
                'Warrant Officers are innovative integrators of emerging technologies, dynamic teachers, confident warfighters, and developers of specialized teams of soldiers. They support a wide range of Army missions throughout their career.'),
          ),
          Container(
            margin: const EdgeInsets.all(1.0),
            padding: const EdgeInsets.all(8.0),
            child: Text(
                'Warrant officers in the Army are accessed with specific levels of technical ability. They refine their technical expertise and develop their leadership and management skills through tiered progressive assignments and education.'),
          ),
        ],
      ),
    );
  }
}
