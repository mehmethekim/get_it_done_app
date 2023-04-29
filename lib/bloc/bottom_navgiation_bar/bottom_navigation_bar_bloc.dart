import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'bottom_navigation_bar_event.dart';
part 'bottom_navigation_bar_state.dart';

class BottomNavigationBarBloc
    extends Bloc<BottomNavigationBarEvent, BottomNavigationBarState> {
  BottomNavigationBarBloc() : super(BottomNavigationBarInitial()) {
    on<HomeButtonClickEvent>((event, emit) {
      print("Clicked Home button");
    });
    on<UserButtonClickEvent>((event, emit) {
      print("Clicked User button");
    });
    on<SettingsButtonClickEvent>((event, emit) {
      print("Clicked Settings button");
    });
    on<SearchButtonClickEvent>((event, emit) {
      print("Clicked Search button");
    });
    on<BellButtonClickEvent>((event, emit) {
      print("Clicked Bell button");
    });
  }
}
