import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reciply/core/utils/app_colors.dart';
import 'package:reciply/core/utils/app_styles.dart';
import 'package:reciply/features/home/data/models/categorized_meals_model/categorized_meal.dart';

class PupolarContainerElements extends StatefulWidget {
  const PupolarContainerElements({
    super.key,
    required this.categorizedMeal,
  });
  final CategorizedMeal categorizedMeal;
  @override
  State<PupolarContainerElements> createState() =>
      _PupolarContainerElementsState();
}

class _PupolarContainerElementsState extends State<PupolarContainerElements> {
  bool flag = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 66,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Text(
            widget.categorizedMeal.strMeal ?? '',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: AppStyles.semiBold14(context),
          ),
        ),
        const Expanded(
          child: SizedBox(
            height: 18,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 12,
            bottom: 4,
          ),
          child: Text(
            'Time',
            style: AppStyles.regular14(context).copyWith(
              color: AppColors.c1Color,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 12.0,
            bottom: 12,
            right: 12,
          ),
          child: Row(
            children: [
              Text(
                '10 Mins',
                style: AppStyles.semiBold12(context).copyWith(
                  color: AppColors.n30Color,
                ),
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  flag = !flag;
                  setState(() {});
                },
                child: CircleAvatar(
                  radius: 14,
                  backgroundColor: AppColors.white,
                  child: Icon(
                    (!flag)
                        ? FontAwesomeIcons.bookmark
                        : FontAwesomeIcons.solidBookmark,
                    shadows: [
                      Shadow(
                        blurRadius: 8,
                        color: Colors.grey.shade800,
                      ),
                    ],
                    color: Colors.black,
                    size: 14,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
