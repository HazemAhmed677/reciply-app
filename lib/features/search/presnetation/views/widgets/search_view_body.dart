import 'package:flutter/material.dart';
import 'package:reciply/core/utils/app_styles.dart';
import 'package:reciply/features/search/presnetation/views/widgets/grid_view_of_search.dart';
import 'package:reciply/features/search/presnetation/views/widgets/top_section.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      child: CustomScrollView(
        slivers: [
          const TopSection(),
          SliverPadding(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
            ),
            sliver: SliverToBoxAdapter(
              child: Text(
                'Recent Search',
                style: AppStyles.semiBold16(context),
              ),
            ),
          ),
          const GridViewOfSearch(),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 78,
            ),
          )
        ],
      ),
    );
  }
}
