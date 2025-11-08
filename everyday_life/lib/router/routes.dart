import 'package:flutter/material.dart';
import '../screens/dashboard_screen.dart';
import '../screens/schedule_screen.dart';
import '../screens/fitness_screen.dart';
import '../screens/weather_screen.dart';
import '../screens/grocery_screen.dart';
import '../screens/recipe_screen.dart';

final Map<String, WidgetBuilder> appRoutes = {
  DashboardScreen.routeName: (context) => const DashboardScreen(),
  ScheduleScreen.routeName: (context) => const ScheduleScreen(),
  FitnessScreen.routeName: (context) => const FitnessScreen(),
  WeatherScreen.routeName: (context) => const WeatherScreen(),
  GroceryScreen.routeName: (context) => const GroceryScreen(),
  RecipeScreen.routeName: (context) => const RecipeScreen(),
};
