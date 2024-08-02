import 'package:flutter/material.dart';
import 'package:reciply/core/utils/app_colors.dart';
import 'package:reciply/features/home/data/presentation/views/widgets/pupolar_container_elements.dart';
import 'package:reciply/features/home/data/presentation/views/widgets/pupolar_dish.dart';

class PupolarDishStack extends StatelessWidget {
  const PupolarDishStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 177,
          width: 168,
          decoration: BoxDecoration(
            color: AppColors.f1Color,
            borderRadius: BorderRadius.circular(12),
          ),
          child: const PupolarContainerElements(),
        ),
        const Positioned(
          top: -56,
          left: 0,
          right: 0,
          child: PupolarDish(),
        ),
      ],
    );
  }
}
