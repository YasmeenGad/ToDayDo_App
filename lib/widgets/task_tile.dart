import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  final bool isChecked;
  final String TaskTitle;
  final Function(bool?) checkBoxChange;
  final Function() lisTileDelete;

  const TasksTile(
      {required this.isChecked,
      required this.TaskTitle,
      required this.checkBoxChange,
      required this.lisTileDelete});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(TaskTitle,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null)),
      trailing: Checkbox(
        activeColor: Colors.teal[400],
        value: isChecked,
        onChanged: checkBoxChange,
      ),
      onLongPress: lisTileDelete,
    );
  }
}
