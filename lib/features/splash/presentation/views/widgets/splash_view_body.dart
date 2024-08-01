import 'package:flutter/material.dart';
import 'package:reciply/features/splash/presentation/views/widgets/lets_cooking_word.dart';
import 'package:reciply/features/splash/presentation/views/widgets/top_of_splash.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 52,
        ),
        TopOfSplash(),
        Expanded(
          child: SizedBox(
            height: 32,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 60.0,
            bottom: 84,
          ),
          child: LetsCooking(),
        ),
      ],
    );
  }
}
