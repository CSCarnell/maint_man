import 'package:flutter/foundation.dart';

class Topic {
  final String id;
  final String title;
  final int replies;
  final String question;

  Topic({
    required this.id,
    required this.title,
    required this.replies,
    required this.question,
  });
}
