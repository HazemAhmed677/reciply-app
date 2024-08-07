import 'package:flutter/material.dart';
import 'package:reciply/core/utils/app_styles.dart';
import 'package:reciply/features/search/presnetation/views/widgets/top_section_without_sliver.dart';

class MealIsNotFound extends StatelessWidget {
  const MealIsNotFound({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TopSectionWithoutSliver(),
        Expanded(
          child: Column(
            children: [
              const Spacer(
                flex: 3,
              ),
              Center(
                child: Text(
                  'Meal is not found',
                  textAlign: TextAlign.center,
                  style: AppStyles.regular16(context),
                ),
              ),
              const Spacer(
                flex: 4,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
