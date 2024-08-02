import 'package:flutter/material.dart';
import 'package:reciply/constants.dart';
import 'package:reciply/core/utils/app_colors.dart';

class PupolarDish extends StatelessWidget {
  const PupolarDish({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Center(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 176,
              width: 168,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.grey.shade300,
                    AppColors.f1Color,
                  ],
                ),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            Positioned(
              top: -56,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30.0,
                ),
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        52,
                      ),
                      color: Colors.grey.shade100,
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(1, 2),
                          blurRadius: 2,
                        )
                      ],
                    ),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          48,
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            48,
                          ),
                          border: Border.all(
                            color: Colors.grey.shade200,
                            width: 6,
                          ),
                        ),
                        child: const CircleAvatar(
                          radius: 42,
                          backgroundImage: AssetImage(
                            testImage,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
