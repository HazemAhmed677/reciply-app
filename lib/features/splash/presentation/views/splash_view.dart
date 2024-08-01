import 'package:flutter/material.dart';
import 'package:reciply/features/splash/presentation/views/widgets/lets_cooking_word.dart';
import 'package:reciply/features/splash/presentation/views/widgets/top_of_splash.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            'assets/images/cover.png',
          ),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 52,
            ),
            const TopOfSplash(),
            Flexible(
              child: SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.5 - (52 + 18),
              ),
            ),
            const Flexible(
              child: Padding(
                padding: EdgeInsets.only(
                  top: 60.0,
                ),
                child: LetsCooking(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
