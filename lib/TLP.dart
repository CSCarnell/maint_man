import 'package:flutter/material.dart';

class TLP extends StatefulWidget {
  TLP({Key? key}) : super(key: key);

  @override
  State<TLP> createState() => _TLPState();
}

class _TLPState extends State<TLP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TLP'),
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
                    'Step 1 – Receive the mission.',
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
                    'Step 2 – Issue a warning order.',
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
                    'Step 3 – Make a tentative plan.',
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
                    ' Step 4 – Initiate movement.',
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
                    'Step 5 – Conduct reconnaissance.',
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
                    'Step 6 – Complete the plan.',
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
                    'Step 7 – Issue the order.',
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
                    'Step 8 – Supervise and refine',
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
