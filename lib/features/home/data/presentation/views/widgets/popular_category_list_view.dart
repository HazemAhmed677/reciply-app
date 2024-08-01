import 'package:flutter/material.dart';
import 'package:reciply/features/home/data/presentation/views/widgets/pupular_category_card.dart';

class PopularCategoryListView extends StatefulWidget {
  const PopularCategoryListView({super.key});

  @override
  State<PopularCategoryListView> createState() =>
      _PopularCategoryListViewState();
}

class _PopularCategoryListViewState extends State<PopularCategoryListView> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            7,
            (index) => GestureDetector(
              onTap: () {
                currentIndex = index;
                setState(() {});
              },
              child: PupularCategoryCard(
                isActive: (currentIndex == index),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
