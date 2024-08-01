import 'package:flutter/material.dart';
import 'package:reciply/constants.dart';
import 'package:reciply/features/home/data/presentation/views/widgets/featured_trending_now.dart';
import 'package:reciply/features/home/data/presentation/views/widgets/home_top_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(slivers: [
        const HomeTopSection(),
        const FeaturedTrendingNow(),
        // SliverToBoxAdapter(
        //   child: AspectRatio(
        //     aspectRatio: 280 / 180,
        //     child: Image.asset(
        //       testImage,
        //     ),
        //   ),
        // ),
      ]),
    );
  }
}
