import 'package:flutter/material.dart';
import 'package:reciply/core/utils/app_colors.dart';
import 'package:reciply/core/utils/app_styles.dart';

class LetsCookingSection extends StatefulWidget {
  const LetsCookingSection({super.key});

  @override
  State<LetsCookingSection> createState() => _LetsCookingSectionState();
}

class _LetsCookingSectionState extends State<LetsCookingSection>
    with TickerProviderStateMixin {
  late AnimationController animationController1;
  late AnimationController animationController2;
  late Animation<double> fadeAnimation;
  late Animation<Offset> sliderAnimation;

  @override
  void initState() {
    super.initState();
    initialzeAnimationTools();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedBuilder(
          animation: fadeAnimation,
          builder: (BuildContext context, Widget? child) => FadeTransition(
            opacity: fadeAnimation,
            child: Text(
              'Let’s ',
              style: AppStyles.semiBold56(context).copyWith(
                color: AppColors.white,
              ),
            ),
          ),
        ),
        AnimatedBuilder(
          animation: fadeAnimation,
          builder: (BuildContext context, Widget? child) => FadeTransition(
            opacity: fadeAnimation,
            child: Text(
              'Cooking',
              style: AppStyles.semiBold56(context).copyWith(
                color: AppColors.white,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        AnimatedBuilder(
          animation: sliderAnimation,
          builder: (BuildContext context, Widget? child) => SlideTransition(
            position: sliderAnimation,
            child: Text(
              'Find best recipes for cooking',
              style: AppStyles.regular16(context).copyWith(
                color: AppColors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }

  void initialzeAnimationTools() {
    animationController1 = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );
    animationController2 = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    fadeAnimation =
        Tween<double>(begin: 0, end: 1).animate(animationController1);
    sliderAnimation = Tween<Offset>(
      begin: const Offset(0, 10),
      end: const Offset(0, 0),
    ).animate(animationController2);
    animationController1.forward();

    animationController2.fling();
  }
}
