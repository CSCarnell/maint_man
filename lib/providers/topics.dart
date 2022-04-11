import 'package:flutter/foundation.dart';
import '../topic.dart';

class Topics with ChangeNotifier {
  List<Topic> _items = [];

  List<Topic> get items {
    return [..._items];
  }

  void addTopic() {
    // _items.add(value);
    notifyListeners();
  }
}
