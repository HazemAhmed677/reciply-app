import 'package:flutter/material.dart';
import 'package:reciply/features/splash/presentation/views/widgets/image_with_animation.dart';
import 'package:reciply/features/splash/presentation/views/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        ImageWithAnimation(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SplashViewBody(),
        ),
      ],
    );
  }
}
