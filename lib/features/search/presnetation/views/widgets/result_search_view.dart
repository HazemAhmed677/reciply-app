import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:reciply/core/models/recipe_model/meal_model.dart';
import 'package:reciply/core/utils/app_routers.dart';
import 'package:reciply/core/utils/app_styles.dart';
import 'package:reciply/features/search/presnetation/views/widgets/searhced_item.dart';
import 'package:reciply/features/search/presnetation/views/widgets/top_section.dart';

class ResultSearchView extends StatelessWidget {
  const ResultSearchView({
    super.key,
    required this.meals,
  });
  final List<MealModel>? meals;
  @override
  Widget build(BuildContext context) {
    return (meals != null && meals!.isNotEmpty)
        ? CustomScrollView(
            slivers: [
              const TopSection(
                text: 'result search',
              ),
              SliverAnimatedGrid(
                initialItemCount: meals?.length ?? 0,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                ),
                itemBuilder: (context, index, animatable) => AnimatedBuilder(
                  animation: animatable,
                  builder: (BuildContext context, Widget? child) =>
                      FadeTransition(
                    opacity: animatable,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(
                        16,
                      ),
                      onTap: () async {
                        await GoRouter.of(context).push(AppRouters.recipeInfoID,
                            extra: meals![index]);
                      },
                      child: SearhcedItem(
                        mealModel: meals![index],
                      ),
                    ),
                  ),
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 72,
                ),
              )
            ],
          )
        : SliverToBoxAdapter(
            child: Center(
              child: Text(
                'Meal is not found',
                style: AppStyles.regular16(context),
              ),
            ),
          );
  }
}
