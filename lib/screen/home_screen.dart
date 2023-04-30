import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it_done_app/widgets/task_list.dart';
import '../bloc/bloc_import.dart';
import '../widgets/bottom_navigation_bar.dart';
import '../models/task.dart';
import '../color_schemes.g.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  void _addTask(BuildContext context) {
    print("Task added");
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[Text('Modal BottomSheet')],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Unprocessed Tasks'),
        backgroundColor: lightColorScheme.primaryContainer,
        foregroundColor: lightColorScheme.onPrimaryContainer,
      ),
      body: Column(
        children: [
          BlocBuilder<TaskBloc, TaskState>(
            builder: (context, state) {
              List<PrimitiveTask> unprocessed_task_list =
                  state.unprocessedTaskList;
              return TaskList(UnprocessedTaskList: unprocessed_task_list);
            },
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          CupertinoIcons.add_circled_solid,
          color: lightColorScheme.onPrimaryContainer,
        ),
        onPressed: () {
          // Add your onPressed code here!
          _addTask(context);
        },
      ),
      bottomNavigationBar: SafeArea(
        child: BlocBuilder<BottomNavigationBarBloc, BottomNavigationBarState>(
          builder: (context, state) {
            return CustomBottomNavigationBar();
          },
        ),
      ),
    );
  }
}
