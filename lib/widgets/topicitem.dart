import 'package:flutter/material.dart';

class TopicItem extends StatelessWidget {
  final String id;
  final String title;
  final int replies;

  TopicItem(this.id, this.title, this.replies);

  @override
  Widget build(BuildContext context) {
    return GridTile(child: Text(title));
  }
}
