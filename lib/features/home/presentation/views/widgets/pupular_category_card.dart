import 'package:flutter/material.dart';
import 'package:reciply/core/utils/app_colors.dart';
import 'package:reciply/core/utils/app_styles.dart';

class PupularCategoryCard extends StatelessWidget {
  const PupularCategoryCard({
    super.key,
    required this.isActive,
    required this.text,
    this.isTheLast = false,
  });
  final bool isActive;
  final bool isTheLast;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: (!isTheLast) ? 10.0 : 0),
      child: AnimatedContainer(
        duration: const Duration(
          milliseconds: 500,
        ),
        decoration: BoxDecoration(
          color: (isActive) ? AppColors.e2Color : Colors.transparent,
          borderRadius: BorderRadius.circular(
            12,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 14,
            vertical: 8,
          ),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: AppStyles.semiBold14(context).copyWith(
              color: (isActive) ? AppColors.white : AppColors.eeColor,
            ),
          ),
        ),
      ),
    );
  }
}
