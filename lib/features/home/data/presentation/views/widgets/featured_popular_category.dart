import 'package:flutter/material.dart';
import 'package:reciply/core/utils/app_styles.dart';

class FeaturedPopularCategory extends StatelessWidget {
  const FeaturedPopularCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 12,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            'Popular category',
            style: AppStyles.semiBold20(context),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
