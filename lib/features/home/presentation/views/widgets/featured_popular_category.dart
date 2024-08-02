import 'package:flutter/material.dart';
import 'package:reciply/core/utils/app_styles.dart';
import 'package:reciply/features/home/presentation/views/widgets/popular_category_list_view.dart';
import 'package:reciply/features/home/presentation/views/widgets/pupolar_dishes_list_view.dart';

class FeaturedPopularCategory extends StatelessWidget {
  const FeaturedPopularCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
            ),
            child: Text(
              'Popular category',
              style: AppStyles.semiBold20(context),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const PopularCategoryListView(),
          const PupolarDishesListView(),
        ],
      ),
    );
  }
}
