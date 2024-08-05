import 'package:flutter/material.dart';
import 'package:reciply/core/utils/app_colors.dart';
import 'package:reciply/core/utils/app_styles.dart';
import 'package:reciply/core/models/recipe_model/meal_model.dart';

class MealProcedure extends StatefulWidget {
  const MealProcedure({super.key, required this.mealModel});
  final MealModel mealModel;
  @override
  State<MealProcedure> createState() => _MealProcedureState();
}

class _MealProcedureState extends State<MealProcedure>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> fadeAnimation;
  @override
  void initState() {
    super.initState();
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
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: fadeAnimation,
      builder: (BuildContext context, Widget? child) => FadeTransition(
        opacity: fadeAnimation,
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.f1Color,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15.0,
              vertical: 18,
            ),
            child: Text(
              (widget.mealModel.strInstructions != null)
                  ? widget.mealModel.strInstructions!
                  : "No Published Procedure Yet",
              style: AppStyles.semiBold16(context),
            ),
          ),
        ),
      ),
    );
  }
}
