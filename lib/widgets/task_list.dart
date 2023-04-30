import 'package:flutter/material.dart';
import 'package:get_it_done_app/models/task.dart';

class TaskList extends StatelessWidget {
  const TaskList({
    super.key,
    required this.UnprocessedTaskList,
  });

  final List<PrimitiveTask> UnprocessedTaskList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemBuilder: (context, index) {
            var task = UnprocessedTaskList[index];
            return ListTile(
              title: Text(task.title),
              trailing: Checkbox(value: task.isDone, onChanged: (value) {}),
            );
          },
          itemCount: UnprocessedTaskList.length),
    );
  }
}
