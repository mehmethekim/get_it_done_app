import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../bloc/bloc_import.dart';
import '../models/bottom_navigation_bar.dart';
import '../models/task.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List<PrimitiveTask> UnprocessedTaskList = [
    PrimitiveTask(title: "Task1"),
    PrimitiveTask(title: "Task2"),
    PrimitiveTask(title: "Task3"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Unprocessed Tasks'),
        backgroundColor: Color.fromARGB(255, 66, 93, 126),
        foregroundColor: CupertinoColors.white,
      ),
      body: Stack(
        children: [
          Container(
            child: const Center(
              child: Text(
                "Home Screen",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: CupertinoColors.activeBlue,
                ),
              ),
            ),
          ),
          // Align(
          //   alignment: Alignment.bottomRight,
          //   child: Padding(
          //     padding: const EdgeInsets.all(30.0),
          //     child: GestureDetector(
          //       onTap: () {},
          //       child: Container(
          //         width: 50, // Set your desired width here
          //         height: 50, // Set your desired height here
          //         decoration: BoxDecoration(
          //           color: CupertinoColors.activeBlue,
          //           borderRadius: BorderRadius.circular(30.0),
          //         ),
          //         child: Icon(
          //           CupertinoIcons.add_circled_solid,
          //           color: CupertinoColors.white,
          //         ),
          //       ),
          //     ),
          //   ),
          // ),

          ListView.builder(
              itemBuilder: (context, index) {
                var task = UnprocessedTaskList[index];
                return ListTile(
                  title: Text(task.title),
                  trailing: Checkbox(value: task.isDone, onChanged: (value) {}),
                );
              },
              itemCount: UnprocessedTaskList.length)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          CupertinoIcons.add_circled_solid,
          color: CupertinoColors.white,
        ),
        onPressed: () {
          // Add your onPressed code here!
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
