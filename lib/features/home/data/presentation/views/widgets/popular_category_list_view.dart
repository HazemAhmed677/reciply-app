import 'package:flutter/material.dart';
import 'package:reciply/features/home/data/presentation/views/widgets/pupular_category_card.dart';

class PopularCategoryListView extends StatelessWidget {
  const PopularCategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => PupularCategoryCard(),
    );
  }
}
