class Task {
  final String text;
  bool isDone;

  Task({required this.text, this.isDone = false});

  void toggleDone() {
    isDone = !isDone;
  }
}
