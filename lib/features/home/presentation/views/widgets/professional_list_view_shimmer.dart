import 'package:flutter/material.dart';
import 'package:reciply/features/home/presentation/views/widgets/shimmer_loading_list_view.dart';
// ignore: depend_on_referenced_packages
import 'package:shimmer/shimmer.dart';

class ProfessinalListViewShimmer extends StatelessWidget {
  const ProfessinalListViewShimmer({
    super.key,
    required this.shimmerGradient,
    required this.widget,
  });

  final LinearGradient shimmerGradient;
  final ShimmerLoadingForHorizental widget;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            right: 20,
            top: 10,
            bottom: 12,
          ),
          child: SizedBox(
            height: 220,
            child: ListView.builder(
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
                        right: 24.0,
                      ),
                      child: Container(
                        width: widget.widthArea,
                        height: widget.hightArea,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: const Color(0xFFEBEBF4),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Shimmer(
                    period: const Duration(
                      milliseconds: 800,
                    ),
                    gradient: shimmerGradient,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        right: 24.0,
                        left: 6,
                      ),
                      child: Container(
                        width: 240,
                        height: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xFFEBEBF4),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
