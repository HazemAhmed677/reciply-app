import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reciply/core/utils/app_styles.dart';
import 'package:reciply/features/saved/presentation/manager/fetch_all_meals_cubit/fetch_all_meals_cubit.dart';
import 'package:reciply/features/saved/presentation/views/widgets/all_saved_widget.dart';

class SaveMealsListView extends StatefulWidget {
  const SaveMealsListView({
    super.key,
  });

  @override
  State<SaveMealsListView> createState() => _SaveMealsListViewState();
}

class _SaveMealsListViewState extends State<SaveMealsListView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchAllMealsCubit, FetchAllMealsCubitState>(
      builder: (context, state) {
        if (state is FetchAllMealsLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is FetchAllMealsSuccess) {
          var meals = state.mealsList;
          return (meals.isEmpty)
              ? Center(
                  child: Text(
                    'No recipes saved yet',
                    style: AppStyles.semiBold14(context),
                  ),
                )
              : AllSavedWidget(meals: meals);
        } else if (state is FetchAllMealsFailure) {
          return Center(
            child: Text(state.errorMessege),
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
