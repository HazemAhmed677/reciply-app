import 'package:flutter/material.dart';
import 'package:reciply/constants.dart';

class SavedItem extends StatelessWidget {
  const SavedItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 315 / 150,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: Container(
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
        ));
  }
}
