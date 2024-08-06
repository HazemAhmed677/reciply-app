import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:reciply/core/models/recipe_model/meal_model.dart';
import 'package:reciply/core/utils/app_routers.dart';
import 'package:reciply/core/utils/app_styles.dart';
import 'package:reciply/features/saved/presentation/views/widgets/saved_item.dart';

class AllSavedWidget extends StatelessWidget {
  const AllSavedWidget({
    super.key,
    required this.meals,
  });

  final List<MealModel> meals;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      clipBehavior: Clip.none,
      slivers: [
        SliverToBoxAdapter(
          child: SafeArea(
            bottom: false,
            child: Text(
              'Saved recipes',
              textAlign: TextAlign.center,
              style: AppStyles.semiBold16(context).copyWith(
                fontSize: 20,
                color: const Color(0xff121212),
              ),
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          sliver: SliverList.builder(
            itemCount: meals.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(
                bottom: 16.0,
              ),
              child: InkWell(
                splashColor: Colors.transparent,
                onTap: () async {
                  await GoRouter.of(context)
                      .push(AppRouters.recipeInfoID, extra: meals[index]);
                },
                child: SavedItem(
                  aspectRatio: 315 / 178,
                  mealModel: meals[index],
                ),
              ),
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 56,
          ),
        ),
      ],
    );
  }
}
