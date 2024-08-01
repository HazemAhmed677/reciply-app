import 'package:flutter/material.dart';
import 'package:reciply/constants.dart';

class TreandingCard extends StatelessWidget {
  const TreandingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: AspectRatio(
        aspectRatio: 280 / 180,
        child: Image.asset(
          testImage,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
