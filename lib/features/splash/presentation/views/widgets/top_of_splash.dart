import 'package:flutter/material.dart';
import 'package:reciply/core/utils/app_colors.dart';
import 'package:reciply/core/utils/app_styles.dart';

class TopOfSplash extends StatelessWidget {
  const TopOfSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.star_sharp,
          size: 18,
          color: AppColors.white,
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          '60K+ ',
          style: AppStyles.semiBold16(context).copyWith(
            color: AppColors.white,
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          'Premium recipes',
          style: AppStyles.regular16(context).copyWith(
            color: AppColors.white,
          ),
        )
      ],
    );
  }
}
