import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import '../models/task.dart';

class TaskProvider with ChangeNotifier {
  final List<Task> _tasks = [];

  List<Task> get tasks => _tasks;

  void addTask(String title, String description) {
    final newTask = Task(
      id: Uuid().v4(),
      title: title,
      description: description,
    );
    _tasks.add(newTask);
    notifyListeners();
  }
}
