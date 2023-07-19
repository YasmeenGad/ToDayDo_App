import "package:flutter/material.dart";
import "package:todaydo/task_data.dart";
import "package:todaydo/taskscreen.dart";
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => TaskData(),
        child: MaterialApp(
            debugShowCheckedModeBanner: false, home: TasksScreen()));
  }
}
