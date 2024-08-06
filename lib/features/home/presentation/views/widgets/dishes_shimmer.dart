import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:shimmer/shimmer.dart';

class DishesShimmer extends StatefulWidget {
  const DishesShimmer({super.key});

  @override
  State<DishesShimmer> createState() => _DishesShimmerState();
}

class _DishesShimmerState extends State<DishesShimmer> {
  final shimmerGradient = const LinearGradient(
    colors: [
      Color.fromARGB(255, 206, 206, 222),
      Color.fromARGB(255, 221, 219, 241),
      Color.fromARGB(255, 224, 224, 239),
    ],
  );
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      clipBehavior: Clip.none,
      padding: EdgeInsets.zero,
      scrollDirection: Axis.horizontal,
      itemCount: 12,
      itemBuilder: (context, index) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Shimmer(
            period: const Duration(
              milliseconds: 800,
            ),
            gradient: shimmerGradient,
            child: Padding(
              padding: const EdgeInsets.only(
                right: 16.0,
              ),
              child: Container(
                height: 256,
                width: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: const Color(0xFFEBEBF4),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
