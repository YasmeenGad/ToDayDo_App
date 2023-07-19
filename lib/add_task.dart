import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'task_data.dart';

class AddTask extends StatelessWidget {
  final Function addTaskScreen;
  const AddTask(this.addTaskScreen);

  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Add Task",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.indigo[400]),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newText) {
              newTaskTitle = newText;
            },
          ),
          SizedBox(
            height: 30,
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.teal[400],
              primary: Colors.white,
            ),
            child: Text(
              "Add",
              style: TextStyle(fontSize: 20),
            ),
            onPressed: () {
              context.read<TaskData>().addTask(newTaskTitle!);
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
