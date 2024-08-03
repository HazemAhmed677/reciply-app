import 'package:flutter/material.dart';
import 'package:reciply/features/home/presentation/views/widgets/item_info_list_section.dart';
import 'package:reciply/features/home/presentation/views/widgets/title_of_info_view.dart';

class RecipeInfoNody extends StatefulWidget {
  const RecipeInfoNody({super.key});

  @override
  State<RecipeInfoNody> createState() => _RecipeInfoNodyState();
}

class _RecipeInfoNodyState extends State<RecipeInfoNody> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleOfInfoView(),
            ItemInfoListSection(),
          ],
        ),
      ),
    );
  }
}
