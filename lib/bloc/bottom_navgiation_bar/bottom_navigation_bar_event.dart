part of 'bottom_navigation_bar_bloc.dart';

abstract class BottomNavigationBarEvent {}

class HomeButtonClickEvent extends BottomNavigationBarEvent {}

class BellButtonClickEvent extends BottomNavigationBarEvent {}

class SettingsButtonClickEvent extends BottomNavigationBarEvent {}

class SearchButtonClickEvent extends BottomNavigationBarEvent {}

class UserButtonClickEvent extends BottomNavigationBarEvent {}
