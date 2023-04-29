import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

import '../bloc/bloc_import.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SafeArea(
        child: BlocBuilder<BottomNavigationBarBloc, BottomNavigationBarState>(
          builder: (context, state) {
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
                  GestureDetector(
                    onTap: () => context
                        .read<BottomNavigationBarBloc>()
                        .add(UserButtonClickEvent()),
                    child: const SizedBox(
                      height: 36,
                      width: 36,
                      child: RiveAnimation.asset(
                        'assets/RiveAssets/animated_icons.riv',
                        artboard: "USER",
                      ),
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () => context
                        .read<BottomNavigationBarBloc>()
                        .add(BellButtonClickEvent()),
                    child: const SizedBox(
                      height: 36,
                      width: 36,
                      child: RiveAnimation.asset(
                        'assets/RiveAssets/animated_icons.riv',
                        artboard: "BELL",
                      ),
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () => context
                        .read<BottomNavigationBarBloc>()
                        .add(HomeButtonClickEvent()),
                    child: const SizedBox(
                      height: 36,
                      width: 36,
                      child: RiveAnimation.asset(
                        'assets/RiveAssets/animated_icons.riv',
                        artboard: "HOME",
                      ),
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () => context
                        .read<BottomNavigationBarBloc>()
                        .add(SearchButtonClickEvent()),
                    child: const SizedBox(
                      height: 36,
                      width: 36,
                      child: RiveAnimation.asset(
                        'assets/RiveAssets/animated_icons.riv',
                        artboard: "SEARCH",
                      ),
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () => context
                        .read<BottomNavigationBarBloc>()
                        .add(SettingsButtonClickEvent()),
                    child: const SizedBox(
                      height: 36,
                      width: 36,
                      child: RiveAnimation.asset(
                        'assets/RiveAssets/animated_icons.riv',
                        artboard: "SETTINGS",
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
