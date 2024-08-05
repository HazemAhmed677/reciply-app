import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:reciply/core/utils/app_routers.dart';
import 'package:reciply/core/utils/app_styles.dart';
import 'package:reciply/features/search/presnetation/manager/fetch_searched_meals_cubit/fetch_searched_meals_cubit.dart';
import 'package:reciply/features/search/presnetation/views/widgets/grid_view_of_search.dart';
import 'package:reciply/features/search/presnetation/views/widgets/searhced_item.dart';

class IntegrateSearch extends StatelessWidget {
  const IntegrateSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchSearchedMealsCubit, FetchSearchedMealsState>(
        builder: (context, state) {
      if (state is FetchSearchedMealsLoading) {
        return const SliverToBoxAdapter(
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: CircularProgressIndicator(),
            ),
          ),
        );
      } else if (state is FetchSearchedMealsSuccess) {
        var meals = state.recipesModel.meals;
        return SliverPadding(
          padding: const EdgeInsets.only(top: 20.0),
          sliver: SliverAnimatedGrid(
            initialItemCount: meals?.length ?? 0,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
            ),
            itemBuilder: (context, index, animatable) => InkWell(
              borderRadius: BorderRadius.circular(
                16,
              ),
              onTap: () async {
                await GoRouter.of(context)
                    .push(AppRouters.recipeInfoID, extra: meals[index]);
              },
              child: SearhcedItem(
                mealModel: meals![index],
              ),
            ),
          ),
        );
      } else if (state is FetchSearchedMealsFailure) {
        return SliverToBoxAdapter(
          child: Center(
            child: Text(
              state.errorMsg,
              style: AppStyles.regular16(context),
            ),
          ),
        );
      } else {
        return const GridViewOfSearch();
        // return const GridViewOfSearch();
      }
    });
  }
}
