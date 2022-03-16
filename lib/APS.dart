import 'package:flutter/material.dart';

class APS extends StatefulWidget {
  APS({Key? key}) : super(key: key);

  @override
  State<APS> createState() => _APSState();
}

class _APSState extends State<APS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Army Problem Solving'),
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
                    'Step 1 – Gather information.',
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
                    'Step 2 – Identify the problem.',
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
                    'Step 3 – Develop criteria.',
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
                    ' Step 4 – Generate possible solutions.',
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
                    'Step 5 – Analyze possible solutions.',
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
                    'Step 6 – Compare possible solutions.',
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
                    'Step 7 – Make and implement the decision.',
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
