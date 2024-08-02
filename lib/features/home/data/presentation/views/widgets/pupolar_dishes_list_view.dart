import 'package:flutter/material.dart';
import 'package:reciply/features/home/data/presentation/views/widgets/pupolar_stack.dart';

class PupolarDishesListView extends StatelessWidget {
  const PupolarDishesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20),
        child: ListView.builder(
            itemCount: 8,
            itemBuilder: (context, index) => const PupolarDishStack()));
  }
}
