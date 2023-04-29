part of 'bottom_navigation_bar_bloc.dart';

class BottomNavigationBarState extends Equatable {
  const BottomNavigationBarState();

  @override
  List<Object> get props => [];
}

class BottomNavigationBarInitial extends BottomNavigationBarState {}

class ActiveScreenChangedState extends BottomNavigationBarState {
  final int activeScreenIndex;

  const ActiveScreenChangedState(this.activeScreenIndex);

  @override
  List<Object> get props => [activeScreenIndex];
}
