part of 'task_bloc.dart';

/// Tasks can be dynamically added using the (+) button on the bottom-right of the screen.
/// After pressing the button, user will enter task name description and it will be added to the unprocessed tasks list.
///
/// After adding, user can press (:) button to process the task. Processing means defining the due date and time for the task.
/// This event is update task event. Task will be moved from the unprocessed task list to next action list.
///
/// Tasks can be completed. Completed tasks will be moved for review.
///
/// After reviewing, tasks can be deleted. They will be moved to trash bin.
///
/// If wanted trash bin can be emptied, which deletes the tasks permenantly.
///
///
abstract class TaskEvent extends Equatable {
  const TaskEvent();

  @override
  List<Object> get props => [];
}

class AddTaskEvent extends TaskEvent {
  final PrimitiveTask task;

  const AddTaskEvent({required this.task});

  @override
  List<Object> get props => [task];
}

class UpdateTaskEvent extends TaskEvent {
  final PrimitiveTask task;

  const UpdateTaskEvent({required this.task});

  @override
  List<Object> get props => [task];
}

class CompleteTaskEvent extends TaskEvent {
  final PrimitiveTask task;

  const CompleteTaskEvent({required this.task});

  @override
  List<Object> get props => [task];
}

class DeleteTaskEvent extends TaskEvent {
  final PrimitiveTask task;

  const DeleteTaskEvent({required this.task});

  @override
  List<Object> get props => [task];
}
