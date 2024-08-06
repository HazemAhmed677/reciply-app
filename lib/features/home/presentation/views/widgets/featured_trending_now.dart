import 'package:flutter/material.dart';
import 'package:reciply/core/models/recipe_model/recipe_model.dart';
import 'package:reciply/features/home/presentation/views/widgets/featured_trending_list_view.dart';

class FeaturedTrendingNow extends StatelessWidget {
  const FeaturedTrendingNow({super.key, required this.recipesModel});
  final RecipesModel recipesModel;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FeaturedTrendingListView(
            recipesModel: recipesModel,
          ),
        ],
      ),
    );
  }
}
