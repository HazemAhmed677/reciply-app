import 'package:flutter/material.dart';
import 'package:reciply/features/home/presentation/views/widgets/featured_trending_list_view.dart';
import 'package:reciply/features/home/presentation/views/widgets/trending_now_word,.dart';

class FeaturedTrendingNow extends StatelessWidget {
  const FeaturedTrendingNow({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TrendingNowWord(),
          FeaturedTrendingListView(),
        ],
      ),
    );
  }
}
