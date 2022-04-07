import 'package:flutter/material.dart';

import '../topic.dart';
import '../widgets/topicitem.dart';

class TopicsScreen extends StatelessWidget {
  final List<Topic> loadedTopics = [
    Topic(
      id: '1234',
      title: 'Test Topic 1',
      replies: 2,
    ),
    Topic(
      id: '12345',
      title: 'Test Topic 2',
      replies: 233,
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
        body: GridView.builder(
          padding: const EdgeInsets.all(10.0),
          itemCount: loadedTopics.length,
          itemBuilder: (ctx, i) => TopicItem(loadedTopics[i].id,
              loadedTopics[i].title, loadedTopics[i].replies),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10),
        ));
  }
}
