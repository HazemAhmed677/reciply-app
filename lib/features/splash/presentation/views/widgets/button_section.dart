import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:reciply/core/utils/app_colors.dart';
import 'package:reciply/core/utils/app_routers.dart';
import 'package:reciply/core/utils/app_styles.dart';

class ButtonSection extends StatefulWidget {
  const ButtonSection({
    super.key,
  });

  @override
  State<ButtonSection> createState() => _ButtonSectionState();
}

class _ButtonSectionState extends State<ButtonSection>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> fadeAnimation;
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 400,
      ),
    );
    fadeAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(animationController);
    animationController.forward();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      child: AnimatedBuilder(
        animation: fadeAnimation,
        builder: (BuildContext context, Widget? child) => FadeTransition(
          opacity: fadeAnimation,
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
            onPressed: () {
              GoRouter.of(context).go(AppRouters.homeID);
            },
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
                    style: AppStyles.semiBold20(context).copyWith(
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
      ),
    );
  }
}
