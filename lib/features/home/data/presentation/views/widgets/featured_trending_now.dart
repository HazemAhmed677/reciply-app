import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reciply/core/utils/app_colors.dart';
import 'package:reciply/core/utils/app_styles.dart';
import 'package:reciply/features/home/data/presentation/views/widgets/trending_now_word,.dart';

class FeaturedTrendingNow extends StatelessWidget {
  const FeaturedTrendingNow({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: TrendingNowWord(),
    );
  }
}
