import 'package:flutter/material.dart';
import 'router/app_router.dart';
import 'screens/dashboard_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Everyday Life',
      onGenerateRoute: AppRouter.generateRoute,
      initialRoute: DashboardScreen.routeName,
      home: const DashboardScreen(),
    );
  }
}
