import 'package:flutter/material.dart';
import 'package:todaydo/task.dart';
import 'package:todaydo/task_data.dart';
import 'package:todaydo/widgets/tasks_list.dart';
import 'package:provider/provider.dart';

import 'add_task.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: ((context) => SingleChildScrollView(
                    child: Container(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom),
                        child: AddTask((newTaskTitle) {
                          // setState(() {
                          //   tasks.add((Task(name: newTaskTitle)));
                          //   Navigator.pop(context);
                          // });
                        })))));
          },
          backgroundColor: Colors.indigo[400],
          child: Icon(Icons.add)),
      backgroundColor: Colors.teal[400],
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 60, left: 20, right: 20, bottom: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.playlist_add_check, size: 40, color: Colors.white),
                  SizedBox(width: 20),
                  Text("ToDayDo",
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                          fontWeight: FontWeight.bold))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text("${context.watch<TaskData>().tasks.length} tasks",
                  style: TextStyle(color: Colors.white, fontSize: 18)),
              SizedBox(
                height: 15,
              ),
              Container(
                child: TasksList(),
                height: MediaQuery.of(context).size.height - 200,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
