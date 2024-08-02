import 'package:flutter/material.dart';
import 'package:reciply/core/utils/app_colors.dart';
import 'package:reciply/core/utils/app_styles.dart';

class PupolarContainerElements extends StatelessWidget {
  const PupolarContainerElements({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 66,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Text(
            'Pepper sweetcorn ramen',
            textAlign: TextAlign.center,
            style: AppStyles.semiBold14(context),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 12,
            bottom: 4,
          ),
          child: Text(
            'Time',
            style: AppStyles.regular14(context).copyWith(
              color: AppColors.c1Color,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 12.0,
            bottom: 12,
          ),
          child: Text(
            '10 Mins',
            style: AppStyles.semiBold12(context).copyWith(
              color: AppColors.n30Color,
            ),
          ),
        )
      ],
    );
  }
}
