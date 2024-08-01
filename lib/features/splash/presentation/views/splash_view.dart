import 'package:flutter/material.dart';
import 'package:reciply/features/splash/presentation/views/widgets/splash_view_body.dart';

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
      child: const Scaffold(
        backgroundColor: Colors.transparent,
        body: SplashViewBody(),
      ),
    );
  }
}
