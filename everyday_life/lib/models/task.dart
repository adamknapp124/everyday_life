// lib/models/task.dart
import 'package:flutter/foundation.dart';

class Task {
  final String id;
  final String title;
  final String category;
  final DateTime? dueDate;
  bool completed;

  Task({
    required this.id,
    required this.title,
    required this.category,
    this.dueDate,
    this.completed = false,
  });
}
