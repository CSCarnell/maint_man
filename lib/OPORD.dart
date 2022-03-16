import 'package:flutter/material.dart';

class OPORD extends StatefulWidget {
  OPORD({Key? key}) : super(key: key);

  @override
  State<OPORD> createState() => _OPORDState();
}

class _OPORDState extends State<OPORD> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OPORD'),
        centerTitle: true,
        foregroundColor: Colors.black,
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/OPORD1.jpg'),
              Image.asset('assets/OPORD2.jpg'),
              Image.asset('assets/OPORD3.jpg'),
              Image.asset('assets/OPORD4.jpg'),
              Image.asset('assets/OPORD5.jpg'),
              Image.asset('assets/OPORD6.jpg'),
              Image.asset('assets/OPORD7.jpg'),
            ],
          ),
        ),
      ),
    );
  }
}
