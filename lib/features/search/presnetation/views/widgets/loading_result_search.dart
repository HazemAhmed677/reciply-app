import 'package:flutter/material.dart';
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
        SliverToBoxAdapter(
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(
                top: 20.0,
              ),
              child: CircularProgressIndicator(),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 72,
          ),
        ),
      ],
    );
  }
}
