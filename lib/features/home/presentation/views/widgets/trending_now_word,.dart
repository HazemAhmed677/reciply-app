// ignore: file_names
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reciply/core/utils/app_colors.dart';
import 'package:reciply/core/utils/app_styles.dart';

class TrendingNowWord extends StatelessWidget {
  const TrendingNowWord({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 20,
      ),
      child: Row(
        children: [
          Text(
            'Trending now ',
            style: AppStyles.semiBold20(context),
          ),
          const Icon(
            FontAwesomeIcons.fireFlameSimple,
            color: Colors.orange,
            size: 20,
          ),
          const Spacer(),
          Row(
            children: [
              Text(
                'See all  ',
                style: AppStyles.semiBold14(context).copyWith(
                  color: AppColors.e2Color,
                ),
              ),
              Icon(
                FontAwesomeIcons.arrowRight,
                size: 16,
                color: AppColors.e2Color,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
