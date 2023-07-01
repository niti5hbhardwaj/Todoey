import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String task;
  final VoidCallback onChangedCallback;
  final VoidCallback onLongPressedCallback;
  const TaskTile(
      {super.key,
      required this.task,
      required this.isChecked,
      required this.onChangedCallback,
      required this.onLongPressedCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPressedCallback,
      title: Text(
        task,
        style: TextStyle(
          decoration:
              (isChecked) ? TextDecoration.lineThrough : TextDecoration.none,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: (value) {
          onChangedCallback();
        },
      ),
    );
  }
}
