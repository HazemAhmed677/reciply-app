import 'package:flutter/material.dart';
import 'package:reciply/core/utils/app_colors.dart';
import 'package:reciply/core/utils/app_styles.dart';

class IngrediantItem extends StatelessWidget {
  const IngrediantItem({super.key, required this.ingrediantItem});
  final String ingrediantItem;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.f1Color,
        borderRadius: BorderRadius.circular(
          12,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 18.0,
          vertical: 18,
        ),
        child: Row(
          children: [
            Text(
              ingrediantItem,
              style: AppStyles.semiBold16(context).copyWith(
                color: AppColors.n30Color,
              ),
            ),
            const Spacer(),
            Text(
              '300g',
              style: AppStyles.regular14(context).copyWith(
                color: AppColors.a9Color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
