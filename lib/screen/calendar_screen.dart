import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../bloc/bloc_import.dart';
import '../models/bottom_navigation_bar.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: const Center(
          child: Text(
            "Calendar Screen",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: CupertinoColors.activeBlue,
            ),
          ),
        ),
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
