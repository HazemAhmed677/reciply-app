import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:reciply/core/utils/app_routers.dart';
import 'package:reciply/core/utils/app_styles.dart';
import 'package:reciply/features/search/presnetation/manager/fetch_recent_search_cubit/fetch_recent_serch_meals_cubit.dart';
import 'package:reciply/features/search/presnetation/views/widgets/searhced_item.dart';

class GridViewOfSearch extends StatelessWidget {
  const GridViewOfSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchRecentSerchMealsCubit, FetchRecentSerchMealsState>(
      builder: (context, state) {
        if (state is FetchRecentSerchMealsLoading) {
          return const SliverToBoxAdapter(
              child: Center(child: CircularProgressIndicator()));
        } else if (state is FetchRecentSerchMealsSuccess) {
          var meals = state.recipesModel.meals;
          return (meals != null && meals.isNotEmpty)
              ? SliverAnimatedGrid(
                  initialItemCount: meals.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                  ),
                  itemBuilder: (context, index, animatable) => AnimatedBuilder(
                    animation: animatable,
                    builder: (context, _) => FadeTransition(
                      opacity: animatable,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(16),
                        onTap: () {
                          GoRouter.of(context).push(AppRouters.recipeInfoID,
                              extra: meals[index]);
                        },
                        child: SearhcedItem(
                          mealModel: meals[index],
                        ),
                      ),
                    ),
                  ),
                )
              : SliverToBoxAdapter(
                  child: Center(
                    child: Text(
                      'Meal is not found',
                      style: AppStyles.regular16(context),
                    ),
                  ),
                );
        } else if (state is FetchRecentSerchMealsFailure) {
          return SliverToBoxAdapter(
            child: Center(
              child: Text(
                state.errorMsg,
                style: AppStyles.regular16(context),
              ),
            ),
          );
        } else {
          return const SliverToBoxAdapter(child: SizedBox());
        }
      },
    );
  }
}
