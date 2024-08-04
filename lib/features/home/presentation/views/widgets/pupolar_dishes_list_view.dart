import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reciply/core/utils/app_styles.dart';
import 'package:reciply/features/home/presentation/manager/fetch_categorized_meals_cubit/fetch_categorized_meals_cubit.dart';
import 'package:reciply/features/home/presentation/views/widgets/pupolar_stack.dart';

class PupolarDishesListView extends StatelessWidget {
  const PupolarDishesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 76,
      ),
      child: SizedBox(
        height: 204,
        child:
            BlocBuilder<FetchCategorizedMealsCubit, FetchCategorizedMealsState>(
          builder: (context, state) {
            if (state is FetchCategorizedMealsLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is FetchCategorizedMealsSuccess) {
              return ListView.builder(
                physics: const BouncingScrollPhysics(),
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                itemCount: 8,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.only(
                    right: (index != 7) ? 16 : 0,
                  ),
                  child: const PupolarDishStack(),
                ),
              );
            } else if (state is FetchCategorizedMealsFailure) {
              return Text(
                state.errorMsg,
                style: AppStyles.regular16(context),
              );
            } else {
              return const SizedBox();
            }
          },
        ),
      ),
    );
  }
}
