import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:reciply/core/utils/app_styles.dart';
import 'package:reciply/core/models/recipe_model/meal_model.dart';
import 'package:reciply/features/saved/presentation/views/widgets/saved_item.dart';

class TitleOfInfoView extends StatefulWidget {
  const TitleOfInfoView({super.key, required this.mealModel});
  final MealModel mealModel;

  @override
  State<TitleOfInfoView> createState() => _TitleOfInfoViewState();
}

class _TitleOfInfoViewState extends State<TitleOfInfoView> {
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
            widget.mealModel.strMeal!,
            style: AppStyles.semiBold24(context),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        SavedItem(
          mealModel: widget.mealModel,
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
