import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:reciply/constants.dart';
import 'package:reciply/features/home/data/models/categorized_meals_model/categorized_meal.dart';

class PupolarDish extends StatelessWidget {
  const PupolarDish({
    super.key,
    required this.categorizedMeal,
  });
  final CategorizedMeal categorizedMeal;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30.0,
      ),
      child: AspectRatio(
        aspectRatio: 1,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              66,
            ),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                offset: const Offset(1, 2),
                blurRadius: 2,
                spreadRadius: 4,
                color: Colors.grey.shade300,
              )
            ],
          ),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                48,
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  48,
                ),
                border: Border.all(
                  color: Colors.grey.shade200,
                  width: 6,
                ),
              ),
              child: CircleAvatar(
                radius: 42,
                backgroundImage: (categorizedMeal.strMealThumb != null)
                    ? CachedNetworkImageProvider(categorizedMeal.strMealThumb!)
                    : const AssetImage(kTestImage),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
