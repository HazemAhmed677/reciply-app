import 'package:flutter/material.dart';
import 'package:reciply/features/splash/presentation/views/widgets/button_section.dart';
import 'package:reciply/features/splash/presentation/views/widgets/lets_cooking_section.dart';

class LetsCooking extends StatelessWidget {
  const LetsCooking({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        LetsCookingSection(),
        SizedBox(
          height: 40,
        ),
        ButtonSection(),
      ],
    );
  }
}
