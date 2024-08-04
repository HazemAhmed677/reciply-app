import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:reciply/core/utils/app_colors.dart';
import 'package:reciply/core/utils/app_routers.dart';
import 'package:reciply/core/utils/app_styles.dart';
import 'package:reciply/features/home/data/models/categorized_meals_model/categorized_meal.dart';
import 'package:reciply/features/home/presentation/manager/fetch_meal_by_id_cubit/fetch_meal_by_id_cubit.dart';
import 'package:reciply/features/home/presentation/views/widgets/pupolar_stack.dart';

class ActiveCategorizedDish extends StatelessWidget {
  const ActiveCategorizedDish({
    super.key,
    required this.categorizedMeal,
  });

  final CategorizedMeal categorizedMeal;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FetchMealByIdCubit, FetchMealByIdState>(
        listener: (BuildContext context, FetchMealByIdState state) {
      if (state is FetchMealByIDSuccess) {
        GoRouter.of(context)
            .push(AppRouters.recipeInfoID, extra: state.recipesModel.meals![0]);
      }
    }, builder: (context, state) {
      if (state is FetchMealByIDLoading) {
      } else if (state is FetchMealByIDFailure) {
        return Text(
          state.errorMsg,
          style: AppStyles.regular16(context),
        );
      }
      return PupolarDishStack(
        categorizedMeal: categorizedMeal,
      );
    });
  }
}
