// ignore: file_names
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:shimmer/shimmer.dart';

class ShimmerLoadingForPopularCategories extends StatefulWidget {
  const ShimmerLoadingForPopularCategories({
    super.key,
  });

  @override
  State<ShimmerLoadingForPopularCategories> createState() =>
      _ShimmerLoadingForPopularCategoriesState();
}

class _ShimmerLoadingForPopularCategoriesState
    extends State<ShimmerLoadingForPopularCategories> {
  final shimmerGradient = const LinearGradient(
    colors: [
      Color.fromARGB(255, 191, 130, 130),
      Color.fromARGB(255, 231, 204, 183),
      Color.fromARGB(255, 232, 232, 250),
    ],
  );
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: ListView.builder(
        clipBehavior: Clip.none,
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemCount: 12,
        itemBuilder: (context, index) => Shimmer(
          period: const Duration(
            milliseconds: 800,
          ),
          gradient: shimmerGradient,
          child: Padding(
            padding: const EdgeInsets.only(
              right: 10.0,
            ),
            child: Container(
              height: 30,
              width: 72,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color.fromARGB(255, 161, 153, 153),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
