import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reciply/features/home/data/models/recipe_model/meal.dart';
import 'package:reciply/features/home/presentation/manager/ingrediants_and_procedure_cubit/ingrediants_and_procedure_cubit.dart';
import 'package:reciply/features/home/presentation/views/widgets/integrate_ingred_and_proced_cubit.dart';
import 'package:reciply/features/home/presentation/views/widgets/item_info_middle_section.dart';
import 'package:reciply/features/home/presentation/views/widgets/title_of_info_view.dart';

class RecipeInfoBody extends StatelessWidget {
  const RecipeInfoBody({super.key, required this.mealModel});
  final MealModel mealModel;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => IngrediantsAndProcedureCubit(),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
          ),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                  child: TitleOfInfoView(
                mealModel: mealModel,
              )),
              const SliverToBoxAdapter(child: ItemInfoMiddleSection()),
              IntegrateIngredAndProcedCubit(
                mealModel: mealModel,
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
