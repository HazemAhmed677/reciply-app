import 'package:flutter/material.dart';
import 'package:reciply/constants.dart';

class SavedItem extends StatelessWidget {
  const SavedItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 315 / 172,
      child: Padding(
        padding: const EdgeInsets.only(
          bottom: 20.0,
        ),
        child: Stack(children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  testImage,
                ),
              ),
            ),
          ),
          Container(
            clipBehavior: Clip.none,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                24,
              ),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.grey.shade400.withOpacity(0.5),
                  Colors.black.withOpacity(0.8)
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
