import 'package:flutter/material.dart';
import '../screens/topic_screen.dart';

class QuestionItem extends StatelessWidget {
  final String id;
  final String title;
  final int replies;
  final String question;

  QuestionItem(
    this.id,
    this.title,
    this.replies,
    this.question,
  );

  @override
  Widget build(BuildContext context) {
    // return GridTile(child: Text(title));
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return TopicScreen(title, question);
            },
          ),
        );
      },
      child: Text(title),
    );
  }
}
