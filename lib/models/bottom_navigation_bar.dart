import 'package:flutter/cupertino.dart';
import 'package:rive/rive.dart';
import 'package:flutter/material.dart';
import '../bloc/bloc_import.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      //padding: EdgeInsets.only(bottom: 30),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 66, 93, 126),
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            child: CupertinoButton(
              onPressed: () => context
                  .read<BottomNavigationBarBloc>()
                  .add(HomeButtonClickEvent()),
              child: const Icon(
                CupertinoIcons.home,
                color: CupertinoColors.white,
              ),
            ),
          ),
          const Spacer(),
          SizedBox(
            child: CupertinoButton(
              onPressed: () => context
                  .read<BottomNavigationBarBloc>()
                  .add(CalendarButtonClickEvent()),
              child: const Icon(
                CupertinoIcons.calendar,
                color: CupertinoColors.white,
              ),
            ),
          ),
          const Spacer(),
          SizedBox(
            child: CupertinoButton(
              onPressed: () => context
                  .read<BottomNavigationBarBloc>()
                  .add(NextButtonClickEvent()),
              child: const Icon(
                CupertinoIcons.arrow_right_circle_fill,
                color: CupertinoColors.white,
              ),
            ),
          ),
          const Spacer(),
          SizedBox(
            child: CupertinoButton(
              onPressed: () => context
                  .read<BottomNavigationBarBloc>()
                  .add(ListButtonClickEvent()),
              child: const Icon(
                CupertinoIcons.square_list,
                color: CupertinoColors.white,
              ),
            ),
          ),
          const Spacer(),
          SizedBox(
            child: CupertinoButton(
              onPressed: () => context
                  .read<BottomNavigationBarBloc>()
                  .add(ReviewButtonClickEvent()),
              child: const Icon(
                CupertinoIcons.book,
                color: CupertinoColors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
