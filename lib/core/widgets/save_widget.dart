import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:reciply/constants.dart';
import 'package:reciply/core/helpers/custom_snack_bar.dart';
import 'package:reciply/core/models/recipe_model/meal_model.dart';
import 'package:reciply/core/utils/app_colors.dart';
import 'package:reciply/core/managers/add_meal_cubit/add_meal_cubit.dart';
import 'package:reciply/core/managers/delete_meal_cubit/delete_meal_cubit.dart';
import 'package:reciply/features/saved/presentation/manager/fetch_all_meals_cubit/fetch_all_meals_cubit.dart';

class SaveWidget extends StatefulWidget {
  const SaveWidget({
    super.key,
    required this.mealModel,
    this.blurRadius,
    this.radius,
    this.size,
  });
  final MealModel mealModel;
  final double? blurRadius;
  final double? radius;
  final double? size;
  @override
  State<SaveWidget> createState() => _SaveWidgetState();
}

class _SaveWidgetState extends State<SaveWidget> {
  @override
  Widget build(BuildContext context) {
    Box<MealModel> box = Hive.box<MealModel>(kMealBox);
    MealModel? meal = box.get(widget.mealModel.idMeal);
    return InkWell(
      onTap: () async {
        if (meal == null) {
          await BlocProvider.of<AddMealCubit>(context).addMeal(
            mealModel: widget.mealModel,
            mealBox: box,
          );
          if (mounted) {
            setState(() {
              getShowSnackBar(
                context,
                'Saved successfully',
              );
              BlocProvider.of<FetchAllMealsCubit>(context).fetchAllMael();
            });
          }
        } else {
          await BlocProvider.of<DeleteMealCubit>(context)
              .deleteMeal(mealModel: widget.mealModel, mealBox: box);
          if (mounted) {
            setState(() {
              getShowSnackBar(
                context,
                'Unsaved ',
              );
              BlocProvider.of<FetchAllMealsCubit>(context).fetchAllMael();
            });
          }
        }
      },
      child: CircleAvatar(
        radius: widget.radius,
        backgroundColor: AppColors.white,
        child: Icon(
          (meal == null)
              ? FontAwesomeIcons.bookmark
              : FontAwesomeIcons.solidBookmark,
          color: Colors.black,
          shadows: [
            Shadow(
              blurRadius: widget.blurRadius ?? 0,
            ),
          ],
          size: (widget.size != null) ? widget.size : 20,
        ),
      ),
    );
  }
}
