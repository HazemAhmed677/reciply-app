import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reciply/core/utils/app_colors.dart';
import 'package:reciply/core/utils/app_styles.dart';
import 'package:reciply/features/home/presentation/manager/fetch_categorized_meals_cubit/fetch_categorized_meals_cubit.dart';
import 'package:reciply/features/home/presentation/manager/fetch_meal_by_id_cubit/fetch_meal_by_id_cubit.dart';
import 'package:reciply/features/home/presentation/views/widgets/categorized_dish_widget.dart';
import 'package:reciply/features/home/presentation/views/widgets/in_active_pupolar_dish.dart';

class PupolarDishesListView extends StatefulWidget {
  const PupolarDishesListView({super.key});

  @override
  State<PupolarDishesListView> createState() => _PupolarDishesListViewState();
}

class _PupolarDishesListViewState extends State<PupolarDishesListView> {
  int currentindex = -1;

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
              var listOfDishes = state.categorizedMealsModel.meals;
              return ListView.builder(
                physics: const BouncingScrollPhysics(),
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                itemCount: listOfDishes?.length ?? 0,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.only(
                    right: (index != listOfDishes!.length - 1) ? 16 : 0,
                  ),
                  child: InkWell(
                    splashColor: AppColors.e2Color,
                    borderRadius: BorderRadius.circular(
                      22,
                    ),
                    onTap: () async {
                      // carefull here
                      currentindex = index;
                      setState(() {});
                      await BlocProvider.of<FetchMealByIdCubit>(context)
                          .fetchMealByID(
                              id: int.parse(listOfDishes[index].idMeal!));
                    },
                    child: (currentindex == index)
                        ? ActiveCategorizedDish(
                            categorizedMeal: listOfDishes[index],
                          )
                        : InActivePupolarDish(
                            categorizedMeal: listOfDishes[index]),
                  ),
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
