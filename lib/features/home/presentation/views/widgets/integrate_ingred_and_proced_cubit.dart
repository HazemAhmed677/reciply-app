import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reciply/features/home/data/models/recipe_model/meal.dart';
import 'package:reciply/features/home/presentation/manager/ingrediants_and_procedure_cubit/ingrediants_and_procedure_cubit.dart';
import 'package:reciply/features/home/presentation/views/widgets/ingrediants_list_view.dart';
import 'package:reciply/features/home/presentation/views/widgets/meal_procedure.dart';

class IntegrateIngredAndProcedCubit extends StatelessWidget {
  const IntegrateIngredAndProcedCubit({super.key, required this.mealModel});
  final MealModel mealModel;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: BlocBuilder<IngrediantsAndProcedureCubit,
          IngrediantsAndProcedureState>(
        builder: (context, state) => (state is ProcedureState)
            ? MealProcedure(
                mealModel: mealModel,
              )
            : IngrediantsListView(
                mealModel: mealModel,
              ),
      ),
    );
  }
}
