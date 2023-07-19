import 'package:flutter/material.dart';
import 'package:todaydo/widgets/task_tile.dart';
import 'package:todaydo/taskscreen.dart';
import 'package:provider/provider.dart';
import '../task.dart';
import '../task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
          itemCount: taskData.tasks.length,
          itemBuilder: (context, index) {
            return TasksTile(
              isChecked: taskData.tasks[index].isDone,
              TaskTitle: taskData.tasks[index].name,
              checkBoxChange: (newValue) {
                taskData.upDateTask(taskData.tasks[index]);
              },
              lisTileDelete: () {
                taskData.deleteTask(taskData.tasks[index]);
              },
            );
          });
    });
  }
}
