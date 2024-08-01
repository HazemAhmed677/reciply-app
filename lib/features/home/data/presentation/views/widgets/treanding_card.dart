import 'package:flutter/material.dart';
import 'package:reciply/constants.dart';

class TreandingCard extends StatelessWidget {
  const TreandingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(38),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              offset: const Offset(
                -2,
                4,
              ),
              blurRadius: 4,
            ),
          ],
        ),
        child: Card(
          elevation: 4,
          shadowColor: Colors.grey.shade200,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(52),
          ),
          child: AspectRatio(
            aspectRatio: 280 / 180,
            child: Padding(
              padding: const EdgeInsets.only(
                bottom: 1.0,
              ),
              child: Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    16,
                  ),
                ),
                child: Image.asset(
                  testImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
