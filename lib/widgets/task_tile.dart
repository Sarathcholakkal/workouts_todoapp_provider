import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  TaskTile({super.key});

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = true;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'this is task',
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: TaskCheckBox(
        toggleCheckboxState: (bool? chckboxState) {
          setState(() {
            isChecked = chckboxState!;
          });
        },
        checkBoxState: isChecked,
      ),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool checkBoxState;
  final void Function(bool?) toggleCheckboxState;

  const TaskCheckBox({
    super.key,
    required this.toggleCheckboxState,
    required this.checkBoxState,
  });

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkBoxState,
      onChanged: toggleCheckboxState,
    );
  }
}
