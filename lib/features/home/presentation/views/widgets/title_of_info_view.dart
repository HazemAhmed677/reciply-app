import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:reciply/core/utils/app_styles.dart';
import 'package:reciply/features/home/data/models/recipe_model/meal_model.dart';
import 'package:reciply/features/saved/presentation/views/widgets/saved_item.dart';

class TitleOfInfoView extends StatelessWidget {
  const TitleOfInfoView({super.key, required this.mealModel});
  final MealModel mealModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SafeArea(
          bottom: false,
          child: InkWell(
            borderRadius: BorderRadius.circular(
              26,
            ),
            onTap: () {
              GoRouter.of(context).pop();
            },
            child: const Icon(
              Icons.arrow_back,
              size: 32,
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: 0.7 * MediaQuery.sizeOf(context).width,
          ),
          child: Text(
            mealModel.strMeal!,
            style: AppStyles.semiBold24(context),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        const SizedBox(
          height: 12,
        ),
        SavedItem(
          mealModel: mealModel,
          flag: true,
          aspectRatio: 335 / 218,
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
