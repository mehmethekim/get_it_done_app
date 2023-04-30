import 'package:flutter/cupertino.dart';
import 'package:rive/rive.dart';
import 'package:flutter/material.dart';
import '../bloc/bloc_import.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:get_it_done_app/color_schemes.g.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      //padding: EdgeInsets.only(bottom: 30),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        color: lightColorScheme.primaryContainer,
        borderRadius: const BorderRadius.all(Radius.circular(30)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            child: CupertinoButton(
              onPressed: () => context
                  .read<BottomNavigationBarBloc>()
                  .add(HomeButtonClickEvent()),
              child: Icon(
                CupertinoIcons.home,
                color: lightColorScheme.onPrimaryContainer,
              ),
            ),
          ),
          const Spacer(),
          SizedBox(
            child: CupertinoButton(
              onPressed: () => context
                  .read<BottomNavigationBarBloc>()
                  .add(CalendarButtonClickEvent()),
              child: Icon(
                CupertinoIcons.calendar,
                color: lightColorScheme.onPrimaryContainer,
              ),
            ),
          ),
          const Spacer(),
          SizedBox(
            child: CupertinoButton(
              onPressed: () => context
                  .read<BottomNavigationBarBloc>()
                  .add(NextButtonClickEvent()),
              child: Icon(
                CupertinoIcons.arrow_right_circle,
                color: lightColorScheme.onPrimaryContainer,
              ),
            ),
          ),
          const Spacer(),
          SizedBox(
            child: CupertinoButton(
              onPressed: () => context
                  .read<BottomNavigationBarBloc>()
                  .add(ListButtonClickEvent()),
              child: Icon(
                CupertinoIcons.square_list,
                color: lightColorScheme.onPrimaryContainer,
              ),
            ),
          ),
          const Spacer(),
          SizedBox(
            child: CupertinoButton(
              onPressed: () => context
                  .read<BottomNavigationBarBloc>()
                  .add(ReviewButtonClickEvent()),
              child: Icon(
                CupertinoIcons.book,
                color: lightColorScheme.onPrimaryContainer,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
