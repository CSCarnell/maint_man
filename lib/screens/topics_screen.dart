import 'package:flutter/material.dart';

import '../topic.dart';
import '../widgets/topicitem.dart';

class TopicsScreen extends StatelessWidget {
  final List<Topic> loadedTopics = [
    Topic(
      id: '1234',
      title: 'Test Topic 1',
      replies: 2,
      question: 'What is pi?',
    ),
    Topic(
      id: '12345',
      title: 'Test Topic 2',
      replies: 233,
      question: 'how old is too old?',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Soldier to Soldier Forum'),
          centerTitle: true,
          foregroundColor: Colors.black,
          backgroundColor: Colors.amber,
        ),
        body: ListView.builder(
          padding: const EdgeInsets.all(10.0),
          itemCount: loadedTopics.length,
          itemBuilder: (ctx, i) => TopicItem(
            loadedTopics[i].id,
            loadedTopics[i].title,
            loadedTopics[i].replies,
            loadedTopics[i].question,
          ),
        ));
  }
}
