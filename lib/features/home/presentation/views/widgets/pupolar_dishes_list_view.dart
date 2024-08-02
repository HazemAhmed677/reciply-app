import 'package:flutter/material.dart';
import 'package:reciply/features/home/presentation/views/widgets/pupolar_stack.dart';

class PupolarDishesListView extends StatelessWidget {
  const PupolarDishesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 76,
      ),
      child: SizedBox(
        height: 198,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          clipBehavior: Clip.none,
          scrollDirection: Axis.horizontal,
          itemCount: 8,
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.only(
              right: (index != 7) ? 16 : 0,
            ),
            child: const PupolarDishStack(),
          ),
        ),
      ),
    );
  }
}
