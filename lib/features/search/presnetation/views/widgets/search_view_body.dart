import 'package:flutter/material.dart';
import 'package:reciply/core/utils/app_styles.dart';
import 'package:reciply/features/search/presnetation/views/widgets/top_section.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const TopSection(),
        SliverPadding(
          padding: const EdgeInsets.all(
            20,
          ),
          sliver: SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Recent Search',
                  style: AppStyles.semiBold16(context),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
