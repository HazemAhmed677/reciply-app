import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:reciply/core/utils/app_routers.dart';
import 'package:reciply/core/utils/app_styles.dart';
import 'package:reciply/features/search/presnetation/manager/fetch_searched_meals_cubit/fetch_searched_meals_cubit.dart';
import 'package:reciply/features/search/presnetation/views/widgets/grid_view_of_search.dart';
import 'package:reciply/features/search/presnetation/views/widgets/searhced_item.dart';
import 'package:reciply/features/search/presnetation/views/widgets/top_section.dart';

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({super.key});

  @override
  State<SearchViewBody> createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
  bool flag = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      child: CustomScrollView(
        slivers: [
          const TopSection(),
          // SliverPadding(
          //   padding: const EdgeInsets.symmetric(
          //     vertical: 20,
          //   ),
          //   sliver: SliverToBoxAdapter(
          //     child: Text(
          //       (!flag) ? 'Recent Search' : 'Result Search',
          //       style: AppStyles.semiBold16(context),
          //     ),
          //   ),
          // ),
          IntegrateSearch(),
        ],
      ),
    );
  }
}

class IntegrateSearch extends StatefulWidget {
  const IntegrateSearch({
    super.key,
  });

  @override
  State<IntegrateSearch> createState() => _IntegrateSearchState();
}

class _IntegrateSearchState extends State<IntegrateSearch>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> fadeAnimation;
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 500,
      ),
    );
    fadeAnimation =
        Tween<double>(begin: 0, end: 1).animate(animationController);
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      hasScrollBody: false,
      child: BlocBuilder<FetchSearchedMealsCubit, FetchSearchedMealsState>(
        builder: (context, state) {
          if (state is FetchSearchedMealsLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is FetchSearchedMealsSuccess) {
            var meals = state.recipesModel.meals;
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                  ),
                  child: Text(
                    'result Search',
                    style: AppStyles.semiBold16(context),
                  ),
                ),
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  itemCount: meals?.length ?? 0,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                  ),
                  itemBuilder: (
                    context,
                    index,
                  ) =>
                      AnimatedBuilder(
                    animation: fadeAnimation,
                    builder: (context, _) => FadeTransition(
                      opacity: fadeAnimation,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(16),
                        onTap: () {
                          GoRouter.of(context).push(AppRouters.recipeInfoID,
                              extra: meals[index]);
                        },
                        child: SearhcedItem(
                          mealModel: meals![index],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 78,
                ),
              ],
            );
          } else if (state is FetchSearchedMealsFailure) {
            return Center(
              child: Text(
                state.errorMsg,
                style: AppStyles.regular16(context),
              ),
            );
          } else {
            return Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
              ),
              child: Text(
                'Recent Search',
                style: AppStyles.semiBold16(context),
              ),
            );
            // return const GridViewOfSearch();
          }
        },
      ),
    );
  }
}
