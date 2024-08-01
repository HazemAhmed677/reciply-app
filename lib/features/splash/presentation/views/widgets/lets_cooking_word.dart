import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reciply/core/utils/app_colors.dart';
import 'package:reciply/core/utils/app_styles.dart';
import 'package:reciply/features/splash/presentation/views/widgets/lets_cooking_section.dart';

class LetsCooking extends StatelessWidget {
  const LetsCooking({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const LetsCookingSection(),
        const SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              overlayColor: Colors.white,
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  14,
                ),
              ),
              backgroundColor: const Color(0xffE23E3E),
            ),
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.only(
                left: 28,
                right: 40,
                bottom: 16,
                top: 16,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Start cooking ',
                    style: AppStyles.semiBold16(context).copyWith(
                      color: AppColors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 14,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 9.8,
                      horizontal: 3.33,
                    ),
                    child: Icon(
                      FontAwesomeIcons.arrowRight,
                      color: AppColors.white,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
