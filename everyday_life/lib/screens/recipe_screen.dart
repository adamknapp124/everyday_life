import 'package:flutter/material.dart';

class RecipeScreen extends StatelessWidget {
  static const String routeName = '/recipe';

  const RecipeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Recipe')),
      body: const Center(child: Text('This is the Recipe Screen')),
    );
  }
}
