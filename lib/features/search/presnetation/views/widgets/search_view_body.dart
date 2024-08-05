import 'package:flutter/material.dart';
import 'package:reciply/features/search/presnetation/views/widgets/integrate_search_cubit.dart';
import 'package:reciply/features/search/presnetation/views/widgets/top_section.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

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
          IntegrateSearch(),
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
