import 'package:flutter/material.dart';
import 'package:reciply/features/home/presentation/views/widgets/ingrediant_item.dart';

class IngrediantsListView extends StatelessWidget {
  const IngrediantsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 8,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.only(bottom: 12.0),
          child: IngrediantItem(),
        ),
      ),
    );
  }
}
