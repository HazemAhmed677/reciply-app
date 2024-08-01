import 'package:flutter/material.dart';
import 'package:reciply/core/utils/app_colors.dart';
import 'package:reciply/core/utils/app_styles.dart';

class TopOfSplash extends StatefulWidget {
  const TopOfSplash({super.key});

  @override
  State<TopOfSplash> createState() => _TopOfSplashState();
}

class _TopOfSplashState extends State<TopOfSplash>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> fadeAnimation;
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );
    fadeAnimation =
        Tween<double>(begin: 0, end: 1).animate(animationController);
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: fadeAnimation,
      builder: (BuildContext context, Widget? child) => FadeTransition(
        opacity: fadeAnimation,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.star_sharp,
              size: 18,
              color: AppColors.white,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              '60K+ ',
              style: AppStyles.semiBold16(context).copyWith(
                color: AppColors.white,
              ),
            ),
            const SizedBox(
              width: 4,
            ),
            Text(
              'Premium recipes',
              style: AppStyles.regular16(context).copyWith(
                color: AppColors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
