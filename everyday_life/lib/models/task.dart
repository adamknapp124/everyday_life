// lib/models/task.dart

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

// Example upcoming events data
final List<Map<String, String>> upcomingEvents = [
  {'title': 'Poop', 'date': 'Nov 12, 2025'},
  {'title': 'Workout', 'date': 'Nov 13, 2025'},
  {'title': 'Grocery Shopping', 'date': 'Nov 15, 2025'},
];
