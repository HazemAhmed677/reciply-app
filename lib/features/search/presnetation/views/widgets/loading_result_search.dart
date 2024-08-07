import 'package:flutter/material.dart';
import 'package:reciply/features/search/presnetation/views/widgets/shimmer_grid_view.dart';
import 'package:reciply/features/search/presnetation/views/widgets/top_section.dart';

class LoadingResultSearch extends StatelessWidget {
  const LoadingResultSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        TopSection(text: 'result search'),
        ShimmerGridView(),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 72,
          ),
        ),
      ],
    );
  }
}
