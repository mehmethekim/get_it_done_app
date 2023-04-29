import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../bloc/bloc_import.dart';
import '../models/bottom_navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  width: 50, // Set your desired width here
                  height: 50, // Set your desired height here
                  decoration: BoxDecoration(
                    color: CupertinoColors.activeBlue,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Icon(
                    CupertinoIcons.add_circled_solid,
                    color: CupertinoColors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
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
