import 'package:flutter/material.dart';

class MDMP extends StatefulWidget {
  MDMP({Key? key}) : super(key: key);

  @override
  State<MDMP> createState() => _MDMPState();
}

class _MDMPState extends State<MDMP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MDMP'),
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
                    'Step 1 – Receipt of mission.',
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
                    'Step 2 – Mission analysis.',
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
                    'Step 3 – COA development.',
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
                    ' Step 4 – COA analysis.',
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
                    'Step 5 – COA comparison.',
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
                    'Step 6 – COA approval.',
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
                    'Step 7 – Orders production, dissemination, and transition.',
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
                    'COA = Course of Action',
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
