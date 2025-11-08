import 'package:flutter/material.dart';

class FitnessScreen extends StatelessWidget {
  static const String routeName = '/fitness';

  const FitnessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Fitness')),
      body: const Center(child: Text('This is the Fitness Screen')),
    );
  }
}
