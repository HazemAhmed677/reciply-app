import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:reciply/constants.dart';
import 'package:reciply/core/utils/app_colors.dart';
import 'package:reciply/core/utils/app_styles.dart';
import 'package:reciply/features/home/data/models/recipe_model/meal.dart';

class SearhcedItem extends StatelessWidget {
  const SearhcedItem({super.key, required this.mealModel});
  final MealModel mealModel;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 150 / 172,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: (mealModel.strMealThumb != null)
                    ? CachedNetworkImageProvider(mealModel.strMealThumb!)
                    : const AssetImage(testImage),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(
              10,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                16,
              ),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.grey.shade700.withOpacity(0.5),
                  Colors.black.withOpacity(0.4),
                  Colors.black.withOpacity(0.8),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 14,
              right: 14,
              bottom: 14,
            ),
            child: Text(
              mealModel.strMeal ?? "",
              style: AppStyles.semiBold12(context).copyWith(
                color: AppColors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
