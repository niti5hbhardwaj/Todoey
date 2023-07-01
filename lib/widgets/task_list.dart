import 'package:flutter/material.dart';
import 'package:learning_state_management/models/task_data.dart';
import 'package:learning_state_management/widgets/task_tile.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemCount: taskData.numberOfTasks,
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              onLongPressedCallback: () {
                Provider.of<TaskData>(context, listen: false).deleteTask(task);
              },
              task: task.text,
              isChecked: task.isDone,
              onChangedCallback: () {
                Provider.of<TaskData>(context, listen: false)
                    .toggleTaskStatus(task);
              },
            );
          },
        );
      },
    );
  }
}
