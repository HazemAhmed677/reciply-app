import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:reciply/core/utils/app_styles.dart';
import 'package:reciply/features/home/presentation/views/widgets/ingrediants_list_view.dart';
import 'package:reciply/features/home/presentation/views/widgets/item_info_middle_section.dart';
import 'package:reciply/features/home/presentation/views/widgets/title_of_info_view.dart';

class RecipeInfoNody extends StatelessWidget {
  const RecipeInfoNody({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TitleOfInfoView(),
            const ItemInfoMiddleSection(),
            const SizedBox(height: 16),
            const IngrediantsListView(),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
