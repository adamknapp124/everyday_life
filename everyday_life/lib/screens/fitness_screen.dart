import 'package:flutter/material.dart';
import '../constants/colors.dart';

class FitnessScreen extends StatelessWidget {
  static const String routeName = '/fitness';

  const FitnessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text('Everyday Life'), Text('Fitness')],
        ),
        backgroundColor: AppColors.secondary,
        titleTextStyle: const TextStyle(
          color: AppColors.textPrimary,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: const Center(child: Text('This is the Fitness Screen')),
    );
  }
}
