import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'bottom_navigation_bar_event.dart';
part 'bottom_navigation_bar_state.dart';

class BottomNavigationBarBloc
    extends Bloc<BottomNavigationBarEvent, BottomNavigationBarState> {
  BottomNavigationBarBloc() : super(BottomNavigationBarInitial()) {
    emit(const ActiveScreenChangedState(0)); // Set Home screen as initial state
    on<HomeButtonClickEvent>((event, emit) {
      print("Clicked Home button");
      emit(const ActiveScreenChangedState(0)); // 0 is the index of Home screen
    });
    on<CalendarButtonClickEvent>((event, emit) {
      emit(const ActiveScreenChangedState(1));
      print("Clicked Calendar button");
    });
    on<NextButtonClickEvent>((event, emit) {
      print("Clicked Next button");
    });
    on<ListButtonClickEvent>((event, emit) {
      print("Clicked List button");
    });
    on<ReviewButtonClickEvent>((event, emit) {
      print("Clicked Review button");
    });
  }
}
