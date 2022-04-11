import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

import '../screens/topics_screen.dart';

class TopicScreen extends StatelessWidget {
  final String title;

  final String question;

  TopicScreen(this.title, this.question);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10.0),
        children: <Widget>[
          Container(
            height: 20,
            child: Text(question),
          ),
          Container(
            height: 20,
            child: Text(question),
          ),
        ],
      ),
    );
  }
}
