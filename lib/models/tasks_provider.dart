import 'package:flutter/foundation.dart';
import 'task.dart';
import 'dart:collection';

class TasksProvider with ChangeNotifier {
  List<Task> _tasks = [];

  UnmodifiableListView<Task> getTasks() => UnmodifiableListView(_tasks);

  Task getTaskAt(int index) => _tasks[index];

  int getTasksLength() => _tasks.length;

  void addTask(String title) {
    _tasks.add(Task(title: title));
    notifyListeners();
  }

  void removeTaskAt(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }

  void toggleTask(int index) {
    _tasks[index].toggleDone();
    notifyListeners();
  }
}
