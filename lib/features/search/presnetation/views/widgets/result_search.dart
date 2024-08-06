import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:reciply/core/models/recipe_model/meal_model.dart';
import 'package:reciply/core/utils/app_routers.dart';
import 'package:reciply/features/search/presnetation/views/widgets/searhced_item.dart';

class ResultSearch extends StatelessWidget {
  const ResultSearch({
    super.key,
    required this.meals,
  });
  final List<MealModel>? meals;
  @override
  Widget build(BuildContext context) {
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
                .push(AppRouters.recipeInfoID, extra: meals![index]);
          },
          child: SearhcedItem(
            mealModel: meals![index],
          ),
        ),
      ),
    );
  }
}
