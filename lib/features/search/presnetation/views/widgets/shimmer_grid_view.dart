import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:shimmer/shimmer.dart';

class ShimmerGridView extends StatefulWidget {
  const ShimmerGridView({super.key});

  @override
  State<ShimmerGridView> createState() => _ShimmerGridViewState();
}

class _ShimmerGridViewState extends State<ShimmerGridView> {
  final shimmerGradient = const LinearGradient(
    colors: [
      Color.fromARGB(255, 206, 206, 222),
      Color.fromARGB(255, 221, 219, 241),
      Color.fromARGB(255, 224, 224, 239),
    ],
  );
  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
        itemCount: 16,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
        ),
        itemBuilder: (
          context,
          index,
        ) =>
            Shimmer(
              gradient: shimmerGradient,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: const Color(0xFFEBEBF4),
                ),
              ),
            )
        //  InkWell(
        //     borderRadius: BorderRadius.circular(16),
        //     onTap: () {
        //       GoRouter.of(context).push(AppRouters.recipeInfoID,
        //           extra: meals[index]);
        //     },
        //     child: SearhcedItem(
        //       mealModel: meals[index],
        //     ),
        //   ),

        );
  }
}
