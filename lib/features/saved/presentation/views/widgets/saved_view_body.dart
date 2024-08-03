import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:reciply/core/utils/app_styles.dart';
import 'package:reciply/features/saved/presentation/views/widgets/saved_item.dart';

class SavedViewBody extends StatelessWidget {
  const SavedViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      clipBehavior: Clip.none,
      slivers: [
        SliverToBoxAdapter(
          child: SafeArea(
            bottom: false,
            child: Text(
              'Saved recipes',
              textAlign: TextAlign.center,
              style: AppStyles.semiBold16(context).copyWith(
                fontSize: 20,
                color: const Color(0xff121212),
              ),
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 20,
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index) => const SavedItem(),
                childCount: 8),
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 66,
          ),
        ),
      ],
    );
  }
}
