import 'package:flutter/material.dart';
import 'package:reciply/features/home/data/models/recipe_model/meal_model.dart';
import 'package:reciply/features/home/presentation/views/widgets/recipe_info_body.dart';

class RecipeInfoView extends StatelessWidget {
  const RecipeInfoView({super.key, required this.mealModel});
  final MealModel mealModel;
  @override
  Widget build(BuildContext context) {
    return RecipeInfoBody(
      mealModel: mealModel,
    );
  }
}
