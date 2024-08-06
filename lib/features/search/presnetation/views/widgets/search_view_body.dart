import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reciply/core/utils/app_styles.dart';
import 'package:reciply/features/search/presnetation/manager/fetch_searched_meals_cubit/fetch_searched_meals_cubit.dart';
import 'package:reciply/features/search/presnetation/views/widgets/loading_result_search.dart';
import 'package:reciply/features/search/presnetation/views/widgets/recent_search_view.dart';
import 'package:reciply/features/search/presnetation/views/widgets/result_search_view.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: BlocBuilder<FetchSearchedMealsCubit, FetchSearchedMealsState>(
          builder: (context, state) {
        //// shimmer here
        if (state is FetchSearchedMealsLoading) {
          return const LoadingResultSearch();
        } else if (state is FetchSearchedMealsSuccess) {
          return ResultSearchView(
            meals: state.recipesModel.meals,
          );
        } else if (state is FetchSearchedMealsFailure) {
          return Center(
            child: Text(
              state.errorMsg,
              style: AppStyles.regular16(context),
            ),
          );
        } else {
          return const RecentSearchView();
        }
      }),
    );
  }
}
