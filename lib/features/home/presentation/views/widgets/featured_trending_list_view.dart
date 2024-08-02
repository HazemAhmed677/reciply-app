import 'package:flutter/material.dart';
import 'package:reciply/features/home/presentation/views/widgets/treanding_card.dart';

class FeaturedTrendingListView extends StatelessWidget {
  const FeaturedTrendingListView({super.key});

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
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.zero,
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) => Padding(
            padding: EdgeInsets.only(right: (index != 4) ? 14.0 : 0),
            child: const TreandingCard(),
          ),
        ),
      ),
    );
  }
}
