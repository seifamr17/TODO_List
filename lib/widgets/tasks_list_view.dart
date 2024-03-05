import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todoey/models/tasks_provider.dart';
import 'package:provider/provider.dart';

class TasksListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TasksProvider>(
      builder: (context, tasks, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              title: tasks.getTaskAt(index).getTitle(),
              isChecked: tasks.getTaskAt(index).getIsDone(),
              longPressCallback: () {
                tasks.removeTaskAt(index);
              },
              checkboxCallback: (checkboxState) {
                tasks.toggleTask(index);
              },
            );
          },
          itemCount: Provider.of<TasksProvider>(context).getTasksLength(),
        );
      },
    );
  }
}
