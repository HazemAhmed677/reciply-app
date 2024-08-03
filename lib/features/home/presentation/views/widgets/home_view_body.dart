import 'package:flutter/material.dart';
import 'package:reciply/features/home/presentation/views/widgets/featured_popular_category.dart';
import 'package:reciply/features/home/presentation/views/widgets/featured_trending_now.dart';
import 'package:reciply/features/home/presentation/views/widgets/home_top_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        clipBehavior: Clip.none,
        physics: const BouncingScrollPhysics(),
        slivers: [
          HomeTopSection(),
          const FeaturedTrendingNow(),
          const FeaturedPopularCategory()
        ],
      ),
    );
  }
}
