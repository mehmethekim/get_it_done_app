import 'package:equatable/equatable.dart';

class PrimitiveTask extends Equatable {
  final String title;
  bool? isDone;
  bool? isDeleted;

  PrimitiveTask({
    required this.title,
    this.isDone = false,
    this.isDeleted = false,
  });

  PrimitiveTask copyWith({
    String? title,
    bool? isDone,
    bool? isDeleted,
  }) {
    return PrimitiveTask(
      title: title ?? this.title,
      isDone: isDone ?? this.isDone,
      isDeleted: isDeleted ?? this.isDeleted,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'isDone': isDone,
      'isDeleted': isDeleted,
    };
  }

  factory PrimitiveTask.fromMap(Map<String, dynamic> map) {
    return PrimitiveTask(
      title: map['title'] as String,
      isDone: map['isDone'] != null ? map['isDone'] as bool : null,
      isDeleted: map['isDeleted'] != null ? map['isDeleted'] as bool : null,
    );
  }

  @override
  List<Object?> get props => [title, isDone, isDeleted];
}
