import 'package:flutter/material.dart';

class ImageWithAnimation extends StatefulWidget {
  const ImageWithAnimation({super.key});

  @override
  State<ImageWithAnimation> createState() => _ImageWithAnimationState();
}

class _ImageWithAnimationState extends State<ImageWithAnimation>
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
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: fadeAnimation,
      builder: (BuildContext context, Widget? child) => FadeTransition(
        opacity: fadeAnimation,
        child: Image.asset(
          'assets/images/cover.png', // Your image asset path
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        ),
      ),
    );
  }
}
