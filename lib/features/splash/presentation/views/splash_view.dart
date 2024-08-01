import 'package:flutter/material.dart';
import 'package:reciply/core/utils/app_colors.dart';
import 'package:reciply/core/utils/app_styles.dart';
import 'package:reciply/features/splash/presentation/views/widgets/lets_cooking_word.dart';
import 'package:reciply/features/splash/presentation/views/widgets/top_of_splash.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/images/cover.png',
                ),
              ),
            ),
          ),
          const Positioned(
            top: 52,
            child: TopOfSplash(),
          ),
          Positioned(
            top: MediaQuery.sizeOf(context).height * 0.5 + 44,
            child: const LetsCooking(),
          ),
        ],
      ),
    );
  }
}
