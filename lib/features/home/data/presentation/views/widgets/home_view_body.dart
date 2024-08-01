import 'package:flutter/material.dart';
import 'package:reciply/constants.dart';
import 'package:reciply/core/utils/app_styles.dart';
import 'package:reciply/features/home/data/presentation/views/widgets/custom_text_field.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(slivers: [
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 16,
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.only(left: 24),
          sliver: SliverToBoxAdapter(
            child: Text(
              'Find best recipes\nfor cooking',
              style: AppStyles.semiBold24(context),
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 20,
          ),
        ),
        const SliverToBoxAdapter(
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: CustomTextField()),
        ),
        SliverToBoxAdapter(
          child: AspectRatio(
            aspectRatio: 280 / 180,
            child: Image.asset(
              testImage,
            ),
          ),
        ),
      ]),
    );
  }
}
