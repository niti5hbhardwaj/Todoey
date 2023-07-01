import 'package:flutter/material.dart';
import 'package:learning_state_management/models/task_data.dart';
import 'package:learning_state_management/screens/add_task_screen.dart';
import 'package:provider/provider.dart';
import '../widgets/task_list.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                  child: Icon(
                    Icons.list,
                    size: 30,
                    color: Colors.lightBlueAccent,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Todoey",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "${Provider.of<TaskData>(context).numberOfTasks} Tasks",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20),
              height: 500,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(25),
                ),
                color: Colors.white,
              ),
              child: TaskList(),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => AddTaskScreen(),
              backgroundColor: Color(0xff757575));
        },
        backgroundColor: Colors.lightBlueAccent,
        child: const Icon(Icons.add),
      ),
    );
  }
}
