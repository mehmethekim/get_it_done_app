part of 'task_bloc.dart';

class TaskState extends Equatable {
  final List<PrimitiveTask> allTaskList;
  final List<PrimitiveTask> unprocessedTaskList;
  final List<PrimitiveTask> nextActionTaskList;
  final List<PrimitiveTask> calendarTaskList;
  final List<PrimitiveTask> waitingTaskList;

  const TaskState(
      {this.allTaskList = const <PrimitiveTask>[],
      this.unprocessedTaskList = const <PrimitiveTask>[],
      this.nextActionTaskList = const <PrimitiveTask>[],
      this.calendarTaskList = const <PrimitiveTask>[],
      this.waitingTaskList = const <PrimitiveTask>[]});

  @override
  List<Object> get props => [
        allTaskList,
        unprocessedTaskList,
        nextActionTaskList,
        calendarTaskList,
        waitingTaskList
      ];
}

class TaskInitial extends TaskState {}
