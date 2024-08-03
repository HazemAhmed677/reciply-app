import 'package:flutter/material.dart';
import 'package:reciply/features/search/presnetation/views/widgets/searhced_item.dart';

class GridViewOfSearch extends StatelessWidget {
  const GridViewOfSearch({super.key});
  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: 10,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
      ),
      itemBuilder: (context, index) => const SearhcedItem(),
    );
  }
}
