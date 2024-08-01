import 'package:flutter/material.dart';
import 'package:reciply/features/home/data/presentation/views/widgets/featured_trending_now.dart';
import 'package:reciply/features/home/data/presentation/views/widgets/home_top_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: CustomScrollView(
        slivers: [
          HomeTopSection(),
          FeaturedTrendingNow(),
        ],
      ),
    );
  }
}