import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hive/hive.dart';
import 'package:reciply/constants.dart';
import 'package:reciply/core/utils/app_colors.dart';
import 'package:reciply/core/utils/app_styles.dart';
import 'package:reciply/core/models/recipe_model/meal_model.dart';
import 'package:reciply/core/widgets/save_widget.dart';

class SavedItem extends StatefulWidget {
  const SavedItem({
    super.key,
    this.flag = false,
    required this.aspectRatio,
    required this.mealModel,
  });
  final MealModel mealModel;
  final bool flag;
  final double aspectRatio;
  @override
  State<SavedItem> createState() => _SavedItemState();
}

class _SavedItemState extends State<SavedItem> {
  bool shift = true;
  var box = Hive.box<MealModel>(kMealBox);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: widget.aspectRatio,
      child: Padding(
        padding: EdgeInsets.only(
          bottom: (!widget.flag) ? 16.0 : 0,
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: (widget.flag)
                        ? (widget.mealModel.strMealThumb != null)
                            ? CachedNetworkImageProvider(
                                widget.mealModel.strMealThumb!)
                            : const AssetImage(
                                kTestImage,
                              )
                        : CachedNetworkImageProvider(
                            widget.mealModel.strMealThumb!)),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              clipBehavior: Clip.none,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  16,
                ),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.grey.shade600.withOpacity(0.3),
                    Colors.black.withOpacity(0.8)
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  (!widget.flag)
                      ? Text(
                          widget.mealModel.strMeal ?? '',
                          style: AppStyles.semiBold14(context).copyWith(
                            color: AppColors.white,
                          ),
                        )
                      : const Text(''),
                  const Spacer(),
                  SvgPicture.asset('assets/images/timer.svg'),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    '20 min',
                    style: AppStyles.semiBold12(context).copyWith(
                      color: const Color(0xffD9D9D9),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  SaveWidget(
                    mealModel: widget.mealModel,
                    radius: 14,
                    size: 16,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
