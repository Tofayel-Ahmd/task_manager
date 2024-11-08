import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/task_provider.dart';
import '../widgets/task_item.dart';

class TaskListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final taskProvider = Provider.of<TaskProvider>(context);
    final tasks = taskProvider.tasks;

    return Scaffold(
      appBar: AppBar(
        title: Text('Task List'),
      ),
      body: tasks.isEmpty
          ? Center(child: Text('No tasks added yet.'))
          : ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (ctx, index) => TaskItem(tasks[index]),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).pushNamed('/add-task');
        },
      ),
    );
  }
}
