import 'package:flutter/material.dart';

class GroceryScreen extends StatelessWidget {
  static const String routeName = '/grocery';

  const GroceryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Grocery')),
      body: const Center(child: Text('This is the Grocery Screen')),
    );
  }
}
