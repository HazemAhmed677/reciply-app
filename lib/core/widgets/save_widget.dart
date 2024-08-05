import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:reciply/constants.dart';
import 'package:reciply/core/models/recipe_model/meal_model.dart';
import 'package:reciply/core/utils/app_colors.dart';
import 'package:reciply/features/saved/presentation/manager/add_meal_cubit/add_meal_cubit.dart';
import 'package:reciply/features/saved/presentation/manager/delete_meal_cubit/delete_meal_cubit.dart';

class SaveWidget extends StatefulWidget {
  const SaveWidget(
      {super.key,
      required this.mealModel,
      required this.borderRadius,
      this.radius});
  final MealModel mealModel;
  final double borderRadius;
  final double? radius;
  @override
  State<SaveWidget> createState() => _SaveWidgetState();
}

class _SaveWidgetState extends State<SaveWidget> {
  var box = Hive.box<MealModel>(kMealBox);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        box.get(widget.mealModel.idMeal);
        if (box.get(widget.mealModel.idMeal) == null) {
          await BlocProvider.of<AddMealCubit>(context).addMeal(
            mealModel: widget.mealModel,
          );
        } else {
          await BlocProvider.of<DeleteMealCubit>(context).deleteMeal(
            mealModel: widget.mealModel,
          );
        }
        setState(() {});
      },
      child: CircleAvatar(
        radius: widget.radius,
        backgroundColor: AppColors.white,
        child: Icon(
          (box.get(widget.mealModel.idMeal) == null)
              ? FontAwesomeIcons.bookmark
              : FontAwesomeIcons.solidBookmark,
          color: Colors.black,
          shadows: [
            Shadow(
              blurRadius: widget.borderRadius,
            ),
          ],
          size: 20,
        ),
      ),
    );
  }
}
