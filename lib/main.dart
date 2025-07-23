import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/model/task_data.dart';
import 'package:todoapp/task_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: TaskScreen(),
      ),
    );
  }
}
