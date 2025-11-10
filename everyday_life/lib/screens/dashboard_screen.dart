import 'package:flutter/material.dart';
import '../router/app_router.dart';
import '../router/routes.dart';
import '../widgets/dashboard_card.dart';
import '../utils/capitalize_string.dart';
import '../constants/colors.dart';

class DashboardScreen extends StatelessWidget {
  static const String routeName = '/';

  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final routesToShow = appRoutes.entries
        .where((entry) => entry.key != DashboardScreen.routeName)
        .toList();

    // Example upcoming events data
    final upcomingEvents = [
      {'title': 'Team Meeting', 'date': 'Nov 12, 2025'},
      {'title': 'Workout', 'date': 'Nov 13, 2025'},
      {'title': 'Grocery Shopping', 'date': 'Nov 15, 2025'},
    ];

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Center(child: Text('Everyday Life')),
        backgroundColor: AppColors.primary,
        titleTextStyle: const TextStyle(
          color: AppColors.textPrimary,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // 👇 Widget above the GridView
            Text(
              'Upcoming Events',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppColors.secondary,
              ),
            ),
            const SizedBox(height: 8),
            Container(
              decoration: BoxDecoration(
                color: AppColors.background,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.secondary,
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: upcomingEvents.length,
                itemBuilder: (context, index) {
                  final event = upcomingEvents[index];
                  return ListTile(
                    leading: const Icon(Icons.event, color: AppColors.primary),
                    title: Text(
                      event['title']!,
                      style: const TextStyle(fontWeight: FontWeight.w600),
                    ),
                    subtitle: Text(event['date']!),
                    dense: true,
                  );
                },
              ),
            ),

            const SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                itemCount: routesToShow.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  childAspectRatio: 1,
                ),
                itemBuilder: (context, index) {
                  final routeName = routesToShow[index].key;
                  final title = routeName.replaceAll('/', '').isEmpty
                      ? 'Dashboard'
                      : routeName.replaceAll('/', '').toCapitalize();

                  return DashboardCard(
                    title: title,
                    onTap: () => AppRouter.navigateTo(context, routeName),
                    textColor: AppColors.primary,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
