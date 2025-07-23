import 'package:flutter/material.dart';
import 'package:todoapp/model/task.dart';
import 'package:todoapp/widgets/task_tile.dart';

class TaskList extends StatefulWidget {
  TaskList({super.key});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks = [
    Task(name: 'buy milk'),
    Task(name: 'buy eggs'),
    Task(name: 'buy breads'),
    Task(name: 'buy butter'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return TaskTile(
          isChecked: tasks[index].isDone,
          taskTitle: tasks[index].name,
          checkboxCallback: (checkboxState) {
            setState(() {
              tasks[index].toggleDone();
            });
          },
        );
      },
    );
  }
}
