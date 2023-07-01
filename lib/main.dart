import 'package:flutter/material.dart';
import 'package:learning_state_management/models/task_data.dart';
import 'package:learning_state_management/screens/tasks_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => TaskData(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TasksScreen(),
      ),
    );
  }
}
