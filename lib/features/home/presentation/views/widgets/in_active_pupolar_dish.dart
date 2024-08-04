import 'package:flutter/material.dart';
import 'package:reciply/features/home/data/models/categorized_meals_model/categorized_meal.dart';
import 'package:reciply/features/home/presentation/views/widgets/pupolar_stack.dart';

class InActivePupolarDish extends StatelessWidget {
  const InActivePupolarDish({super.key, required this.categorizedMeal});
  final CategorizedMeal categorizedMeal;

  @override
  Widget build(BuildContext context) {
    return PupolarDishStack(
      categorizedMeal: categorizedMeal,
    );
  }
}
