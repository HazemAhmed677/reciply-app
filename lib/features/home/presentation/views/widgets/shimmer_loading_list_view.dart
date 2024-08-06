import 'package:flutter/material.dart';
import 'package:reciply/features/home/presentation/views/widgets/professional_list_view_shimmer.dart';

class ShimmerLoadingForHorizental extends StatefulWidget {
  const ShimmerLoadingForHorizental({
    super.key,
    required this.widthArea,
    required this.hightArea,
  });
  final double widthArea;
  final double hightArea;

  @override
  State<ShimmerLoadingForHorizental> createState() =>
      _ShimmerLoadingForHorizentalState();
}

class _ShimmerLoadingForHorizentalState
    extends State<ShimmerLoadingForHorizental> {
  final shimmerGradient = const LinearGradient(
    colors: [
      Color.fromARGB(255, 206, 206, 222),
      Color.fromARGB(255, 221, 219, 241),
      Color.fromARGB(255, 224, 224, 239),
    ],
  );
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        bottom: 4,
      ),
      child: ProfessinalListViewShimmer(
          shimmerGradient: shimmerGradient, widget: widget),
    );
  }
}
