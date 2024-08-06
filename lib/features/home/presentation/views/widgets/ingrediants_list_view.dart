import 'package:flutter/material.dart';
import 'package:reciply/core/models/recipe_model/meal_model.dart';
import 'package:reciply/features/home/presentation/views/widgets/ingrediant_item.dart';

class IngrediantsListView extends StatefulWidget {
  const IngrediantsListView({super.key, required this.mealModel});
  final MealModel mealModel;
  @override
  State<IngrediantsListView> createState() => _IngrediantsListViewState();
}

class _IngrediantsListViewState extends State<IngrediantsListView>
    with SingleTickerProviderStateMixin {
  late List<String> ingrediants;
  late AnimationController animationController;
  late Animation<double> fadeAnimation;

  @override
  void initState() {
    super.initState();
    ingrediants = widget.mealModel.compressAllValidIngrediants();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 500,
      ),
    );
    fadeAnimation =
        Tween<double>(begin: 0, end: 1).animate(animationController);
    animationController.forward();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: fadeAnimation,
      builder: (BuildContext context, Widget? child) => FadeTransition(
        opacity: fadeAnimation,
        child: ListView.builder(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: ingrediants.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(bottom: 14.0),
            child: IngrediantItem(
              ingrediantItem: ingrediants[index],
            ),
          ),
        ),
      ),
    );
  }
}
