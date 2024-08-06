import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reciply/core/utils/app_styles.dart';
import 'package:reciply/features/saved/presentation/manager/fetch_all_meals_cubit/fetch_all_meals_cubit.dart';
import 'package:reciply/features/saved/presentation/views/widgets/saved_item.dart';

class SaveMealsListView extends StatelessWidget {
  const SaveMealsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchAllMealsCubit, FetchAllMealsCubitState>(
      builder: (context, state) {
        if (state is FetchAllMealsLoading) {
          return const SliverToBoxAdapter(
              child: Center(child: CircularProgressIndicator()));
        } else if (state is FetchAllMealsSuccess) {
          var meals = state.mealsList;
          return (meals.isEmpty)
              ? SliverToBoxAdapter(
                  child: Text(
                  'No recipes saved yet',
                  style: AppStyles.regular16(context),
                ))
              : SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) => SavedItem(
                      aspectRatio: 315 / 178,
                      mealModel: meals[index],
                    ),
                    childCount: meals.length,
                  ),
                );
        } else if (state is FetchAllMealsFailure) {
          return SliverToBoxAdapter(
            child: Center(
              child: Text(state.errorMessege),
            ),
          );
        } else {
          return const SliverToBoxAdapter();
        }
      },
    );
  }
}
