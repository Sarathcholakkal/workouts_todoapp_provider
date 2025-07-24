import 'package:flutter/material.dart';
import 'package:todoapp/model/task_data.dart';
import 'package:todoapp/widgets/task_tile.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskdata, child) {
        return ListView.builder(
          itemCount: taskdata.taskCount,
          itemBuilder: (context, index) {
            final task = taskdata.tasks[index];
            return TaskTile(
              isChecked: task.isDone,
              taskTitle: task.name,
              checkboxCallback: (checkboxState) {
                taskdata.updateTask(task);
              },
              onLongPress: () {
                taskdata.deleteTask(task);
              },
            );
          },
        );
      },
    );
  }
}
