import 'package:flutter/material.dart';
import 'package:todoapp/model/task.dart';
import 'package:todoapp/widgets/task_tile.dart';

class TaskList extends StatefulWidget {
  final List<Task> tasks;

  const TaskList({super.key, required this.tasks});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.tasks.length,
      itemBuilder: (context, index) {
        return TaskTile(
          isChecked: widget.tasks[index].isDone,
          taskTitle: widget.tasks[index].name,
          checkboxCallback: (checkboxState) {
            setState(() {
              widget.tasks[index].toggleDone();
            });
          },
        );
      },
    );
  }
}
