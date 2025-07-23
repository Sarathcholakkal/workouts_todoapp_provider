import 'package:flutter/material.dart';
import 'package:todoapp/model/task_data.dart';
import 'package:todoapp/widgets/task_tile.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Provider.of<TaskData>(context).tasks.length,
      itemBuilder: (context, index) {
        return TaskTile(
          isChecked: Provider.of<TaskData>(context).tasks[index].isDone,
          taskTitle: Provider.of<TaskData>(context).tasks[index].name,
          checkboxCallback: (checkboxState) {
            //   setState(() {
            //     Provider.of<TaskData>(context).tasks[index].name;
            //   });
          },
        );
      },
    );
  }
}
