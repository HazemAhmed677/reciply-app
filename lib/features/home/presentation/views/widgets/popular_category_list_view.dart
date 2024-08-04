import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reciply/core/utils/app_styles.dart';
import 'package:reciply/features/home/presentation/manager/fetch_categorized_meals_cubit/fetch_categorized_meals_cubit.dart';
import 'package:reciply/features/home/presentation/manager/fetch_pupolar_categories.dart/fetch_pupolar_categories_cubit.dart';
import 'package:reciply/features/home/presentation/views/widgets/pupular_category_card.dart';

class PopularCategoryListView extends StatefulWidget {
  const PopularCategoryListView({super.key});

  @override
  State<PopularCategoryListView> createState() =>
      _PopularCategoryListViewState();
}

class _PopularCategoryListViewState extends State<PopularCategoryListView> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchPupolarCategoriesCubit,
        FetchPupolarCategoriesState>(
      builder: (context, state) {
        if (state is FetchPupolarCategoriesLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is FetchPupolarCategoriesSuccess) {
          var listOfCategories = state.categoriesModel.meals;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  (listOfCategories != null) ? listOfCategories.length : 0,
                  (index) => (listOfCategories![index].strCategory != null)
                      ? GestureDetector(
                          onTap: () async {
                            currentIndex = index;
                            setState(() {});
                            await BlocProvider.of<FetchCategorizedMealsCubit>(
                                    context)
                                .fetchCategorizedMealsRecipes(
                                    category:
                                        listOfCategories[index].strCategory!);
                          },
                          child: PupularCategoryCard(
                            isActive: (currentIndex == index),
                            text: listOfCategories[index].strCategory!,
                          ),
                        )
                      : const SizedBox(),
                ),
              ),
            ),
          );
        } else if (state is FetchPupolarCategoriesFailure) {
          return Text(
            state.errorMsg,
            style: AppStyles.regular16(context),
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
