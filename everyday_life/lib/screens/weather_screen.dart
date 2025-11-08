import 'package:flutter/material.dart';

class WeatherScreen extends StatelessWidget {
  static const String routeName = '/weather';

  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Weather')),
      body: const Center(child: Text('This is the Weather Screen')),
    );
  }
}
