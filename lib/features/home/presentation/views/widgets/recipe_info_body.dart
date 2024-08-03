import 'package:flutter/material.dart';
import 'package:reciply/core/utils/app_colors.dart';
import 'package:reciply/core/utils/app_styles.dart';
import 'package:reciply/features/home/presentation/views/widgets/pupular_category_card.dart';
import 'package:reciply/features/home/presentation/views/widgets/title_of_info_view.dart';
import 'package:reciply/features/saved/presentation/views/widgets/saved_item.dart';

class RecipeInfoNody extends StatefulWidget {
  const RecipeInfoNody({super.key});

  @override
  State<RecipeInfoNody> createState() => _RecipeInfoNodyState();
}

class _RecipeInfoNodyState extends State<RecipeInfoNody> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TitleOfInfoView(),
            const SizedBox(
              height: 12,
            ),
            const SavedItem(
              flag: true,
              aspectRatio: 335 / 218,
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                const Icon(
                  Icons.star,
                  color: Color(0xffFFB661),
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  '4.5',
                  style: AppStyles.semiBold14(context).copyWith(
                    color: AppColors.n30Color,
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                Text(
                  '(300 Reviews)',
                  style: AppStyles.regular14(context).copyWith(
                    color: AppColors.a9Color,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      currentIndex = 0;
                      setState(() {});
                    },
                    child: PupularCategoryCard(
                      isActive: currentIndex == 0,
                      text: 'Ingredients',
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      currentIndex = 1;
                      setState(() {});
                    },
                    child: PupularCategoryCard(
                      isActive: currentIndex == 1,
                      text: 'Procedure',
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
