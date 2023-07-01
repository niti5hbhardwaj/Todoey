import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:learning_state_management/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(text: "Get out of bed"),
    Task(text: "Try to stay awake"),
    Task(text: "Go back to bed"),
    Task(text: "Try to fall asleep"),
    Task(text: "Repeat"),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get numberOfTasks {
    return _tasks.length;
  }

  void addTask(String text) {
    final task = Task(text: text);
    _tasks.add(task);
    notifyListeners();
  }

  void toggleTaskStatus(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
