import 'package:flutter/material.dart';
import 'package:reciply/core/utils/app_colors.dart';
import 'package:reciply/core/utils/app_styles.dart';

class LetsCookingSection extends StatefulWidget {
  const LetsCookingSection({super.key});

  @override
  State<LetsCookingSection> createState() => _LetsCookingSectionState();
}

class _LetsCookingSectionState extends State<LetsCookingSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Let’s ',
          style: AppStyles.semiBold56(context).copyWith(
            color: AppColors.white,
          ),
        ),
        Text(
          'Cooking',
          style: AppStyles.semiBold56(context).copyWith(
            color: AppColors.white,
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        Text(
          'Find best recipes for cooking',
          style: AppStyles.regular16(context).copyWith(
            color: AppColors.white,
          ),
        ),
      ],
    );
  }
}
