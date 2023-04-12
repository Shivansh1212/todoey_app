// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_constructors_in_immutables
import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function(bool?) checkBoxCallBack;
  final VoidCallback onlongPressCallBack;

  TaskTile({
    required this.isChecked,
    required this.taskTitle,
    required this.checkBoxCallBack,
    required this.onlongPressCallBack,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress:onlongPressCallBack,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: checkBoxCallBack),
    );
  }
}
