import 'package:flutter/material.dart';
import 'package:reciply/features/search/presnetation/views/widgets/grid_view_of_recent_search.dart';
import 'package:reciply/features/search/presnetation/views/widgets/top_section.dart';

class RecentSearchView extends StatelessWidget {
  const RecentSearchView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      child: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          TopSection(),
          GridViewOfRecentSearch(),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 72,
            ),
          )
        ],
      ),
    );
  }
}
