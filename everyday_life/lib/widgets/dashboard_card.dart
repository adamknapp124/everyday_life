import 'package:flutter/material.dart';
import '../constants/colors.dart';

class DashboardCard extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;
  final Color textColor;

  const DashboardCard({
    super.key,
    required this.title,
    this.onTap,
    this.textColor = AppColors.primary,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
