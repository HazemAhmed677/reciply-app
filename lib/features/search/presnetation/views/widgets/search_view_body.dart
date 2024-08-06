import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reciply/core/utils/app_styles.dart';
import 'package:reciply/features/search/presnetation/manager/fetch_searched_meals_cubit/fetch_searched_meals_cubit.dart';
import 'package:reciply/features/search/presnetation/views/widgets/recent_search_view.dart';
import 'package:reciply/features/search/presnetation/views/widgets/result_search.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchSearchedMealsCubit, FetchSearchedMealsState>(
        builder: (context, state) {
      //// shimmer here
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
        return ResultSearch(
          meals: state.recipesModel.meals,
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
        return const RecentSearchView();
      }
    });
  }
}
