import 'package:flutter/material.dart';
import 'package:get_it_done_app/screen/calendar_screen.dart';
import 'package:get_it_done_app/screen/home_screen.dart';
import 'color_schemes.g.dart';

import 'bloc/bloc_import.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<BottomNavigationBarBloc>(
          create: (context) => BottomNavigationBarBloc(),
        ),
        BlocProvider<TaskBloc>(
          create: (context) => TaskBloc(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
        darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
        themeMode: ThemeMode.light, // Default is system
        home: const BottomNavigationHandler(),
      ),
    );
  }
}

class BottomNavigationHandler extends StatelessWidget {
  const BottomNavigationHandler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavigationBarBloc, BottomNavigationBarState>(
      builder: (context, state) {
        if (state is ActiveScreenChangedState) {
          switch (state.activeScreenIndex) {
            case 0:
              return HomeScreen();
            case 1:
              return CalendarScreen();

            default:
              return Container();
          }
        }
        return Container();
      },
    );
  }
}
