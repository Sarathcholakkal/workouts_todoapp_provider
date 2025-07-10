import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

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
          TextField(autofocus: true, textAlign: TextAlign.center),
          SizedBox(height: 20),
          SizedBox(
            height: 40,
            width: 200,
            child: TextButton(
              onPressed: () {},
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
