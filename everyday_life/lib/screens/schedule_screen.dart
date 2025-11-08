import 'package:flutter/material.dart';

class ScheduleScreen extends StatelessWidget {
  static const String routeName = '/schedule';

  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Schedule')),
      body: const Center(child: Text('This is the Schedule Screen')),
    );
  }
}
