import 'package:flutter/material.dart';
import '../router/app_router.dart';
import '../router/routes.dart';

class DashboardScreen extends StatelessWidget {
  static const String routeName = '/';

  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final routesToShow = appRoutes.entries
        .where((entry) => entry.key != DashboardScreen.routeName)
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: routesToShow.length,
          itemBuilder: (context, index) {
            final route = routesToShow[index];

            return Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 32.0,
              ),
              child: ElevatedButton(
                onPressed: () {
                  AppRouter.navigateTo(context, route.key);
                },
                child: Text(
                  _formatRouteName(route.key),
                  style: const TextStyle(fontSize: 18),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  String _formatRouteName(String route) {
    if (route == '/') return 'Dashboard';
    final name = route.replaceAll('/', '');
    return '${name[0].toUpperCase()}${name.substring(1)}';
  }
}
