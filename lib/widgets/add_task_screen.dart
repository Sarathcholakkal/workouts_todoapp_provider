import 'package:flutter/material.dart';

class AddTaskScreen extends StatefulWidget {
  final Function(String) addTaskCallback;

  const AddTaskScreen({super.key, required this.addTaskCallback});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  String newTaskTitle = "";
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: Column(
        children: [
          Text(
            'Add Task',
            style: TextStyle(fontSize: 30.0, color: Colors.lightBlueAccent),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newText) {
              setState(() {
                print(newText);
                newTaskTitle = newText;
              });
            },
          ),
          SizedBox(height: 20),
          SizedBox(
            height: 40,
            width: 200,
            child: TextButton(
              onPressed: () {
                widget.addTaskCallback(newTaskTitle);
                Navigator.pop(context);
              },
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.lightBlueAccent, // text color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero, // no rounded corners
                ),
              ),
              child: Text('Add'),
            ),
          ),
        ],
      ),
    );
  }
}
