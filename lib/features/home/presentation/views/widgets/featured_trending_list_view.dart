import 'package:flutter/material.dart';
import 'package:reciply/core/models/recipe_model/recipe_model.dart';

import 'package:reciply/features/home/presentation/views/widgets/treanding_card.dart';

class FeaturedTrendingListView extends StatelessWidget {
  const FeaturedTrendingListView({super.key, required this.recipesModel});
  final RecipesModel recipesModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 4,
        bottom: 12,
      ),
      child: SizedBox(
        height: 230,
        child: ListView.builder(
          clipBehavior: Clip.none,
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          padding: EdgeInsets.zero,
          scrollDirection: Axis.horizontal,
          itemCount: recipesModel.meals?.length ?? 0,
          itemBuilder: (BuildContext context, int index) => Padding(
            padding: EdgeInsets.only(
              right: (index != recipesModel.meals!.length - 1) ? 14.0 : 0,
            ),
            ////// here
            child: TreandingCard(
              mealModel: recipesModel.meals![index],
            ),
          ),
        ),
      ),
    );
  }
}
