import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:maint_man/widgets/questionitem.dart';

import '../screens/topics_screen.dart';

class QuestionScreen extends StatelessWidget {
  final String title;
  final String id;
  final String question;
  final int replies;

  QuestionScreen(this.title, this.question, this.id, this.replies);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: 2,
        itemBuilder: (ctx, i) => QuestionItem(id, title, replies, question),
      ),
    );
  }
}
