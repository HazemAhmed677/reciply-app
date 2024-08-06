import 'package:flutter/material.dart';
import 'package:reciply/core/widgets/professional_list_view_shimmer.dart';
// ignore: depend_on_referenced_packages
import 'package:shimmer/shimmer.dart';

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
      ),
      child: ProfessinalListViewShimmer(
          shimmerGradient: shimmerGradient, widget: widget),
    );
  }
}

class ShimmerLoadingForVertical extends StatelessWidget {
  const ShimmerLoadingForVertical({
    super.key,
    required this.widthArea,
    required this.hightArea,
  });
  final double widthArea;

  final double hightArea;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      scrollDirection: Axis.vertical,
      itemCount: 10,
      itemBuilder: (context, index) => SizedBox(
        width: MediaQuery.of(context).size.width * widthArea,
        height: MediaQuery.of(context).size.height * hightArea,
        child: Shimmer.fromColors(
          baseColor: Colors.grey.shade800,
          highlightColor: Colors.grey.shade300,
          child: Padding(
            padding: const EdgeInsets.only(
              right: 10.0,
              bottom: 18,
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: Colors.grey.shade800,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
