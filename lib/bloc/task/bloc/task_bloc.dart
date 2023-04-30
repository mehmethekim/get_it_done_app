import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../models/task.dart';

part 'task_event.dart';
part 'task_state.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  TaskBloc() : super(const TaskState()) {
    on<AddTaskEvent>(_onAddTaskEvent);

    on<UpdateTaskEvent>(_onUpdateTaskEvent);

    on<CompleteTaskEvent>(_onCompleteTaskEvent);

    on<DeleteTaskEvent>(_onDeleteTaskEvent);
  }
  void _onAddTaskEvent(AddTaskEvent event, Emitter<TaskState> emit) {
    emit(TaskState(
      allTaskList: List.from(state.allTaskList)..add(event.task),
      unprocessedTaskList: List.from(state.unprocessedTaskList)
        ..add(event.task),
    ));
  }

  void _onUpdateTaskEvent(UpdateTaskEvent event, Emitter<TaskState> emit) {}
  void _onCompleteTaskEvent(CompleteTaskEvent event, Emitter<TaskState> emit) {}
  void _onDeleteTaskEvent(DeleteTaskEvent event, Emitter<TaskState> emit) {}
}
