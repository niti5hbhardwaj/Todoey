import 'package:flutter/material.dart';
import 'package:learning_state_management/models/task_data.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String taskTitle = "";
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Add Task",
              style: TextStyle(
                fontSize: 28,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                taskTitle = value;
              },
            ),
            const SizedBox(
              height: 15,
            ),
            TextButton(
              onPressed: () {
                Provider.of<TaskData>(context, listen: false)
                    .addTask(taskTitle);
                Navigator.pop(context);
              },
              style: const ButtonStyle(
                backgroundColor:
                    MaterialStatePropertyAll(Colors.lightBlueAccent),
                foregroundColor: MaterialStatePropertyAll(Colors.white),
              ),
              child: const Text("Add"),
            ),
          ],
        ),
      ),
    );
  }
}
