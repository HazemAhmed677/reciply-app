import 'package:flutter/material.dart';
import 'package:reciply/features/home/presentation/views/widgets/ingrediant_item.dart';

class IngrediantsListView extends StatefulWidget {
  const IngrediantsListView({super.key});

  @override
  State<IngrediantsListView> createState() => _IngrediantsListViewState();
}

class _IngrediantsListViewState extends State<IngrediantsListView>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> fadeAnimation;
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 500,
      ),
    );
    fadeAnimation =
        Tween<double>(begin: 0, end: 1).animate(animationController);
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: AnimatedBuilder(
        animation: fadeAnimation,
        builder: (BuildContext context, Widget? child) => FadeTransition(
          opacity: fadeAnimation,
          child: ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 8,
            itemBuilder: (context, index) => const Padding(
              padding: EdgeInsets.only(bottom: 12.0),
              child: IngrediantItem(),
            ),
          ),
        ),
      ),
    );
  }
}
