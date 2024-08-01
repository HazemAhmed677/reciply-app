import 'package:flutter/material.dart';
import 'package:reciply/core/utils/app_colors.dart';
import 'package:reciply/core/utils/app_styles.dart';

class LetsCooking extends StatelessWidget {
  const LetsCooking({
    super.key,
  });

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
      ],
    );
  }
}
