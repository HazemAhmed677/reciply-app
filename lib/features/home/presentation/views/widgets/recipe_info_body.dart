import 'package:flutter/material.dart';
import 'package:reciply/features/home/presentation/views/widgets/ingrediants_list_view.dart';
import 'package:reciply/features/home/presentation/views/widgets/item_info_middle_section.dart';
import 'package:reciply/features/home/presentation/views/widgets/title_of_info_view.dart';

class RecipeInfoNody extends StatelessWidget {
  const RecipeInfoNody({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: TitleOfInfoView()),
            SliverToBoxAdapter(child: ItemInfoMiddleSection()),
            // SliverToBoxAdapter(child: MealProcedure()),
            IngrediantsListView(),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
